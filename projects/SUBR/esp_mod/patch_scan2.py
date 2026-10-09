"""Part 2: fix resolve_engine placeholder + wire the scan into driver/compute."""
import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# --- A. replace the placeholder block I left in resolve_engine ---
start = t.index('static void resolve_engine() {')
end = t.index('    ic_cam_main  =', start)
placeholder = t[start:end]
assert 'placeholder' in placeholder or 'unused' not in placeholder
clean = '''static void* g_scan_image = NULL;          // Assembly-CSharp image (from a live game object)
static const MethodInfo* p_find_of_type = NULL;
static void* g_core_image = NULL;           // UnityEngine.CoreModule image (from a live Camera)
static const MethodInfo* find_of_type_method(void* engineObj) {
    static const MethodInfo* (*getm)(void*, const char*, int) = NULL;
    if (!getm) getm = (decltype(getm))dlsym(h_il2cpp, "il2cpp_class_get_method_from_name");
    // core image straight off the live Camera object's klass
    if (!g_core_image && engineObj && p_class_get_image) {
        void* klass = *(void**)engineObj;
        g_core_image = p_class_get_image(klass);
        LOGI("core image=%p", g_core_image);
    }
    if (!p_find_of_type && g_core_image && p_class_from_name && getm) {
        void* objK = p_class_from_name(g_core_image, "UnityEngine", "Object");
        if (objK) p_find_of_type = getm(objK, "FindObjectsOfType", 1);
        LOGI("FindObjectsOfType=%p (Object klass %p)", (void*)p_find_of_type, objK);
    }
    return p_find_of_type;
}

static void resolve_engine() {
'''
t = t[:start] + clean + t[end:]

# --- B. driver: init scan from the (working) GameController this-pointer; scan at 1 Hz ---
old = '''    if (g_in_hook) return;               // re-entrancy guard
    g_in_hook = 1;
    compute_frame();
    g_in_hook = 0;'''
new = '''    if (g_in_hook) return;               // re-entrancy guard
    g_in_hook = 1;
    compute_frame();
    g_in_hook = 0;
    // refresh the instance list at ~1 Hz (main thread, safe)
    static unsigned last_scan = 0;
    if (g_frame - last_scan > 60) { last_scan = g_frame; scan_run(); }
    g_scan_ticks++;'''
assert old in t
t = t.replace(old, new, 1)

# scan_init needs the GameController this-pointer: do it in hk_gc before driver()
old = '''DRIVE_HOOK(hk_gc,   orig_gc, 0)               // GameController::Update = in-game heartbeat'''
new = '''// GameController::Update is the one hook proven to fire; take its `this` to bootstrap
static void hk_gc_boot(void* thiz, const MethodInfo* m);
static void (*orig_gc_boot)(void*, const MethodInfo*) = NULL;
static void hk_gc(void* thiz, const MethodInfo* m) {
    if (!orig_gc) return;
    orig_gc(thiz, m);
    scan_init(thiz);                    // first call: resolve image + type objects
    if (!p_find_of_type) {              // first call with a camera: resolve FindObjectsOfType
        Il2CppObject* cam = ic_cam_main ? ic_cam_main(NULL) : NULL;
        if (cam) find_of_type_method(cam);
    }
    driver(0);
}
static unsigned g_scan_ticks = 0;'''
assert old in t
t = t.replace(old, new, 1)

# --- C. compute_frame: prefer the scanned list over the registry ---
old = '''    pthread_mutex_lock(&g_regLock);
    int regN = g_regN;
    for (int i = 0; i < regN && nEnt < 640; i++) {
        void* o = g_reg[i].obj;
        int kind = g_reg[i].kind;'''
new = '''    pthread_mutex_lock(&g_regLock);
    int regN = g_regN;
    // source of truth: FindObjectsOfType scan (falls back to the hook registry)
    static struct { void* obj; int kind; } src[640];
    int srcN = 0;
    if (g_scanN > 0) {
        for (int i = 0; i < g_scanN && srcN < 640; i++) {
            src[srcN].obj = g_scan[i].obj; src[srcN].kind = g_scan[i].kind; srcN++;
        }
    } else {
        for (int i = 0; i < regN && srcN < 640; i++) {
            src[srcN].obj = g_reg[i].obj; src[srcN].kind = g_reg[i].kind; srcN++;
        }
    }
    for (int i = 0; i < srcN && nEnt < 640; i++) {
        void* o = src[i].obj;
        int kind = src[i].kind;'''
assert old in t
t = t.replace(old, new, 1)

io.open(p, 'w', encoding='utf-8').write(t)
print('part2 applied')

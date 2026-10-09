"""Switch entity collection to Object.FindObjectsOfType(Type).

Why: the per-class Update hooks never fired in a real match (telemetry showed
reg=0 with src=0 = in-game with ESP on), so collection by hooking is unreliable
for this title. Instead we hook ONLY GameController::Update (proven to fire),
take the Assembly-CSharp image from its `this` object, resolve the classes we
care about, and enumerate live instances with FindObjectsOfType every second.
"""
import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# ---- 1. extra il2cpp exports ----
old = 'static void* (*p_resolve_icall)(const char*) = NULL;'
new = old + '''
// extra runtime exports for class/type enumeration (all standard il2cpp API)
static void*       (*p_class_get_image)(void*) = NULL;
static void*       (*p_class_get_type)(void*) = NULL;
static Il2CppObject* (*p_type_get_object)(void*) = NULL;
static void*       (*p_class_from_name)(void*, const char*, const char*) = NULL;'''
assert old in t and 'p_class_get_image' not in t
t = t.replace(old, new, 1)

# ---- 2. resolve them in init_il2cpp ----
old = '''    p_resolve_icall = (decltype(p_resolve_icall))dlsym(h_il2cpp, "il2cpp_resolve_icall");
#undef SYM'''
if old not in t:
    old = '''    p_resolve_icall = (decltype(p_resolve_icall))dlsym(h, "il2cpp_resolve_icall");'''
    new = old + '''
    p_class_get_image = (decltype(p_class_get_image))dlsym(h, "il2cpp_class_get_image");
    p_class_get_type  = (decltype(p_class_get_type))dlsym(h, "il2cpp_class_get_type");
    p_type_get_object = (decltype(p_type_get_object))dlsym(h, "il2cpp_type_get_object");
    p_class_from_name = (decltype(p_class_from_name))dlsym(h, "il2cpp_class_from_name");'''
    assert old in t
    t = t.replace(old, new, 1)

# ---- 3. scan machinery: insert right before "static void compute_frame()" ----
anchor = 'static void compute_frame() {'
scan_code = '''// ---------------- instance enumeration (FindObjectsOfType) ----------------
// Type objects for the classes we draw; built once from the image of a live object.
static Il2CppObject *g_tyPHM = NULL, *g_tyZombie = NULL, *g_tyBoss = NULL,
                    *g_tyMonster = NULL, *g_tyItem = NULL;
static const MethodInfo* p_find_of_type = NULL;
static int g_scan_ready = 0;

static Il2CppObject* type_of(const char* name) {
    if (!p_class_from_name || !p_class_get_type || !p_type_get_object || !g_scan_image) return NULL;
    void* k = p_class_from_name(g_scan_image, "", name);
    if (!k) return NULL;
    return p_type_get_object(p_class_get_type(k));
}

static void scan_init(void* anyObj) {
    if (g_scan_ready || !anyObj) return;
    if (!p_class_get_image || !p_find_of_type) return;
    void* klass = *(void**)anyObj;                      // Il2CppObject header = klass
    g_scan_image = p_class_get_image(klass);
    if (!g_scan_image) return;
    g_tyPHM     = type_of("PlayerHealthManager");
    g_tyZombie  = type_of("ZombieEnemyAI");
    g_tyBoss    = type_of("EnemyAIBoss");
    g_tyMonster = type_of("MonsterEnemy");
    g_tyItem    = type_of("PickableItem");
    g_scan_ready = 1;
    LOGI("scan: image=%p PHM=%p zombie=%p boss=%p monster=%p item=%p",
         g_scan_image, (void*)g_tyPHM, (void*)g_tyZombie, (void*)g_tyBoss,
         (void*)g_tyMonster, (void*)g_tyItem);
}

// enumerated instances + kinds (produced on the main thread, consumed by compute)
struct ScanEnt { void* obj; int kind; };
static ScanEnt g_scan[512];
static int g_scanN = 0;

static int scan_collect(Il2CppObject* type, int kind, int budget) {
    if (!type || !p_find_of_type || budget <= 0) return 0;
    void* args[1]; args[0] = type;
    Il2CppArray* a = (Il2CppArray*)invoke(p_find_of_type, NULL, args);
    if (!a) return 0;
    size_t n = a->max_length;
    if (n > (size_t)budget) n = (size_t)budget;
    int added = 0;
    for (size_t i = 0; i < n; i++) {
        void* o = a->vector[i];
        if (!o || g_scanN >= 512) continue;
        g_scan[g_scanN].obj = o;
        g_scan[g_scanN].kind = kind;
        g_scanN++; added++;
    }
    return added;
}

static const MethodInfo* p_find_type_from_scan = NULL;   // (unused placeholder)

static void scan_run() {
    if (!g_scan_ready) return;
    g_scanN = 0;
    scan_collect(g_tyZombie,  K_HOSTILE, 128);
    scan_collect(g_tyBoss,    K_HOSTILE, 16);
    scan_collect(g_tyMonster, K_HOSTILE, 32);
    scan_collect(g_tyItem,    K_ITEM,    160);
    scan_collect(g_tyPHM,     K_PLAYER,  32);
}

'''
assert anchor in t
t = t.replace(anchor, scan_code + anchor, 1)

# ---- 4. resolve FindObjectsOfType / class_get_image etc in resolve_engine ----
old = 'static void resolve_engine() {'
new = '''static void resolve_engine() {
    // Object.FindObjectsOfType(Type) — managed method, address from the dump
    if (!p_find_of_type) {
        static const MethodInfo* (*getm)(void*, const char*, int) = NULL;
        // resolve via the exported lookup: class Object lives in UnityEngine.CoreModule
        if (p_class_from_name && p_class_get_image) {
            static int (*cls_get_method)(void*, const char*, int);
            cls_get_method = (decltype(cls_get_method))dlsym(h_il2cpp, "il2cpp_class_get_method_from_name");
            // image for CoreModule is resolved in scan_init; here we probe both known images
        }
        (void)getm;
    }'''
assert old in t
t = t.replace(old, new, 1)

io.open(p, 'w', encoding='utf-8').write(t)
print('patched: exports + scan machinery')

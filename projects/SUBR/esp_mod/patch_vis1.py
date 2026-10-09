p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. orbit type in scan_init
rep('''    g_tyAI      = type_of("AIController");
    g_scan_ready = 1;
    LOGI("scan: image=%p PHM=%p zombie=%p boss=%p monster=%p item=%p ai=%p",
         g_scan_image, (void*)g_tyPHM, (void*)g_tyZombie, (void*)g_tyBoss,
         (void*)g_tyMonster, (void*)g_tyItem, (void*)g_tyAI);''',
'''    g_tyAI      = type_of("AIController");
    g_tyOrbit   = type_of("ThirdPersonOrbitCam");
    g_scan_ready = 1;
    LOGI("scan: image=%p PHM=%p zombie=%p boss=%p monster=%p item=%p ai=%p orbit=%p",
         g_scan_image, (void*)g_tyPHM, (void*)g_tyZombie, (void*)g_tyBoss,
         (void*)g_tyMonster, (void*)g_tyItem, (void*)g_tyAI, (void*)g_tyOrbit);''')

# 2. orbit pin helper + scan_run collects it
rep('''static void scan_run() {''',
'''static void* orbit_pinned() {
    if (!g_orbitH || !p_gchandle_target) return NULL;
    void* o = p_gchandle_target(g_orbitH);
    return (o && alive(o)) ? o : NULL;
}
static void scan_run() {''')

open(p, 'w', encoding='utf-8').write(t)
print('ok part1')

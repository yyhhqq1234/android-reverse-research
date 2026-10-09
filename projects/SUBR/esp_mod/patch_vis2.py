p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. orbit pin in scan_run
rep('''    scan_collect(g_tyPHM,     K_PLAYER,  32);
}''',
'''    scan_collect(g_tyPHM,     K_PLAYER,  32);
    if (g_tyOrbit) {   // orbit rig singleton -> aim pivot + vis origin
        if (g_orbitH && p_gchandle_free) { p_gchandle_free(g_orbitH); g_orbitH = 0; }
        Il2CppArray* a = NULL;
        if (p_find_of_type2) {
            static bool kTrue = true;
            void* a2[2]; a2[0] = g_tyOrbit; a2[1] = &kTrue;
            a = (Il2CppArray*)invoke(p_find_of_type2, NULL, a2);
        }
        if (!a && p_find_of_type) {
            void* a1[1]; a1[0] = g_tyOrbit;
            a = (Il2CppArray*)invoke(p_find_of_type, NULL, a1);
        }
        if (a && a->max_length > 0 && a->vector[0] && p_gchandle_new)
            g_orbitH = p_gchandle_new((Il2CppObject*)a->vector[0], false);
    }
}''')

# 2. Ent gets vis flag
rep('struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; };',
    'struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; };')

# 3. default vis=true at build
rep('''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL;''',
    '''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true;''')

# 4. vis + pivot helpers before compute_frame (after bone cache block)
rep('''static void compute_frame() {
    g_compute_calls++; g_phase = 1;''',
'''// orbit pivot (player pos + pivotOffset); falls back to camera pos.
static bool orbit_pivot(Vec3* out, void** orbOut) {
    void* orb = orbit_pinned();
    if (!orb) return false;
    void* pt = read_ptr(orb, 0x18);          // ThirdPersonOrbitCam.player
    if (!pt || !alive(pt)) return false;
    Vec3 pp = ic_get_pos((Il2CppObject*)pt, NULL);
    if (!sane(pp)) return false;
    Vec3 off{0,0,0}; memcpy(&off, (char*)orb + 0x20, 12);
    out->x = pp.x + off.x; out->y = pp.y + off.y; out->z = pp.z + off.z;
    if (orbOut) *orbOut = orb;
    return true;
}
// line-of-sight: RaycastHit.distance @+28. tolerance 2 m (own/enemy hull).
static bool los_clear(Vec3 from, Vec3 to) {
    if (!ic_ray) return true;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.001f || len > 900.f) return false;
    d.x /= len; d.y /= len; d.z /= len;
    Vec3 o{from.x + d.x*1.2f, from.y + d.y*1.2f, from.z + d.z*1.2f};
    float maxD = len - 1.2f;
    if (maxD <= 0) return true;
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool blocked = false;
    try { blocked = ic_ray(o, d, hit, maxD, NULL); } catch (...) { return true; }
    if (!blocked) return true;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd >= maxD - 2.0f;
}
static void compute_frame() {
    g_compute_calls++; g_phase = 1;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok part2')

# R23：① 自瞄只锁真骨（Head10→Neck9→Chest8；无骨则跳过，绝不瞄固定高度）
#        ② 遮挡判定排除"目标自身碰撞体"的两段射线（贴脸被自己身体误判背挡）
#        ③ 状态滞回：连续 3 帧同向才切换（掩体边缘来回跳变）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# --- Component.get_gameObject ---
rep('''typedef bool            (*fn_enabled)(void*, const MethodInfo*);''',
    '''typedef bool            (*fn_enabled)(void*, const MethodInfo*);
typedef Il2CppObject* (*fn_get_go)(void*, const MethodInfo*);''')
rep('''static fn_enabled        ic_beh_en     = NULL;   // Behaviour.get_enabled (Camera extends Behaviour)''',
    '''static fn_enabled        ic_beh_en     = NULL;   // Behaviour.get_enabled (Camera extends Behaviour)
static fn_get_go         ic_get_go     = NULL;   // Component.get_gameObject (collider identity for LOS)''')
rep('''    ic_beh_en    = (fn_enabled)       il2cpp_off2addr(0x0CB1BE8); // Behaviour.get_enabled''',
    '''    ic_beh_en    = (fn_enabled)       il2cpp_off2addr(0x0CB1BE8); // Behaviour.get_enabled
    ic_get_go    = (fn_get_go)        il2cpp_off2addr(0x0CB7C04); // Component.get_gameObject''')

# --- Ent 加字段 ---
rep('''    struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; int los; };''',
    '''    struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; int los; bool boneHead; };''')
rep('''e.vis = true; e.los = -1; // -1 = not probed (culled / over budget)''',
    '''e.vis = true; e.los = -1; e.boneHead = false; // los -1 = not probed''')
rep('''if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) { e.head = h; headOk = true; } }''',
    '''if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) { e.head = h; headOk = true; e.boneHead = true; } }''')

# --- ray_blocked2 ---
rep('''// R21: one ray probe; true = a blocker stops the ray short of the target''',
    '''// R23: ray probe that IGNORES hits on the target's own colliders
static bool ray_blocked2(Vec3 from, Vec3 to, void* targetGO) {
    if (!ic_ray) return false;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.25f) return false;
    if (len > 900.f) return true;
    d.x /= len; d.y /= len; d.z /= len;
    Vec3 o = from;
    float remain = len;
    for (int step = 0; step < 3; step++) {
        float maxD = remain - 0.30f;
        if (maxD <= 0.f) return false;
        unsigned char hit[64]; memset(hit, 0, sizeof(hit));
        bool got = false;
        try { got = ic_ray(o, d, hit, maxD, NULL); } catch (...) { return false; }
        if (!got) return false;
        float hd = 0.f; memcpy(&hd, hit + 28, 4);
        if (hd >= maxD - 0.05f) return false;              // hit ~ the target point itself
        void* col = NULL; memcpy(&col, hit + 40, sizeof(col));   // RaycastHit.m_Collider
        if (targetGO && col && ic_get_go && ic_get_go(col, NULL) == targetGO) {
            Vec3 pt{0,0,0}; memcpy(&pt, hit, 12);
            o = Vec3{pt.x + d.x * 0.05f, pt.y + d.y * 0.05f, pt.z + d.z * 0.05f};
            Vec3 rem{to.x - o.x, to.y - o.y, to.z - o.z};
            remain = sqrtf(rem.x*rem.x + rem.y*rem.y + rem.z*rem.z);
            continue;
        }
        return true;
    }
    return false;
}
// R21: one ray probe; true = a blocker stops the ray short of the target''')

# --- 滞回 ---
rep('''static int g_losProbes = 0;   // R21: per-frame ray budget (3-state reachability)''',
    '''static int g_losProbes = 0;   // R21: per-frame ray budget (3-state reachability)
// R23: temporal hysteresis — a change must repeat 3 frames before it is shown
struct LosMem { void* obj; int state; int cnt; };
static LosMem g_losMem[64];
static int los_stable(void* obj, int raw) {
    if (!obj) return raw;
    int slot = -1, freeSlot = -1;
    for (int i = 0; i < 64; i++) {
        if (g_losMem[i].obj == obj) { slot = i; break; }
        if (freeSlot < 0 && g_losMem[i].obj == NULL) freeSlot = i;
    }
    if (slot < 0) {
        slot = (freeSlot >= 0) ? freeSlot : (int)((uintptr_t)obj % 64);
        g_losMem[slot].obj = obj; g_losMem[slot].state = raw; g_losMem[slot].cnt = 0;
        return raw;
    }
    if (g_losMem[slot].state == raw) { g_losMem[slot].cnt = 0; return raw; }
    g_losMem[slot].cnt++;
    if (g_losMem[slot].cnt >= 3) { g_losMem[slot].state = raw; g_losMem[slot].cnt = 0; }
    return g_losMem[slot].state;
}''')

# --- 三态探测：ray_blocked2 + 目标 GO + 滞回 + 预算 40 ---
rep('''                if (g_losProbes < 24) {
                    g_losProbes++;
                    bool blkHead = ray_blocked(org, e.head, NULL);
                    bool blkBody = ray_blocked(org, body, NULL);
                    e.los = blkHead ? (blkBody ? 0 : 1) : 2;
                }
                e.vis = (e.los > 0);''',
    '''                if (g_losProbes < 40) {
                    g_losProbes++;
                    void* tgo = ic_get_go ? ic_get_go((Il2CppObject*)e.obj, NULL) : NULL;
                    bool blkHead = ray_blocked2(org, e.head, tgo);
                    bool blkBody = ray_blocked2(org, body, tgo);
                    e.los = los_stable(e.obj, blkHead ? (blkBody ? 0 : 1) : 2);
                }
                e.vis = (e.los > 0);''')

# --- 自瞄：只锁真骨 ---
rep('''            Vec3 s = ic_w2s(cam, e.head, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < 0 || s.x > sw || s.y < 0 || s.y > sh) continue;
            float dx = s.x - cx, dy = s.y - cy;
            float d = sqrtf(dx*dx + dy*dy);
            if (d < best) {''',
    '''            // R23: aim only at a REAL bone (head bone, else chest bone) — never a guessed height
            Vec3 aimPt = e.head; int aimPart = e.boneHead ? 1 : 0;
            if (!e.boneHead && e.anim && ic_get_bone) {
                try {
                    Il2CppObject* cb = ic_get_bone(e.anim, 8, NULL);   // Chest(8)
                    if (cb && alive(cb)) {
                        Il2CppObject* cbt = ic_get_xform(cb, NULL);
                        if (cbt && alive(cbt)) { Vec3 w = ic_get_pos(cbt, NULL); if (sane(w)) { aimPt = w; aimPart = 2; } }
                    }
                } catch (...) {}
            }
            if (aimPart == 0) continue;
            Vec3 s = ic_w2s(cam, aimPt, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < 0 || s.x > sw || s.y < 0 || s.y > sh) continue;
            float dx = s.x - cx, dy = s.y - cy;
            float d = sqrtf(dx*dx + dy*dy);
            if (d < best) {''')
rep('''                float wx = e.head.x - pivot.x, wy = e.head.y - pivot.y, wz = e.head.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);
                if (wd < 2.0f) continue;   // R22: same-spot ghosts (dist 0-1) must never become the aim target
                if (ray_blocked(g_muzzleOk ? g_muzzlePos : campos, e.head, NULL)) continue; // R21: strict head reachability
                best = d; g_aimPoint = e.head; g_aimDist = wd; g_aimValid = true;''',
    '''                float wx = aimPt.x - pivot.x, wy = aimPt.y - pivot.y, wz = aimPt.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);
                if (wd < 2.0f) continue;
                void* ego = ic_get_go ? ic_get_go((Il2CppObject*)e.obj, NULL) : NULL;
                if (ray_blocked2(g_muzzleOk ? g_muzzlePos : campos, aimPt, ego)) continue;
                best = d; g_aimPoint = aimPt; g_aimDist = wd; g_aimValid = true; g_aimBone = aimPart;''')
rep('''static Vec3  g_muzzlePos{0,0,0};
static bool  g_muzzleOk = false;''',
    '''static Vec3  g_muzzlePos{0,0,0};
static bool  g_muzzleOk = false;
static int   g_aimBone = 0;   // R23: 1 = head bone, 2 = chest bone''')
rep('''            LOGI("aimlock head=(%.1f,%.1f,%.1f) dist=%.0f silent=%d aimbot=%d mz=%d",
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''',
    '''            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r23')

import re
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:80].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# ---------- ① 三态 LOS ----------
rep('''    struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; };''',
    '''    struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; int los; };''')
rep('''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true;''',
    '''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true; e.los = 2;''')
rep('''// in-match enemy-class discovery''',
    '''// R21: one ray probe; true = a blocker stops the ray short of the target
static bool ray_blocked(Vec3 from, Vec3 to, float* hdOut) {
    if (!ic_ray) return false;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.25f) return false;
    if (len > 900.f) return true;
    d.x /= len; d.y /= len; d.z /= len;
    float maxD = len - 0.30f;
    if (maxD <= 0.f) return false;
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool blk = false;
    try { blk = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!blk) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    if (hdOut) *hdOut = hd;
    return hd < maxD - 0.05f;
}
// in-match enemy-class discovery''')
rep('''            e.vis = los_clear(g_muzzleOk ? g_muzzlePos : pivot, e.head);   // R15: muzzle-based can-hit
            g_w2s_ok++;''',
    '''            // R21 3-state reachability: 2 = head reachable (可打) / 1 = body only (半掩体) / 0 = blocked (背挡)
            {
                Vec3 org = g_muzzleOk ? g_muzzlePos : campos;
                Vec3 body{e.root.x, e.root.y + 1.05f, e.root.z};
                if (e.anim && ic_get_bone) {
                    try {
                        Il2CppObject* cb = ic_get_bone(e.anim, 8, NULL);   // Chest(8)
                        if (cb && alive(cb)) {
                            Il2CppObject* cbt = ic_get_xform(cb, NULL);
                            if (cbt && alive(cbt)) { Vec3 w = ic_get_pos(cbt, NULL); if (sane(w)) body = w; }
                        }
                    } catch (...) {}
                }
                if (g_losProbes < 24) {
                    g_losProbes++;
                    bool blkHead = ray_blocked(org, e.head, NULL);
                    bool blkBody = ray_blocked(org, body, NULL);
                    e.los = blkHead ? (blkBody ? 0 : 1) : 2;
                }
                e.vis = (e.los > 0);
            }
            g_w2s_ok++;''')
rep('''            const float* col = (e.kind == K_HOSTILE) ? (e.vis ? RED : GRAY) : GREEN;
            if (g_espBox || g_diag_force) lbox(x, y, ww, hh, col);''',
    '''            const float* col = (e.kind == K_HOSTILE) ? (e.los == 2 ? RED : (e.los == 1 ? ORNG : GRAY)) : GREEN;
            if (g_espBox || g_diag_force) lbox(x, y, ww, hh, col);''')
rep('''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else { if (ents[i].dead) ndead++; else { nhost++; if (ents[i].vis) nvis++; } }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d vis=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d cullZ=%d cullScr=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid, g_cZ, g_cScr);''',
    '''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0, nbody = 0, nblk = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else {
                if (ents[i].dead) ndead++;
                else {
                    nhost++;
                    if (ents[i].los == 2) nvis++;
                    else if (ents[i].los == 1) nbody++;
                    else nblk++;
                }
            }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d canhitHead=%d canhitBody=%d blocked=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d cullZ=%d cullScr=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nbody, nblk, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid, g_cZ, g_cScr);''')
rep('''static volatile int g_cZ = 0, g_cScr = 0;''',
    '''static volatile int g_cZ = 0, g_cScr = 0;
static int g_losProbes = 0;   // R21: per-frame ray budget (3-state reachability)''')
rep('''        g_cZ = 0; g_cScr = 0; // cull counters (diagnose look-up-only)''',
    '''        g_cZ = 0; g_cScr = 0; g_losProbes = 0; // cull + ray-budget counters''')

# ---------- ② 静默自瞄 ----------
rep('''    if (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && !g_diag) return;  // zero cost when off (R14: diag keeps compute alive)''',
    '''    if (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && !g_silent && !g_diag) return;  // R21: g_silent was missing here (silent-aim alone never computed an aim point)''')
rep('''                if (!los_clear(g_muzzleOk ? g_muzzlePos : pivot, e.head)) continue;   // R15: from the muzzle
                best = d; g_aimPoint = e.head; g_aimDist = wd; g_aimValid = true;''',
    '''                if (ray_blocked(g_muzzleOk ? g_muzzlePos : campos, e.head, NULL)) continue; // R21: strict head reachability
                best = d; g_aimPoint = e.head; g_aimDist = wd; g_aimValid = true;''')
rep('''    // aimbot: turn the orbit rig (visible crosshair walk at ANY range, no controller fight)''',
    '''    {
        static long long lastLock = 0;
        if (g_aimValid && (g_silent || g_aimbot) && now_ms() - lastLock > 1000) {
            lastLock = now_ms();
            LOGI("aimlock head=(%.1f,%.1f,%.1f) dist=%.0f silent=%d aimbot=%d mz=%d",
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);
        }
    }
    // aimbot: turn the orbit rig (visible crosshair walk at ANY range, no controller fight)''')

# hk_shoot 参数化：两个开火入口共用 aim_shot
rep('''static void hk_shoot(void* thiz, const MethodInfo* m) {
    if (!orig_shoot) return;
    if (!thiz || !alive(thiz)) { orig_shoot(thiz, m); return; }''',
    '''static void (*orig_shoot2)(void*, const MethodInfo*) = NULL;   // R21: ShootBehaviour.Shooting
static void aim_shot(void* thiz, const MethodInfo* m, shoot_t real);
static void hk_shoot(void* thiz, const MethodInfo* m) { aim_shot(thiz, m, orig_shoot); }
static void hk_shoot2(void* thiz, const MethodInfo* m) { aim_shot(thiz, m, orig_shoot2); }
static void aim_shot(void* thiz, const MethodInfo* m, shoot_t real) {
    if (!real) return;
    if (!thiz || !alive(thiz)) { real(thiz, m); return; }''')
rep('''        if (g_armed) { orig_shoot(thiz, m); return; } // compute in flight: skip aim this shot''',
    '''        if (g_armed) { real(thiz, m); return; } // compute in flight: skip aim this shot''')
rep('''        if (sigsetjmp(g_jb, 1)) { g_armed = 0; orig_shoot(thiz, m); return; }''',
    '''        if (sigsetjmp(g_jb, 1)) { g_armed = 0; real(thiz, m); return; }''')
rep('''                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);
                        orig_shoot(thiz, m); // keep armed throughout (blocks concurrent compute using same g_jb)''',
    '''                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);
                        real(thiz, m); // keep armed throughout''')
rep('''                        ic_set_rot((Il2CppObject*)muzzle, sm, NULL);
                        orig_shoot(thiz, m); // keep armed throughout''',
    '''                        ic_set_rot((Il2CppObject*)muzzle, sm, NULL);
                        real(thiz, m); // keep armed throughout''')
rep('''        } catch (...) { g_armed = 0; return; } // S3: swallow (don't re-fire throwing orig)
        g_armed = 0;
    }
    orig_shoot(thiz, m);
}''',
    '''        } catch (...) { g_armed = 0; return; } // S3: swallow (don't re-fire throwing orig)
        g_armed = 0;
    }
    real(thiz, m);
}''')
rep('''    void* t = il2cpp_off2addr(0x0D39EEC);
    if (t) { p_A64Hook(t, (void*)hk_shoot, (void**)&orig_shoot); LOGI("LAZY HOOK ShootByScript @%p orig=%p", t, (void*)orig_shoot); }
    else LOGI("LAZY HOOK ShootByScript resolve FAIL");''',
    '''    void* t = il2cpp_off2addr(0x0D39EEC);
    if (t) { p_A64Hook(t, (void*)hk_shoot, (void**)&orig_shoot); LOGI("LAZY HOOK ShootByScript @%p orig=%p", t, (void*)orig_shoot); }
    else LOGI("LAZY HOOK ShootByScript resolve FAIL");
    void* t2 = il2cpp_off2addr(0x0D39FB8);   // R21: ShootBehaviour.Shooting (other fire entry)
    if (t2) { p_A64Hook(t2, (void*)hk_shoot2, (void**)&orig_shoot2); LOGI("LAZY HOOK Shooting @%p orig=%p", t2, (void*)orig_shoot2); }
    else LOGI("LAZY HOOK Shooting resolve FAIL");''')

# 骨链 10 -> 9 -> 8（把所有 "if (!X) X = ic_get_bone(Y, 11, NULL);" 行替换为 9 + 8 两行）
def fix_chain(m):
    indent, var, src = m.group(1), m.group(2), m.group(3)
    return ('%sif (!%s) %s = ic_get_bone(%s, 9, NULL);        // Neck(9)\n'
            '%sif (!%s) %s = ic_get_bone(%s, 8, NULL);        // Chest(8)'
            % (indent, var, var, src, indent, var, var, src))
t, n = re.subn(r'( *)if \(!(\w+)\) \2 = ic_get_bone\(([\w\.]+), 11, NULL\);', fix_chain, t)
assert n == 5, 'bone chain sites: %d' % n

open(p, 'w', encoding='utf-8').write(t)
print('ok r21 aim+los (bone sites fixed: %d)' % n)

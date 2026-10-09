# R15 修复补丁（已获批准）：① hpk2 自己的头 ② 方框改骨骼 bbox ③ 自瞄/视线改枪口 ④ scan∪reg 并集
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

# ---------- ③ los_clear：容差 2.0 -> 0.35（可打性判定收紧） ----------
rep('''    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd >= maxD - 2.0f;''',
    '''    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd >= maxD - 0.35f;   // R15: 2.0m tolerance let walls 1.9m in front count as clear''')

# ---------- ③ 弹道起点：本地玩家枪口（全局） ----------
rep('''// ---------------- aim state (main thread only) ----------------
static Vec3  g_aimPoint{0,0,0};
static bool  g_aimValid = false;''',
    '''// ---------------- aim state (main thread only) ----------------
static Vec3  g_aimPoint{0,0,0};
static bool  g_aimValid = false;
// R15: ballistics origin = local player's weapon muzzle (LOS / can-hit must start at the gun, not the pivot)
static Vec3  g_muzzlePos{0,0,0};
static bool  g_muzzleOk = false;''')

# ---------- ④ R6: 注册表不是「备胎」，改成 scan ∪ reg 并集 + 类名推 hpk ----------
rep('''    static struct { void* obj; int kind; int hpk; } src[640];
    int srcN = 0;
    if (g_scanN > 0) {
        for (int i = 0; i < g_scanN && srcN < 640; i++) {
            uint32_t h = g_scan[i].h; int k = g_scan[i].kind; int hpk = g_scan[i].hpk;
            // resolve OUTSIDE the lock is unsafe (scan_run may free); resolve here is
            // cheap (no managed entry) — death is filtered again below via sane()
            void* o = NULL;
            if (p_gchandle_target && h) o = p_gchandle_target(h);
            if (!o) continue;   // dead entity: skip, never touch a freed object
            src[srcN].obj = o; src[srcN].kind = k; src[srcN].hpk = hpk; srcN++;
        }
    } else {
        for (int i = 0; i < regN && srcN < 640; i++) {
            src[srcN].obj = g_reg[i].obj; src[srcN].kind = g_reg[i].kind; src[srcN].hpk = 0; srcN++;
        }
    }''',
    '''    static struct { void* obj; int kind; int hpk; } src[640];
    int srcN = 0;
    for (int i = 0; i < g_scanN && srcN < 640; i++) {
        uint32_t h = g_scan[i].h; int k = g_scan[i].kind; int hpk = g_scan[i].hpk;
        void* o = NULL;
        if (p_gchandle_target && h) o = p_gchandle_target(h);
        if (!o) continue;   // dead entity: skip, never touch a freed object
        src[srcN].obj = o; src[srcN].kind = k; src[srcN].hpk = hpk; srcN++;
    }
    // R6 fix: the hook registry is a UNION source, not an either/or fallback.
    // (scan returning only items used to hide every registered bot: reg=17 -> hostile=0)
    for (int i = 0; i < regN && srcN < 640; i++) {
        void* o = g_reg[i].obj;
        if (!o) continue;
        bool have = false;
        for (int k2 = 0; k2 < srcN; k2++) if (src[k2].obj == o) { have = true; break; }
        if (have) continue;
        src[srcN].obj = o; src[srcN].kind = g_reg[i].kind; src[srcN].hpk = infer_hpk(o); srcN++;
    }''')

# infer_hpk（放在 compute_frame 之前）
rep('''static void compute_frame() {
    g_compute_calls++; g_phase = 1;''',
    '''// R15/R6: registry-only entities carry no class tag -> derive it from the IL2CPP class name
static int infer_hpk(void* o) {
    if (!o || !p_class_get_name) return 0;
    void* klass = NULL; memcpy(&klass, o, sizeof(klass));
    if (!klass || ((uintptr_t)klass & 7)) return 0;
    const char* nm = p_class_get_name(klass);
    if (!nm) return 0;
    if (strstr(nm, "PlayerHealthManager")) return 1;
    if (strstr(nm, "AIController"))        return 2;
    if (strstr(nm, "ZombieEnemyAI"))       return 3;
    if (strstr(nm, "MonsterEnemy"))        return 4;
    if (strstr(nm, "EnemyAIBoss"))         return 5;
    return 0;
}
static void compute_frame() {
    g_compute_calls++; g_phase = 1;''')

# ---------- ① hpk2 自己的头（TarHead 是 AI 的目标头==玩家头，禁用） ----------
rep('''            if (hpk == 2) {
                // AIController.TarHead @0xF0: exact head Transform (never a fixed height)
                void* th = read_ptr(o, 0xF0);
                if (th && alive(th)) {
                    Il2CppObject* ttr = ic_get_xform(th, NULL);
                    if (ttr && alive(ttr)) {
                        Vec3 h = ic_get_pos(ttr, NULL);
                        if (sane(h)) { e.head = h; e.anim = read_ptr(o, 0x20); }
                    }
                }
                if (e.head.y == p.y) { // S11 fix: TarHead null -> try head@0x1E0 before bone/fallback
                    void* hh = read_ptr(o, 0x1E0); // AIController.head
                    if (hh && alive(hh)) {
                        Il2CppObject* htr = ic_get_xform(hh, NULL);
                        if (htr && alive(htr)) { Vec3 h = ic_get_pos(htr, NULL); if (sane(h)) e.head = h; }
                    }
                }
                if (e.head.y == p.y && ic_get_bone) {   // TarHead missing: bone path
                    void* anim = read_ptr(o, 0x20);
                    e.anim = anim;
                    if (anim && alive(anim)) {
                        Il2CppObject* bt = ic_get_bone(anim, 10, NULL);
                        if (!bt) bt = ic_get_bone(anim, 11, NULL);
                        if (bt && alive(bt)) {
                            Il2CppObject* btr = ic_get_xform(bt, NULL);
                            if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                        }
                    }
                }
            } else if (hpk == 3) {''',
    '''            if (hpk == 2) {
                // R15: TarHead@0xF0 is the AI's TARGET head (in-match logs proved it == the local player's
                // head: hscr stayed (633,320) for bots at 2/26/54 m). It must never anchor box or aim.
                // Own head order: bone Head(10) -> head@0x1E0 -> root+1.75. Explicit flag (old gate
                // `e.head.y == p.y` was permanently false after the fallback -> dead code = M1).
                bool headOk = false;
                void* anim = read_ptr(o, 0x20);                    // AIController.anim
                e.anim = (anim && alive(anim)) ? anim : NULL;
                if (e.anim && ic_get_bone) {
                    try {
                        Il2CppObject* bt = ic_get_bone(e.anim, 10, NULL);
                        if (!bt) bt = ic_get_bone(e.anim, 11, NULL);
                        if (bt && alive(bt)) {
                            Il2CppObject* btr = ic_get_xform(bt, NULL);
                            if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) { e.head = h; headOk = true; } }
                        }
                    } catch (...) {}
                }
                if (!headOk) {
                    void* hh = read_ptr(o, 0x1E0);                 // AIController.head (own head transform)
                    if (hh && alive(hh)) {
                        Il2CppObject* htr = ic_get_xform(hh, NULL);
                        if (htr && alive(htr)) { Vec3 h = ic_get_pos(htr, NULL); if (sane(h)) { e.head = h; headOk = true; } }
                    }
                }
                if (!headOk) e.head = Vec3{p.x, p.y + 1.75f, p.z}; // last resort only
            } else if (hpk == 3) {''')

# ---------- ③ 枪口定位（在 ents 建好后、aim 之前） ----------
rep('''    g_phase = 3;
    // --- aim target selection (pixel-nearest VISIBLE hostile within FOV circle) ---''',
    '''    // R15: locate the local player's gun muzzle (ballistics origin for LOS / can-hit)
    g_muzzleOk = false;
    for (int i = 0; i < nEnt; i++) {
        if (ents[i].kind != K_PLAYER) continue;
        void* sb = read_ptr(ents[i].obj, 0xA8);   // PlayerHealthManager.weapons (ShootBehaviour)
        if (!sb || !alive(sb)) continue;
        void* mz = read_ptr(sb, 0xB8);            // ShootBehaviour.gunMuzzle
        if (!mz || !alive(mz)) continue;
        Vec3 mp = ic_get_pos((Il2CppObject*)mz, NULL);
        if (!sane(mp)) continue;
        g_muzzlePos = mp; g_muzzleOk = true; break;
    }

    g_phase = 3;
    // --- aim target selection (pixel-nearest VISIBLE hostile within FOV circle) ---''')

# ---------- ③ 瞄准循环的 LOS 改枪口 ----------
rep('''                if (!los_clear(pivot, e.head)) continue;   // no shooting through walls''',
    '''                if (!los_clear(g_muzzleOk ? g_muzzlePos : pivot, e.head)) continue;   // R15: from the muzzle''')

# ---------- ② 方框：骨骼 bbox（与骨骼同源） ----------
rep('''            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
            Vec3 head = ic_w2s(cam, e.head, 2, NULL);
            if (feet.z < 0 || head.z < 0) { g_cZ++; continue; } // behind camera: no valid projection, must skip (no estimation)
            // on-screen gate: EITHER end on screen (BOTH culled close enemies whose head is off-top -> look-up-only)
            bool feetOn = (feet.x > -50 && feet.x < sw + 50 && feet.y > -50 && feet.y < sh + 50);
            bool headOn = (head.x > -50 && head.x < sw + 50 && head.y > -50 && head.y < sh + 50);
            if (!feetOn && !headOn) { g_cScr++; continue; }
            e.vis = los_clear(pivot, e.head);
            g_w2s_ok++;
            if (w2s_logged < 3) {
                w2s_logged++;
                LOGI("w2s sample: root=(%.1f,%.1f,%.1f) scr=(%.0f,%.0f,%.0f) head_scr=(%.0f,%.0f,%.0f) screen=%dx%d",
                     e.root.x, e.root.y, e.root.z, feet.x, feet.y, feet.z, head.x, head.y, head.z, g_sw, g_sh);
            }
            // bottom-origin: head.y > feet.y, box bottom=feet.y height=head-feet
            // grounding in WORLD space (pitch-invariant): hips-pivot (worldH<1m) -> feet=head-1.7m
            // (was screen-space feet.y adjust -> feedback with pitch = size swings on look up/down)
            float worldH = e.head.y - e.root.y;
            if (worldH > 0.05f && worldH < 1.0f) {
                Vec3 feetW{e.head.x, e.head.y - 1.7f, e.head.z};
                Vec3 f2 = ic_w2s(cam, feetW, 2, NULL);
                if (f2.z >= 0) feet = f2;
            }
            float hh = head.y - feet.y;
            if (hh < 0) hh = -hh; // overhead/roll: use abs (never cull on sign)
            if (hh <= 2.f) { g_cScr++; continue; } // too far/small only
            if (hh > sh * 1.5f) hh = sh * 1.5f; // close: clamp not cull (was >sh cull -> pitch pop)
            float ww = hh * 0.45f;
            float x = (head.x + feet.x) * 0.5f - ww * 0.5f, y = feet.y; // mid-x (was head-only lean)
            const float* col = (e.kind == K_HOSTILE) ? (e.vis ? RED : GRAY) : GREEN;
            if (g_espBox) lbox(x, y, ww, hh, col);''',
    '''            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
            Vec3 head = ic_w2s(cam, e.head, 2, NULL);
            // R15: the box is built from the SAME bone projections the skeleton uses, so box==skeleton
            // by construction (the old anchor pair "component transform + head" was a different rigid
            // frame -> dxMidSkel swung -207..+77 px and hh swung -62..+659 px with pitch).
            float bMinX = 0, bMaxX = 0, bMinY = 0, bMaxY = 0; bool boneBox = false;
            if (e.anim && ic_get_bone) {
                static const int AN[6] = {0, 10, 5, 6, 11, 12};   // Hips, Head, FootL, FootR, ShoulderL, ShoulderR
                Vec3 an[6]; bool anOk[6]; int anN = 0;
                for (int a = 0; a < 6; a++) {
                    anOk[a] = false;
                    try {
                        Il2CppObject* bt = ic_get_bone(e.anim, AN[a], NULL);
                        if (!bt || !alive(bt)) continue;
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (!btr || !alive(btr)) continue;
                        Vec3 w = ic_get_pos(btr, NULL);
                        if (!sane(w)) continue;
                        Vec3 s = ic_w2s(cam, w, 2, NULL);
                        if (s.z < 0) continue;                    // only this anchor is invalid, not the whole box
                        an[a] = s; anOk[a] = true; anN++;
                    } catch (...) {}
                }
                if (anN >= 2 && anOk[1]) {                        // need the head + one more
                    float lo = 1e9f, hi = an[1].y;                // top = head bone
                    if (anOk[0] && an[0].y < lo) lo = an[0].y;    // bottom = lowest of Hips/Feet
                    if (anOk[2] && an[2].y < lo) lo = an[2].y;
                    if (anOk[3] && an[3].y < lo) lo = an[3].y;
                    if (lo > 1e8f) lo = an[1].y;
                    float lx = an[1].x, hx = an[1].x;
                    for (int a = 0; a < 6; a++) {
                        if (!anOk[a]) continue;
                        if (an[a].x < lx) lx = an[a].x;
                        if (an[a].x > hx) hx = an[a].x;
                    }
                    bMinY = lo; bMaxY = hi; bMinX = lx; bMaxX = hx; boneBox = true;
                }
            }
            if (!boneBox) {                                       // no bones: root + class height, same-frame projection
                if (feet.z < 0 || head.z < 0) { g_cZ++; continue; }
                float H = (e.hpk == 5 ? 2.4f : e.hpk == 4 ? 1.5f : e.hpk == 3 ? 1.7f : 1.8f);
                Vec3 topW{e.root.x, e.root.y + H, e.root.z};
                Vec3 top = ic_w2s(cam, topW, 2, NULL);
                if (top.z < 0) top = head;
                bMinY = (feet.y < top.y ? feet.y : top.y);
                bMaxY = (feet.y > top.y ? feet.y : top.y);
                bMinX = (head.x < feet.x ? head.x : feet.x);
                bMaxX = (head.x > feet.x ? head.x : feet.x);
            }
            if (bMaxX < -50 || bMinX > sw + 50 || bMaxY < -50 || bMinY > sh + 50) { g_cScr++; continue; }
            float hh = bMaxY - bMinY;
            if (hh <= 2.f || hh > sh * 2.0f) { g_cScr++; continue; }   // no clamp-snap: cull only degenerate
            float wNeed = hh * 0.45f;
            if (bMaxX - bMinX < wNeed) {                          // shoulders narrower than body silhouette
                float c = (bMinX + bMaxX) * 0.5f;
                bMinX = c - wNeed * 0.5f; bMaxX = c + wNeed * 0.5f;
            }
            float ww = bMaxX - bMinX;
            float x = bMinX, y = bMinY;
            e.vis = los_clear(g_muzzleOk ? g_muzzlePos : pivot, e.head);   // R15: muzzle-based can-hit
            g_w2s_ok++;
            if (w2s_logged < 3) {
                w2s_logged++;
                LOGI("w2s sample: root=(%.1f,%.1f,%.1f) box=(%.0f,%.0f,%.0fx%.0f) head_scr=(%.0f,%.0f) bone=%d screen=%dx%d",
                     e.root.x, e.root.y, e.root.z, x, y, ww, hh, head.x, head.y, (int)boneBox, g_sw, g_sh);
            }
            const float* col = (e.kind == K_HOSTILE) ? (e.vis ? RED : GRAY) : GREEN;
            if (g_espBox) lbox(x, y, ww, hh, col);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15 fix')

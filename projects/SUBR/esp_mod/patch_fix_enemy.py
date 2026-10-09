# FIX: enemy box(matrix)+skeleton disappeared
# Root causes (dump.cs verified):
#  R1 hpk3 (ZombieEnemyAI/Boss) has NO anim/head branch -> anim NULL, head=+1.55 fallback only.
#      ZombieEnemyAI.animator@0xB0/isDead@0xB9, EnemyAIBoss.animator@0xC8/isDead@0xD1, Health int@0x1C.
#      Full 19-bone skeleton never draws for them -> perceived as "skeleton gone".
#  R2 dead filter too aggressive: Health<=0 alone marks dormant/pooled (includeInactive=true)
#      bots as dead -> white markers flood 400 DrawCmd budget, evicting real red boxes.
#      Fix: authoritative isDead bool primary, Health secondary; two-pass draw (alive first, dead capped 30).
#  R3 strict culling: head.z<0 or hh<=2 or both-ends-on-screen gates cull distant/close enemies.
#      Fix: EITHER-end on-screen gate, hh clamp (not cull), behind-camera estimation via dist.
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:80].replace('\n','\\n')
    t = t.replace(old, new, 1)

# --- 1. Ent add dist field (for behind-camera estimation) ---
rep('struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; };',
    'struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; };')

# --- 2. authoritative dead logic (isDead primary for hpk3) ---
rep('''        if (kind == K_HOSTILE || kind == K_PLAYER) {
            float hv = -1.f; bool known = true;
            if (hpk == 1) { memcpy(&hv, (char*)o + 0x18, 4); }
            else if (hpk == 2) { memcpy(&hv, (char*)o + 0xE4, 4); }
            else if (hpk == 3) { int hi = 0; memcpy(&hi, (char*)o + 0x1C, 4); hv = (float)hi; }
            else known = false;
            if (known && hv == hv && hv <= 0.f && hv > -100000.f) { e.dead = true; e.hp = 0.f; }
            else if (known && hv == hv && hv < 100000.f) e.hp = hv;
        }''',
'''        e.dist = sqrtf(d2);
        if (kind == K_HOSTILE || kind == K_PLAYER) {
            float hv = -1.f; bool known = true; bool deadByFlag = false;
            if (hpk == 1) { memcpy(&hv, (char*)o + 0x18, 4); }
            else if (hpk == 2) { memcpy(&hv, (char*)o + 0xE4, 4); }
            else if (hpk == 3) {
                int hi = 0; memcpy(&hi, (char*)o + 0x1C, 4); hv = (float)hi;
                unsigned char d1 = 0, d2b = 0;
                memcpy(&d1, (char*)o + 0xB9, 1);   // ZombieEnemyAI.isDead
                memcpy(&d2b, (char*)o + 0xD1, 1);  // EnemyAIBoss.isDead
                if (d1 == 1 || d2b == 1) deadByFlag = true;
                // garbage guard: Health int outside sane range -> treat as alive
                if (hi < -100000 || hi > 100000) { known = false; }
            }
            else known = false;
            if (deadByFlag) { e.dead = true; e.hp = 0.f; }
            else if (known && hv == hv && hv <= 0.f && hv > -100000.f) {
                // hpk2 dormant pooled bots (includeInactive) often read 0 while alive:
                // require dist>1m AND sane pos (already) AND hv<=-0.5 to avoid 0.0 noise kill
                if (hpk == 2 && hv > -0.5f) { e.hp = (hv < 100000.f ? hv : 100.f); }
                else { e.dead = true; e.hp = 0.f; }
            }
            else if (known && hv == hv && hv < 100000.f) e.hp = hv;
        }''')

# --- 3. hpk3 anim/head branch (Zombie 0xB0 / Boss 0xC8 + bone head) ---
rep('''            } else if (hpk == 4) {''',
'''            } else if (hpk == 3) {
                // ZombieEnemyAI.animator@0xB0 / EnemyAIBoss.animator@0xC8 (dump.cs verified)
                void* anim = read_ptr(o, 0xB0);
                if (!anim || !alive(anim)) anim = read_ptr(o, 0xC8);
                e.anim = anim;
                if (anim && alive(anim) && ic_get_bone) {
                    Il2CppObject* bt = ic_get_bone(anim, 10, NULL);
                    if (!bt) bt = ic_get_bone(anim, 11, NULL);
                    if (bt && alive(bt)) {
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                    }
                }
            } else if (hpk == 4) {''')

# --- 4. draw: two-pass (alive first, dead capped) + relaxed culling ---
rep('''    if (g_espBox || g_skeleton) {
        int skelBudget = 6;   // full 19-bone only for 6 ents/frame: bounds managed calls
        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never box self
            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
            if (e.dead) {   // loot/dead marker: small white box at feet
                if (feet.z >= 0 && feet.x > -50 && feet.x < sw + 50 &&
                    feet.y > -50 && feet.y < sh + 50) {
                    lbox(feet.x - 7, feet.y - 7, 14, 14, WHITE);
                    g_w2s_ok++;
                }
                continue;
            }
            Vec3 head = ic_w2s(cam, e.head, 2, NULL);
            if (feet.z < 0 || head.z < 0) continue;
            // on-screen gate: Unity W2S is bottom-origin, fullscreen 0..sw/0..sh
            if (feet.x < -50 || feet.x > sw + 50 || feet.y < -50 || feet.y > sh + 50) continue;
            if (head.x < -50 || head.x > sw + 50 || head.y < -50 || head.y > sh + 50) continue;
            e.vis = los_clear(pivot, e.head);
            g_w2s_ok++;''',
'''    if (g_espBox || g_skeleton) {
        int skelBudget = 6;   // full 19-bone only for 6 ents/frame: bounds managed calls
        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never box self
            if (e.dead) continue;                 // PASS 1: alive only (dead drawn in pass 2, capped)
            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
            Vec3 head = ic_w2s(cam, e.head, 2, NULL);
            // behind-camera estimation: if one end is behind but the other is visible,
            // estimate the hidden end from distance instead of culling the whole box
            if (feet.z < 0 && head.z < 0) continue;
            if (feet.z < 0 || head.z < 0) {
                float hh_est = (g_sh * 1.4f) / (e.dist + 1.0f);
                if (hh_est < 4.f) hh_est = 4.f; if (hh_est > sh * 1.5f) hh_est = sh * 1.5f;
                if (feet.z >= 0) { head.x = feet.x; head.y = feet.y + hh_est; head.z = feet.z; }
                else { feet.x = head.x; feet.y = head.y - hh_est; feet.z = head.z; }
            }
            // on-screen gate: EITHER end on screen (was BOTH -> close/edge enemies culled)
            bool feetOn = (feet.z >= 0 && feet.x > -50 && feet.x < sw + 50 && feet.y > -50 && feet.y < sh + 50);
            bool headOn = (head.z >= 0 && head.x > -50 && head.x < sw + 50 && head.y > -50 && head.y < sh + 50);
            if (!feetOn && !headOn) continue;
            e.vis = los_clear(pivot, e.head);
            g_w2s_ok++;''')

# --- 5. relax hh filter (clamp instead of cull) + keep box/skeleton ---
rep('''            // bottom-origin: head.y > feet.y, box bottom=feet.y height=head-feet
            float hh = head.y - feet.y;
            if (hh <= 2.f || hh > sh) continue;''',
'''            // bottom-origin: head.y > feet.y, box bottom=feet.y height=head-feet
            float hh = head.y - feet.y;
            if (hh <= 1.f) continue;                 // sub-pixel: truly too far
            if (hh > sh * 1.5f) hh = sh * 1.5f;      // very close: clamp, don't cull
            if (hh < 0) hh = -hh;                    // inverted (camera roll): use abs''')

# --- 6. dead pass 2 (capped 30, after alive so real boxes never evicted) ---
rep('''                if (!full) {
                    lseg(head.x, head.y, feet.x, feet.y, col);
                    lseg(x, y + hh * 0.75f, x + ww, y + hh * 0.75f, col);
                }
            }
        }
    }''',
'''                if (!full) {
                    lseg(head.x, head.y, feet.x, feet.y, col);
                    lseg(x, y + hh * 0.75f, x + ww, y + hh * 0.75f, col);
                }
            }
        }
        // PASS 2: dead/loot markers, capped so pooled corpses can't evict alive boxes
        if (g_espBox) {
            int deadN = 0;
            for (int i = 0; i < nEnt && deadN < 30; i++) {
                Ent& e = ents[i];
                if (e.kind != K_HOSTILE || !e.dead) continue;
                Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
                if (feet.z >= 0 && feet.x > -50 && feet.x < sw + 50 &&
                    feet.y > -50 && feet.y < sh + 50) {
                    lbox(feet.x - 7, feet.y - 7, 14, 14, WHITE);
                    g_w2s_ok++; deadN++;
                }
            }
        }
    }''')

open(p, 'w', encoding='utf-8').write(t)
print('ok fix_enemy')

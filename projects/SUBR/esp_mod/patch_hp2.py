p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. death gate + per-class head (AI TarHead@0xF0 exact, Monster head@0x20)
rep('''        Ent& e = ents[nEnt++];
        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true;''',
    '''        Ent& e = ents[nEnt++];
        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true;
        e.hpk = hpk; e.dead = false;
        if (kind == K_HOSTILE || kind == K_PLAYER) {
            float hv = -1.f; bool known = true;
            if (hpk == 1) { memcpy(&hv, (char*)o + 0x18, 4); }
            else if (hpk == 2) { memcpy(&hv, (char*)o + 0xE4, 4); }
            else if (hpk == 3) { int hi = 0; memcpy(&hi, (char*)o + 0x1C, 4); hv = (float)hi; }
            else known = false;
            if (known && hv == hv && hv <= 0.f && hv > -100000.f) { e.dead = true; e.hp = 0.f; }
            else if (known && hv == hv && hv < 100000.f) e.hp = hv;
        }''')

rep('''        } else if (kind == K_HOSTILE) {
            e.head = Vec3{p.x, p.y + 1.55f, p.z};   // fallback: AI rigs
            // AIController.anim @0x20 -> Head bone when available (bots use same humanoid rig)
            if (ic_get_bone) {
                void* anim = read_ptr(o, 0x20);
                e.anim = anim;
                if (anim && alive(anim)) {
                    Il2CppObject* bt = ic_get_bone(anim, 10 /*HumanBodyBones.Head*/, NULL);
                    if (!bt) bt = ic_get_bone(anim, 11, NULL);
                    if (bt && alive(bt)) {
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                    }
                }
            }
        }''',
    '''        } else if (kind == K_HOSTILE) {
            e.head = Vec3{p.x, p.y + 1.55f, p.z};   // fallback
            if (hpk == 2) {
                // AIController.TarHead @0xF0: exact head Transform (never a fixed height)
                void* th = read_ptr(o, 0xF0);
                if (th && alive(th)) {
                    Il2CppObject* ttr = ic_get_xform(th, NULL);
                    if (ttr && alive(ttr)) {
                        Vec3 h = ic_get_pos(ttr, NULL);
                        if (sane(h)) { e.head = h; e.anim = read_ptr(o, 0x20); }
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
            } else if (hpk == 4) {
                // MonsterEnemy.head @0x20 + anim @0x70
                void* mh = read_ptr(o, 0x20);
                if (mh && alive(mh)) {
                    Il2CppObject* mtr = ic_get_xform(mh, NULL);
                    if (mtr && alive(mtr)) {
                        Vec3 h = ic_get_pos(mtr, NULL);
                        if (sane(h)) e.head = h;
                    }
                }
                e.anim = read_ptr(o, 0x70);
            }
        }''')

# 2. WHITE const
rep('''    static const float GRAY[3]  = {0.45f, 0.45f, 0.45f};   // occluded (no ballistic LOS)''',
    '''    static const float GRAY[3]  = {0.45f, 0.45f, 0.45f};   // occluded (no ballistic LOS)
    static const float WHITE[3] = {0.92f, 0.92f, 0.92f};   // loot/dead marker''')

open(p, 'w', encoding='utf-8').write(t)
print('ok partB1')

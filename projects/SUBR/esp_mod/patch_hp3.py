p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. aim skips the dead
rep('''            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never aim at self''',
'''            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never aim at self
            if (e.dead) continue;               // corpse: no aim''')

# 2. draw: dead -> small white loot marker, no box/skeleton
rep('''        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never box self
            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);''',
'''        for (int i = 0; i < nEnt; i++) {
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
            }''')

# 3. replay: 6th bucket (white loot)
rep('''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[5][MAXBATCH * 2];
static int   g_batchN[5];''',
'''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[6][MAXBATCH * 2];
static int   g_batchN[6];''')
rep('''    for (int c = 0; c < 5; c++) g_batchN[c] = 0;
    // colour buckets: 0=green(player) 1=red(hostile) 2=cyan(skeleton) 3=yellow(item) 4=gray(occluded)''',
'''    for (int c = 0; c < 6; c++) g_batchN[c] = 0;
    // colour buckets: 0=green 1=red 2=cyan 3=yellow 4=gray(occluded) 5=white(loot)''')
rep('''        DrawCmd& d = local[i];
        int bucket;
        if (fabsf(d.col[0]-d.col[1]) < 0.06f && fabsf(d.col[1]-d.col[2]) < 0.06f) bucket = 4; // gray''',
'''        DrawCmd& d = local[i];
        int bucket;
        if (d.col[0] > 0.85f && d.col[1] > 0.85f && d.col[2] > 0.85f) bucket = 5; // white loot
        else if (fabsf(d.col[0]-d.col[1]) < 0.06f && fabsf(d.col[1]-d.col[2]) < 0.06f) bucket = 4; // gray''')
rep('''    static const float COL[5][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f}};''',
'''    static const float COL[6][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f},{0.92f,0.92f,0.92f}};''')
rep('''    g_drawn = 0;
    for (int c = 0; c < 5; c++) {''',
'''    g_drawn = 0;
    for (int c = 0; c < 6; c++) {''')

# 4. frame log: dead count
rep('''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else { nhost++; if (ents[i].vis) nvis++; }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d vis=%d item=%d) draw=%d drawn=%d swap=%u aim=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid);''',
'''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else { if (ents[i].dead) ndead++; else { nhost++; if (ents[i].vis) nvis++; } }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d vis=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok partB2')

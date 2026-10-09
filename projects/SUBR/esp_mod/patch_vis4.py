p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. gray const next to palette
rep('''    static const float YELL[3]  = {1.f, 0.85f, 0.f};''',
'''    static const float YELL[3]  = {1.f, 0.85f, 0.f};
    static const float GRAY[3]  = {0.45f, 0.45f, 0.45f};   // occluded (no ballistic LOS)''')

# 2. vis gate + color in draw loop
rep('''            g_w2s_ok++;''',
'''            e.vis = los_clear(pivot, e.head);
            g_w2s_ok++;''')
rep('''            const float* col = (e.kind == K_HOSTILE) ? RED : GREEN;''',
'''            const float* col = (e.kind == K_HOSTILE) ? (e.vis ? RED : GRAY) : GREEN;''')

# 3. skeleton follows box color (was fixed CYAN)
rep('''                    int drawnSeg = 0;
                    for (unsigned k = 0; k < sizeof(E)/sizeof(E[0]); k++) {
                        if (ok[E[k][0]] && ok[E[k][1]]) {
                            lseg(sp[E[k][0]].x, sp[E[k][0]].y, sp[E[k][1]].x, sp[E[k][1]].y, CYAN);
                            drawnSeg++;
                        }
                    }''',
'''                    int drawnSeg = 0;
                    for (unsigned k = 0; k < sizeof(E)/sizeof(E[0]); k++) {
                        if (ok[E[k][0]] && ok[E[k][1]]) {
                            lseg(sp[E[k][0]].x, sp[E[k][0]].y, sp[E[k][1]].x, sp[E[k][1]].y, col);
                            drawnSeg++;
                        }
                    }''')
rep('''                if (!full) {
                    lseg(head.x, head.y, feet.x, feet.y, CYAN);
                    lseg(x, y + hh * 0.75f, x + ww, y + hh * 0.75f, CYAN);''',
'''                if (!full) {
                    lseg(head.x, head.y, feet.x, feet.y, col);
                    lseg(x, y + hh * 0.75f, x + ww, y + hh * 0.75f, col);''')

# 4. replay: 5th bucket (gray)
rep('''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[4][MAXBATCH * 2];
static int   g_batchN[4];''',
'''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[5][MAXBATCH * 2];
static int   g_batchN[5];''')
rep('''    for (int c = 0; c < 4; c++) g_batchN[c] = 0;
    // colour buckets: 0=green(player) 1=red(hostile) 2=cyan(skeleton) 3=yellow(item)''',
'''    for (int c = 0; c < 5; c++) g_batchN[c] = 0;
    // colour buckets: 0=green(player) 1=red(hostile) 2=cyan(skeleton) 3=yellow(item) 4=gray(occluded)''')
rep('''        DrawCmd& d = local[i];
        int bucket;
        if (d.col[0] > 0.9f && d.col[1] < 0.3f) bucket = 1;         // red''',
'''        DrawCmd& d = local[i];
        int bucket;
        if (fabsf(d.col[0]-d.col[1]) < 0.06f && fabsf(d.col[1]-d.col[2]) < 0.06f) bucket = 4; // gray
        else if (d.col[0] > 0.9f && d.col[1] < 0.3f) bucket = 1;    // red''')
rep('''    static const float COL[4][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0}};''',
'''    static const float COL[5][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f}};''')
rep('''    g_drawn = 0;
    for (int c = 0; c < 4; c++) {''',
'''    g_drawn = 0;
    for (int c = 0; c < 5; c++) {''')

# 5. frame log: vis count
rep('''        int nplayer = 0, nhost = 0, nitem = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else nhost++;
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d item=%d) draw=%d drawn=%d swap=%u aim=%d",
             g_frame, regN, nEnt, nplayer, nhost, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid);''',
'''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else { nhost++; if (ents[i].vis) nvis++; }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d vis=%d item=%d) draw=%d drawn=%d swap=%u aim=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok part3b')

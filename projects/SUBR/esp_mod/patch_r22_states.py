# R22：① 橙桶（仅身体可打）单独分桶，避免与物品黄同桶被染色 ② los=-1 未探测态 + 遥测计 unk
#        ③ 自瞄目标排除 2m 内的自位/伪目标（避免 dist=0 的假锁定）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:80].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# ① 7 桶（0绿 1红 2青 3黄 4灰 5白 6橙）
rep('''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[6][MAXBATCH * 2];
static int   g_batchN[6];''',
    '''#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[7][MAXBATCH * 2];   // R22: +1 bucket for "body-only" orange
static int   g_batchN[7];''')
rep('''    for (int c = 0; c < 6; c++) g_batchN[c] = 0;
    // colour buckets: 0=green 1=red 2=cyan 3=yellow 4=gray(occluded) 5=white(loot)''',
    '''    for (int c = 0; c < 7; c++) g_batchN[c] = 0;
    // colour buckets: 0=green 1=red(can hit head) 2=cyan 3=yellow 4=gray(blocked) 5=white(loot) 6=orange(body only)''')
rep('''        if (d.col[0] > 0.85f && d.col[1] > 0.85f && d.col[2] > 0.85f) bucket = 5; // white loot''',
    '''        if (d.col[0] > 0.95f && d.col[1] > 0.35f && d.col[1] < 0.7f && d.col[2] < 0.25f) bucket = 6; // orange: body-only
        else if (d.col[0] > 0.85f && d.col[1] > 0.85f && d.col[2] > 0.85f) bucket = 5; // white loot''')
rep('''    static const float COL[6][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f},{0.92f,0.92f,0.92f}};''',
    '''    static const float COL[7][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f},{0.92f,0.92f,0.92f},{1.f,0.5f,0.f}};''')
rep('''    g_drawn = 0;
    for (int c = 0; c < 6; c++) {''',
    '''    g_drawn = 0;
    for (int c = 0; c < 7; c++) {''')

# ② los=-1 未探测
rep('''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true; e.los = 2;''',
    '''        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true; e.los = -1; // -1 = not probed (culled / over budget)''')
rep('''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0, nbody = 0, nblk = 0;''',
    '''        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0, nbody = 0, nblk = 0, nunk = 0;''')
rep('''                    if (ents[i].los == 2) nvis++;
                    else if (ents[i].los == 1) nbody++;
                    else nblk++;''',
    '''                    if (ents[i].los == 2) nvis++;
                    else if (ents[i].los == 1) nbody++;
                    else if (ents[i].los == 0) nblk++;
                    else nunk++;   // culled before probing''')
rep('''LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d canhitHead=%d canhitBody=%d blocked=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d cullZ=%d cullScr=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nbody, nblk, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid, g_cZ, g_cScr);''',
    '''LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d canhitHead=%d canhitBody=%d blocked=%d unprobed=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d cullZ=%d cullScr=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nbody, nblk, nunk, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid, g_cZ, g_cScr);''')

# ③ 自瞄排除 2m 内伪目标
rep('''                float wx = e.head.x - pivot.x, wy = e.head.y - pivot.y, wz = e.head.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);''',
    '''                float wx = e.head.x - pivot.x, wy = e.head.y - pivot.y, wz = e.head.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);
                if (wd < 2.0f) continue;   // R22: same-spot ghosts (dist 0-1) must never become the aim target''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r22 buckets+los+aim distance')

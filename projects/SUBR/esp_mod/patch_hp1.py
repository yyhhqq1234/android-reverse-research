p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

rep('struct ScanEnt { uint32_t h; int kind; };',
    'struct ScanEnt { uint32_t h; int kind; int hpk; };')
rep('static int scan_collect(Il2CppObject* type, int kind, int budget) {',
    'static int scan_collect(Il2CppObject* type, int kind, int budget, int hpk = 0) {')
rep('''        g_scan[g_scanN].h = h;
        g_scan[g_scanN].kind = kind;
        g_scanN++; added++;''',
    '''        g_scan[g_scanN].h = h;
        g_scan[g_scanN].kind = kind;
        g_scan[g_scanN].hpk = hpk;
        g_scanN++; added++;''')
rep('''    scan_collect(g_tyAI,      K_HOSTILE, 128);
    scan_collect(g_tyZombie,  K_HOSTILE, 128);
    scan_collect(g_tyBoss,    K_HOSTILE, 16);
    scan_collect(g_tyMonster, K_HOSTILE, 32);
    scan_collect(g_tyItem,    K_ITEM,    160);
    scan_collect(g_tyPHM,     K_PLAYER,  32);''',
    '''    scan_collect(g_tyAI,      K_HOSTILE, 128, 2);
    scan_collect(g_tyZombie,  K_HOSTILE, 128, 3);
    scan_collect(g_tyBoss,    K_HOSTILE, 16, 3);
    scan_collect(g_tyMonster, K_HOSTILE, 32, 4);
    scan_collect(g_tyItem,    K_ITEM,    160, 0);
    scan_collect(g_tyPHM,     K_PLAYER,  32, 1);''')
rep('static struct { void* obj; int kind; } src[640];',
    'static struct { void* obj; int kind; int hpk; } src[640];')
rep('''            uint32_t h = g_scan[i].h; int k = g_scan[i].kind;''',
    '''            uint32_t h = g_scan[i].h; int k = g_scan[i].kind; int hpk = g_scan[i].hpk;''')
rep('src[srcN].obj = o; src[srcN].kind = k; srcN++;',
    'src[srcN].obj = o; src[srcN].kind = k; src[srcN].hpk = hpk; srcN++;')
rep('src[srcN].obj = g_reg[i].obj; src[srcN].kind = g_reg[i].kind; srcN++;',
    'src[srcN].obj = g_reg[i].obj; src[srcN].kind = g_reg[i].kind; src[srcN].hpk = 0; srcN++;')
rep('struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; };',
    'struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; };')
rep('''        void* o = src[i].obj;
        int kind = src[i].kind;
        if (!alive(o)) continue;   // Destroyed shell: engine call would THROW''',
    '''        void* o = src[i].obj;
        int kind = src[i].kind;
        if (!alive(o)) continue;   // Destroyed shell: engine call would THROW
        int hpk = src[i].hpk;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok partA2')

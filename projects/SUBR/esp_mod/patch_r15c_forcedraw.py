# R15c：诊断构建打开"强制绘制"（菜单分类进不去，用来自证方框/骨骼真的画在敌人身上）
# 注意：g_diag_force=1 只用于本次取证构建；出厂构建应置 0（开关仍由菜单控制）。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:80].replace('\n', '\\n')
    t = t.replace(old, new, 1)

rep('''static volatile int  g_diag_only = 0;    // set by driver(): suppress publishing so nothing renders''',
    '''static volatile int  g_diag_only = 0;    // set by driver(): suppress publishing so nothing renders
static volatile int  g_diag_force = 1;   // R15c: verification build draws even with toggles off (set 0 for release)''')

rep('''    g_diag_only = (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && g_diag) ? 1 : 0;''',
    '''    g_diag_only = (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && g_diag && !g_diag_force) ? 1 : 0;''')

rep('''    if (g_espBox || g_skeleton) {
        int skelBudget = 6;''',
    '''    if (g_espBox || g_skeleton || g_diag_force) {
        int skelBudget = 6;''')

rep('''            if (g_espBox) lbox(x, y, ww, hh, col);''',
    '''            if (g_espBox || g_diag_force) lbox(x, y, ww, hh, col);''')

rep('''            if (g_skeleton) {
                bool full = false;''',
    '''            if (g_skeleton || g_diag_force) {
                bool full = false;''')

rep('''        if (g_espBox) {
            int deadN = 0;''',
    '''        if (g_espBox && !g_diag_force) {
            int deadN = 0;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15c force draw')

# R16 收尾：拆掉全部诊断脚手架（标记/clear探针/回读探针/强制绘制），
# 保留 R15 四项修复 + R15e 坐标系修复；ESP 默认打开（菜单分类进不去，先保证可用）。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

# 1) 删除洋红标尺
rep('''    // R15d: overlay self-test marker (proves the GL overlay reaches the screen)
    if (g_diag_force) {
        static const float MAG[3] = {1.f, 0.f, 1.f};              // magenta: absent from the game UI
        for (int yy = 100; yy < 400; yy += 4)                     // filled square (100,100)-(400,400)
            lseg(100.f, (float)yy, 400.f, (float)yy, MAG);
        lseg(200.f, 700.f, 1200.f, 700.f, MAG);                   // single line at y=700
    }
''', '')

# 2) 删除 clear 探针
rep('''        {   // R15i probe: does ANY of our GL reach the presented buffer?
            glEnable(GL_SCISSOR_TEST);
            glScissor(600, 600, 200, 200);
            glClearColor(1.f, 0.f, 1.f, 1.f);
            glClear(GL_COLOR_BUFFER_BIT);
            GLubyte pr[4] = {0,0,0,0};
            glReadPixels(650, 650, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, pr);
            static long long lastCP = 0;
            if (now_ms() - lastCP > 3000) { lastCP = now_ms(); LOGI("clearprobe (650,650)=(%d,%d,%d,%d)", pr[0],pr[1],pr[2],pr[3]); }
            glClearColor(0.f, 0.f, 0.f, 0.f);
        }
''', '')

# 3) 回读探针 -> 只留 surface/scale 记录
rep('''                GLint fboNow = -1; glGetIntegerv(GL_FRAMEBUFFER_BINDING, &fboNow);
                GLint vpNow[4] = {0,0,0,0}; glGetIntegerv(GL_VIEWPORT, vpNow);
                // count magenta in a strip across the marker band (y=250, x=90..420)
                static GLubyte strip[340 * 4];
                memset(strip, 0, sizeof(strip));
                glReadPixels(90, 250, 330, 1, GL_RGBA, GL_UNSIGNED_BYTE, strip);
                int magN = 0, s0 = -1;
                for (int i = 0; i < 330; i++) {
                    int r = strip[i*4], g2 = strip[i*4+1], b = strip[i*4+2];
                    if (r > 170 && b > 170 && g2 < 90) { magN++; if (s0 < 0) s0 = i + 90; }
                }
                GLubyte p2[4] = {0,0,0,0};
                glReadPixels(250, 250, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, p2);
                LOGI("readback fbo=%d vp=%d,%d,%d,%d magenta_in_strip=%d first_x=%d px250=(%d,%d,%d,%d)",
                     (int)fboNow, vpNow[0], vpNow[1], vpNow[2], vpNow[3], magN, s0,
                     p2[0], p2[1], p2[2], p2[3]);''',
    '''                LOGI("scalecheck screen=%dx%d surf=%dx%d k=(%.3f,%.3f) uK=%d vao=%u",
                     g_sw, g_sh, g_surfW, g_surfH,
                     (double)((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)),
                     (double)((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)),
                     (int)g_uK, g_vao);''')

# 4) 关闭强制绘制；ESP 默认打开（菜单分类进不去，先保证开箱可用）
rep('''static volatile int  g_diag_force = 1;   // R15c: verification build draws even with toggles off (set 0 for release)''',
    '''static volatile int  g_diag_force = 0;   // release: drawing follows the menu toggles''')
rep('''static volatile bool g_espBox = false, g_skeleton = false, g_itemEsp = false;''',
    '''// R16: default ON so the mod is usable without reaching the (currently unreachable) menu category
static volatile bool g_espBox = true, g_skeleton = true, g_itemEsp = false;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r16 cleanup')

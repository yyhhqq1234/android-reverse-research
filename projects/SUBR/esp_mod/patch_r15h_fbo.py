# R15h：查 FBO 绑定 + 统计条带内洋红像素数（判定"画了但没进这个 framebuffer"）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

rep('''                int sx = (int)(250.f * ((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)));
                int sy = (int)(250.f * ((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)));
                GLubyte p1[4] = {0,0,0,0}, p2[4] = {0,0,0,0};
                glReadPixels(sx, sy, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, p1);
                glReadPixels(250, 250, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, p2);
                LOGI("readback scaled(%d,%d)=(%d,%d,%d,%d) raw(250,250)=(%d,%d,%d,%d)",
                     sx, sy, p1[0],p1[1],p1[2],p1[3], p2[0],p2[1],p2[2],p2[3]);''',
    '''                GLint fboNow = -1; glGetIntegerv(GL_FRAMEBUFFER_BINDING, &fboNow);
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
                     p2[0], p2[1], p2[2], p2[3]);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15h fbo probe')

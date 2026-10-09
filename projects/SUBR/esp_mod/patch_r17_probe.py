# R17：局内可达性探针（fbo/viewport + 洋红 clear 方块），判定"局内我们的 GL 是否进到被呈现的缓冲"
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''        GLState st;
        gl_save(st);
        glDisable(GL_DEPTH_TEST);'''
new = '''        GLState st;
        gl_save(st);
        {   // R17 probe
            static long long lp = 0;
            if (now_ms() - lp > 3000) {
                lp = now_ms();
                GLint fboNow = -1; glGetIntegerv(GL_FRAMEBUFFER_BINDING, &fboNow);
                GLint vp[4] = {0,0,0,0}; glGetIntegerv(GL_VIEWPORT, vp);
                glEnable(GL_SCISSOR_TEST);
                glScissor(500, 500, 120, 120);
                glClearColor(1.f, 0.f, 1.f, 1.f);
                glClear(GL_COLOR_BUFFER_BIT);
                glClearColor(0.f, 0.f, 0.f, 0.f);
                GLubyte pr[4] = {0,0,0,0};
                glReadPixels(520, 520, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, pr);
                GLenum e = glGetError();
                LOGI("probe fbo=%d vp=%d,%d,%d,%d sw=%d sh=%d surf=%dx%d k=%.3f clearpx=(%d,%d,%d,%d) err=0x%x",
                     (int)fboNow, vp[0], vp[1], vp[2], vp[3], g_sw, g_sh, g_surfW, g_surfH,
                     (double)((float)g_surfW / (float)(g_sw > 0 ? g_sw : 1)),
                     pr[0], pr[1], pr[2], pr[3], (unsigned)e);
            }
        }
        glDisable(GL_DEPTH_TEST);'''
assert old in t, 'MISS probe anchor'
t = t.replace(old, new, 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok r17 probe')

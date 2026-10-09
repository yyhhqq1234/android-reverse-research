# R15g：叠加层坐标自证（surface 尺寸 / k / uK + glReadPixels 回读探针）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

rep('''    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");''',
    '''    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");
    LOGI("eglQuerySurface=%p", (void*)p_qsurf);''')

rep('''        glViewport(0, 0, (g_surfW > 0 ? g_surfW : g_sw), (g_surfH > 0 ? g_surfH : g_sh));
        if (!g_prog) gl_init();
        replay_draw();
        gl_restore(st);''',
    '''        glViewport(0, 0, (g_surfW > 0 ? g_surfW : g_sw), (g_surfH > 0 ? g_surfH : g_sh));
        if (!g_prog) gl_init();
        replay_draw();
        {
            static long long lastSL = 0;
            long long nowSL = now_ms();
            if (nowSL - lastSL > 3000) {
                lastSL = nowSL;
                LOGI("surface screen=%dx%d surf=%dx%d k=(%.3f,%.3f) uK=%d qs=%p",
                     g_sw, g_sh, g_surfW, g_surfH,
                     (double)((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)),
                     (double)((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)),
                     (int)g_uK, (void*)p_qsurf);
                // readback probes: marker is a filled magenta square at game y=100..400 + line y=700.
                // With k applied it lands at surface (100k .. 400k); probe the interior of that box.
                int sx = (int)(250.f * ((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)));
                int sy = (int)(250.f * ((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)));
                GLubyte p1[4] = {0,0,0,0}, p2[4] = {0,0,0,0};
                glReadPixels(sx, sy, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, p1);
                glReadPixels(250, 250, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, p2);
                LOGI("readback scaled(%d,%d)=(%d,%d,%d,%d) raw(250,250)=(%d,%d,%d,%d)",
                     sx, sy, p1[0],p1[1],p1[2],p1[3], p2[0],p2[1],p2[2],p2[3]);
            }
        }
        gl_restore(st);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15g probe')

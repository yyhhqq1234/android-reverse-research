# R30：把"轨道相机垂直限位"原值打进 diag 行（不需要开自瞄就能取证），确认 R29 的单位假设
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d headVsBone=%.2f boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f mz=%d rayhit=%d hd=%.1f maxD=%.1f vis=%d",'''
new = '''                    float vA = 0.f, vB = 0.f;
                    {
                        void* ob = orbit_pinned();
                        if (ob && alive(ob)) {
                            memcpy(&vA, (char*)ob + 0x8C, 4);   // maxVerticalAngle
                            memcpy(&vB, (char*)ob + 0x90, 4);   // minVerticalAngle
                        }
                    }
                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d headVsBone=%.2f boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f mz=%d rayhit=%d hd=%.1f maxD=%.1f vis=%d vlim=(%.3f,%.3f) angleV=%.2f angleH=%.2f",'''
assert old in t
t = t.replace(old, new, 1)
old2 = '''                         (int)g_muzzleOk, (int)blk, (double)hd, (double)maxD, (int)e.vis);'''
new2 = '''                         (int)g_muzzleOk, (int)blk, (double)hd, (double)maxD, (int)e.vis,
                         (double)vA, (double)vB, (double)g_lastAngleV, (double)g_lastAngleH);'''
assert old2 in t
t = t.replace(old2, new2, 1)
# 记录最近一次轨道角
t = t.replace('''static volatile int   g_lastVDegLike = 0;''',
              '''static volatile int   g_lastVDegLike = 0;
static volatile float g_lastAngleV = 0.f, g_lastAngleH = 0.f;''', 1)
t = t.replace('''            g_lastVMin = rMin; g_lastVMax = rMax; g_lastVDegLike = degLike ? 1 : 0;''',
              '''            g_lastVMin = rMin; g_lastVMax = rMax; g_lastVDegLike = degLike ? 1 : 0;
            g_lastAngleV = curV; g_lastAngleH = curH;''', 1)
# 也让 compute 在 aim 关闭时也能读到轨道角（把读取提前到 orbit_pivot 之后）
t = t.replace('''    if (orbObj && alive(orbObj)) g_orbPtr = orbObj;   // R26''',
              '''    if (orbObj && alive(orbObj)) {
        g_orbPtr = orbObj;   // R26
        memcpy((void*)&g_lastAngleV, (char*)orbObj + 0xEC, 4);
        memcpy((void*)&g_lastAngleH, (char*)orbObj + 0xE8, 4);
    }''', 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok r30 vlim diag')

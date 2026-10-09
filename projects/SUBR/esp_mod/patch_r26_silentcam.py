# R26：静默自瞄也走"相机射线"——开枪瞬间把轨道角对准 相机->头骨，射完立刻还原
#      （本作 TPS 的子弹/准星跟随相机前向；只转枪口在相机开火模型下等于没改）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# 全局：最近一次相机位置 + 轨道相机对象（供开火瞬间使用）
rep('''static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias''',
    '''static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias
// R26: last camera pose + orbit rig, for the silent-aim camera snap at fire time
static volatile float g_camX = 0.f, g_camY = 0.f, g_camZ = 0.f;
static void*          g_orbPtr = NULL;''')

# compute_frame：每帧刷新
rep('''    // aim/vis origin: orbit pivot (own eye height), else camera pos
    Vec3 pivot = campos; void* orbObj = NULL;
    orbit_pivot(&pivot, &orbObj);''',
    '''    // aim/vis origin: orbit pivot (own eye height), else camera pos
    Vec3 pivot = campos; void* orbObj = NULL;
    orbit_pivot(&pivot, &orbObj);
    if (orbObj && alive(orbObj)) g_orbPtr = orbObj;   // R26
    g_camX = campos.x; g_camY = campos.y; g_camZ = campos.z;''')

# 静默分支：先按 相机->瞄点 写轨道角，开火，再还原（相机开火模型下真正生效）
rep('''                    if (g_silent) {
                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);''',
    '''                    if (g_silent) {
                        // R26: silent = snap the CAMERA ray (crosshair) onto the bone for this single shot,
                        // then restore. Without this, a camera-based fire model ignores the muzzle rotation.
                        bool orbSnapped = false;
                        float savedH = 0.f, savedV = 0.f;
                        if (g_orbPtr && alive(g_orbPtr) && g_aimValid) {
                            Vec3 cd{g_aimPoint.x - g_camX, g_aimPoint.y - g_camY, g_aimPoint.z - g_camZ};
                            float cl = sqrtf(cd.x*cd.x + cd.y*cd.y + cd.z*cd.z);
                            if (cl > 2.0f) {
                                float syaw = atan2f(cd.x, cd.z) * 57.29578f;
                                float spit = -asinf(cd.y / cl) * 57.29578f;
                                memcpy(&savedH, (char*)g_orbPtr + 0xE8, 4);
                                memcpy(&savedV, (char*)g_orbPtr + 0xEC, 4);
                                memcpy((char*)g_orbPtr + 0xE8, &syaw, 4);
                                memcpy((char*)g_orbPtr + 0xEC, &spit, 4);
                                orbSnapped = true;
                            }
                        }
                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);''')

rep('''                        real(thiz, m); // keep armed throughout
                        ic_set_rot((Il2CppObject*)muzzle, saved, NULL);''',
    '''                        real(thiz, m); // keep armed throughout
                        ic_set_rot((Il2CppObject*)muzzle, saved, NULL);
                        if (orbSnapped) {   // restore the view immediately (this frame renders silently)
                            memcpy((char*)g_orbPtr + 0xE8, &savedH, 4);
                            memcpy((char*)g_orbPtr + 0xEC, &savedV, 4);
                        }''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r26 silent camera snap')

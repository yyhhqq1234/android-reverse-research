# R31【修"垂直不动"的真因】：游戏的俯仰由它自己的输入积分器驱动，每帧会把 angleV 拉回（实机 angleV 恒 ≈ -0.37，
#      而目标在相机下方 25m/220m ≈ -6.5°），所以只写 angleV 的俯仰永远被吃掉；水平不受此机制影响，故"只动水平"。
#   修法：挂 ThirdPersonOrbitCam::LateUpdate（游戏摆好相机之后）直接写**相机 Transform 的 rotation**，
#        让本帧真正生效；并把我们的 pitch/yaw 回写进 rig（让游戏下一帧从我们的值继续，收敛而非互斗）。
#   静默自瞄同因：开枪前直接把相机 Transform 转到瞄点，射完还原（子弹方向若取相机朝向，这样才真的生效）。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# 轨道相机 Transform 缓存
rep('''static void*          g_orbPtr = NULL;''',
    '''static void*          g_orbPtr = NULL;
static void*          g_orbCamTr = NULL;   // R31: ThirdPersonOrbitCam.cam (Transform) for direct rotation writes''')
rep('''    if (orbObj && alive(orbObj)) {
        g_orbPtr = orbObj;   // R26
        memcpy((void*)&g_lastAngleV, (char*)orbObj + 0xEC, 4);
        memcpy((void*)&g_lastAngleH, (char*)orbObj + 0xE8, 4);
    }''',
    '''    if (orbObj && alive(orbObj)) {
        g_orbPtr = orbObj;   // R26
        memcpy((void*)&g_lastAngleV, (char*)orbObj + 0xEC, 4);
        memcpy((void*)&g_lastAngleH, (char*)orbObj + 0xE8, 4);
        void* octr = read_ptr(orbObj, 0xF0);   // R31: the camera transform this rig drives
        if (octr && alive(octr)) g_orbCamTr = octr;
    }''')

# LateUpdate 钩子：游戏摆好相机后，直接把相机转向瞄点
rep('''// --- silent aim: snap -> fire -> restore, all inside ShootByScript ---''',
    '''// R31: post-LateUpdate camera aim. The rig's angleV is re-integrated by the game every frame
// (vertical input handler pulls it back to ~0), so writing angleV alone NEVER moves the pitch
// in-flight. Writing the camera Transform's rotation after the game's own LateUpdate wins the frame.
static void (*orig_orb_late)(void*, const MethodInfo*) = NULL;
static void hk_orb_late(void* thiz, const MethodInfo* m) {
    if (orig_orb_late) orig_orb_late(thiz, m);
    if (!g_aimbot || !g_aimValid || !g_icalls_ready) return;
    if (!g_orbCamTr || !alive(g_orbCamTr) || !ic_get_pos || !ic_look_rot || !ic_set_rot) return;
    Vec3 cp = ic_get_pos((Il2CppObject*)g_orbCamTr, NULL);
    if (!sane(cp)) return;
    Vec3 d{g_aimPoint.x - cp.x, g_aimPoint.y - cp.y, g_aimPoint.z - cp.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 2.0f) return;
    d.x /= len; d.y /= len; d.z /= len;
    Vec3 up{0,1,0};
    float pitch = -asinf(d.y) * 57.29578f + (float)g_aimPitchTrim * 0.1f;
    float yaw   = atan2f(d.x, d.z) * 57.29578f;
    if (thiz && alive(thiz)) {   // keep the rig in sync so the game converges instead of fighting
        memcpy((char*)thiz + 0xE8, &yaw, 4);
        memcpy((char*)thiz + 0xEC, &pitch, 4);
    }
    Quat q = ic_look_rot(d, up, NULL);
    ic_set_rot((Il2CppObject*)g_orbCamTr, q, NULL);
}

// --- silent aim: snap -> fire -> restore, all inside ShootByScript ---''')

# 注册钩子
rep('''    hook_or_log("MainMenuV8::Update",    il2cpp_off2addr(0x0B29E0C), (void*)hk_menu, (void**)&orig_menu);''',
    '''    hook_or_log("MainMenuV8::Update",    il2cpp_off2addr(0x0B29E0C), (void*)hk_menu, (void**)&orig_menu);
    hook_or_log("OrbitCam::LateUpdate",  il2cpp_off2addr(0x1301FF0), (void*)hk_orb_late, (void**)&orig_orb_late);  // R31''')

# 静默：直接转相机 Transform（子弹若取相机朝向，这一步才真正生效）
rep('''                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);''',
    '''                        // R31: also rotate the CAMERA transform for the instant of the shot
                        Quat savedCam{}; bool camSet = false;
                        if (g_orbCamTr && alive(g_orbCamTr) && ic_get_rot && ic_look_rot && ic_set_rot) {
                            Vec3 cpp = ic_get_pos((Il2CppObject*)g_orbCamTr, NULL);
                            if (sane(cpp)) {
                                Vec3 cd{g_aimPoint.x - cpp.x, g_aimPoint.y - cpp.y, g_aimPoint.z - cpp.z};
                                float cl2 = sqrtf(cd.x*cd.x + cd.y*cd.y + cd.z*cd.z);
                                if (cl2 > 2.0f) {
                                    cd.x/=cl2; cd.y/=cl2; cd.z/=cl2;
                                    Vec3 upv{0,1,0};
                                    Quat qc = ic_look_rot(cd, upv, NULL);
                                    savedCam = ic_get_rot((Il2CppObject*)g_orbCamTr, NULL);
                                    ic_set_rot((Il2CppObject*)g_orbCamTr, qc, NULL);
                                    camSet = true;
                                }
                            }
                        }
                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);''')

rep('''                        if (orbSnapped) {   // restore the view immediately (this frame renders silently)''',
    '''                        if (camSet) ic_set_rot((Il2CppObject*)g_orbCamTr, savedCam, NULL);   // R31 restore
                        if (orbSnapped) {   // restore the view immediately (this frame renders silently)''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r31 camera transform aim')

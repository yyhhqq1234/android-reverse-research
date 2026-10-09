# R25：自瞄仰角基准从「轨道枢轴」改成「相机位置」——准星=相机前向，用枢轴算角会把落点顶到敌人头顶上方
#      （相机在枢轴上方约 1~1.5m，20~30m 处对应 3~4°，实测表现就是"准星落在头部正上方"）
#      同时 aimlock 日志补 pv/cam 的 Y 值，便于核对差量。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

rep('''    if (g_aimbot && g_aimValid && orbObj && alive(orbObj)) {
        Vec3 d{g_aimPoint.x - pivot.x, g_aimPoint.y - pivot.y, g_aimPoint.z - pivot.z};''',
    '''    if (g_aimbot && g_aimValid && orbObj && alive(orbObj)) {
        // R25: the crosshair is the CAMERA's forward. Computing yaw/pitch from the orbit pivot
        // (which sits lower/behind the camera) biases the impact upward by the camera-pivot
        // height (~1-1.5 m; ~3-4 deg at 20-30 m) -> "crosshair lands right above the head".
        // Solve the angles so the ray FROM THE CAMERA hits the aim point.
        Vec3 d{g_aimPoint.x - campos.x, g_aimPoint.y - campos.y, g_aimPoint.z - campos.z};''')

rep('''            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''',
    '''            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f pvY=%.1f camY=%.1f dY=%.1f silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (double)g_lastPivotY, (double)g_lastCamY, (double)(g_lastCamY - g_lastPivotY),
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''')

rep('''static int   g_aimBone = 0;   // R23: 1 = head bone, 2 = chest bone''',
    '''static int   g_aimBone = 0;   // R23: 1 = head bone, 2 = chest bone
static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias''')

rep('''                best = d; g_aimPoint = aimPt; g_aimDist = wd; g_aimValid = true; g_aimBone = aimPart;''',
    '''                best = d; g_aimPoint = aimPt; g_aimDist = wd; g_aimValid = true; g_aimBone = aimPart;
                g_lastPivotY = pivot.y; g_lastCamY = campos.y;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r25 camera-based aim angles')

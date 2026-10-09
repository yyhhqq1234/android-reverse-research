# R29【修"垂直不动、只动水平"】：轨道相机的垂直限位字段被我们当成"度"用，实际单位可能是弧度/归一化，
#      于是 nv 被夹到 ±1 度附近 -> 垂直锁死在一个高度，只有水平能动。
#      改法：只有当读到的上下限"像度数"（跨度≥10 且都在 ±90 内）才采用，否则用 ±80；并把读到的原始限位打日志。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

rep('''            float curH = 0, curV = 0, minV = -60, maxV = 60;
            memcpy(&curH, (char*)orbObj + 0xE8, 4);
            memcpy(&curV, (char*)orbObj + 0xEC, 4);
            float rMin = 0, rMax = 0;
            memcpy(&rMax, (char*)orbObj + 0x8C, 4);
            memcpy(&rMin, (char*)orbObj + 0x90, 4);
            if (rMax > rMin && rMax - rMin < 180) { maxV = rMax; minV = rMin; }''',
    '''            float curH = 0, curV = 0, minV = -80, maxV = 80;
            memcpy(&curH, (char*)orbObj + 0xE8, 4);
            memcpy(&curV, (char*)orbObj + 0xEC, 4);
            float rMin = 0, rMax = 0;
            memcpy(&rMax, (char*)orbObj + 0x8C, 4);   // ThirdPersonOrbitCam.maxVerticalAngle
            memcpy(&rMin, (char*)orbObj + 0x90, 4);   // ThirdPersonOrbitCam.minVerticalAngle
            // R29: only trust the game's limits when they actually look like DEGREES.
            // (This build stores them in another unit -> the old clamp collapsed our pitch to ~0 deg,
            //  i.e. "vertical never moves, aim sticks to one height".)
            bool degLike = (rMax > rMin) && (rMax - rMin >= 10.f) && (rMax - rMin < 180.f)
                           && (fabsf(rMax) <= 90.f) && (fabsf(rMin) <= 90.f);
            if (degLike) { maxV = rMax; minV = rMin; }
            g_lastVMin = rMin; g_lastVMax = rMax; g_lastVDegLike = degLike ? 1 : 0;''')

rep('''static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias''',
    '''static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias
static volatile float g_lastVMin = 0.f, g_lastVMax = 0.f;      // R29: raw vertical limits read from the rig
static volatile int   g_lastVDegLike = 0;''')

rep('''            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f pvY=%.1f camY=%.1f dY=%.1f silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (double)g_lastPivotY, (double)g_lastCamY, (double)(g_lastCamY - g_lastPivotY),
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''',
    '''            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f pvY=%.1f camY=%.1f dY=%.1f vlim=(%.2f,%.2f) deg=%d silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (double)g_lastPivotY, (double)g_lastCamY, (double)(g_lastCamY - g_lastPivotY),
                 (double)g_lastVMin, (double)g_lastVMax, g_lastVDegLike,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r29 vertical clamp')

p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

# 1. pivot right after camera pos known (before ent loop). anchor: reg_expire(); + phase
rep('''    reg_expire();
    g_phase = 2;''',
'''    reg_expire();
    g_phase = 2;
    // aim/vis origin: orbit pivot (own eye height), else camera pos
    Vec3 pivot = campos; void* orbObj = NULL;
    orbit_pivot(&pivot, &orbObj);''')

# 2. aim loop: visible-only + record dist
rep('''    g_phase = 3;
    // --- aim target selection (pixel-nearest to centre within FOV circle) ---
    g_aimValid = false;
    if (g_aimbot || g_silent) {
        float cx = sw * 0.5f, cy = sh * 0.5f, best = (float)g_aimFovPx;
        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never aim at self
            Vec3 s = ic_w2s(cam, e.head, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < 0 || s.x > sw || s.y < 0 || s.y > sh) continue;
            float dx = s.x - cx, dy = s.y - cy;
            float d = sqrtf(dx*dx + dy*dy);
            if (d < best) { best = d; g_aimPoint = e.head; g_aimValid = true; }
        }
    }''',
'''    g_phase = 3;
    // --- aim target selection (pixel-nearest VISIBLE hostile within FOV circle) ---
    g_aimValid = false;
    static float g_aimDist = 0.f;
    if (g_aimbot || g_silent) {
        float cx = sw * 0.5f, cy = sh * 0.5f, best = (float)g_aimFovPx;
        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never aim at self
            Vec3 s = ic_w2s(cam, e.head, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < 0 || s.x > sw || s.y < 0 || s.y > sh) continue;
            float dx = s.x - cx, dy = s.y - cy;
            float d = sqrtf(dx*dx + dy*dy);
            if (d < best) {
                float wx = e.head.x - pivot.x, wy = e.head.y - pivot.y, wz = e.head.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);
                if (!los_clear(pivot, e.head)) continue;   // no shooting through walls
                best = d; g_aimPoint = e.head; g_aimDist = wd; g_aimValid = true;
            }
        }
    }
    // aimbot: turn the orbit rig (visible crosshair walk at ANY range, no controller fight)
    if (g_aimbot && g_aimValid && orbObj && alive(orbObj)) {
        Vec3 d{g_aimPoint.x - pivot.x, g_aimPoint.y - pivot.y, g_aimPoint.z - pivot.z};
        float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
        if (len > 1.0f) {
            float yaw = atan2f(d.x, d.z) * 57.29578f;
            float pitch = -asinf(d.y / len) * 57.29578f;
            float sens = (g_aimSmooth > 0 ? (float)g_aimSmooth : 6.0f);
            float curH = 0, curV = 0, minV = -60, maxV = 60;
            memcpy(&curH, (char*)orbObj + 0xE8, 4);
            memcpy(&curV, (char*)orbObj + 0xEC, 4);
            float rMin = 0, rMax = 0;
            memcpy(&rMax, (char*)orbObj + 0x8C, 4);
            memcpy(&rMin, (char*)orbObj + 0x90, 4);
            if (rMax > rMin && rMax - rMin < 180) { maxV = rMax; minV = rMin; }
            float dh = yaw - curH;
            while (dh > 180) dh -= 360; while (dh < -180) dh += 360;
            float nh = curH + dh / sens, nv = curV + (pitch - curV) / sens;
            if (nv < minV) nv = minV; if (nv > maxV) nv = maxV;
            memcpy((char*)orbObj + 0xE8, &nh, 4);
            memcpy((char*)orbObj + 0xEC, &nv, 4);
        }
    }''')

open(p, 'w', encoding='utf-8').write(t)
print('ok part3a')

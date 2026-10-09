# R15f：把标记换成洋红(1,0,1)实心方块 + 洋红横线，用于精确测量叠加层坐标映射
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''    if (g_diag_force) {
        lbox(100.f, 100.f, 300.f, 300.f, WHITE);                  // fixed white box
        lseg(100.f, 500.f, (float)sw - 100.f, 500.f, ORNG);        // fixed orange line
        lseg(100.f, 520.f, (float)sw - 100.f, 520.f, ORNG);
    }'''
new = '''    if (g_diag_force) {
        static const float MAG[3] = {1.f, 0.f, 1.f};              // magenta: absent from the game UI
        for (int yy = 100; yy < 400; yy += 4)                     // filled square (100,100)-(400,400)
            lseg(100.f, (float)yy, 400.f, (float)yy, MAG);
        lseg(200.f, 700.f, 1200.f, 700.f, MAG);                   // single line at y=700
    }'''
assert old in t, 'MISS marker'
t = t.replace(old, new, 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok r15f magenta ruler')

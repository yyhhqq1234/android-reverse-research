# R15d：叠加层自证标记（只用于诊断构建）：无论何时都画一个固定标记，验证 GL 叠加是否真的上屏
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''    // publish under lock (short critical section, no il2cpp inside)'''
new = '''    // R15d: overlay self-test marker (proves the GL overlay reaches the screen)
    if (g_diag_force) {
        lbox(100.f, 100.f, 300.f, 300.f, WHITE);                  // fixed white box
        lseg(100.f, 500.f, (float)sw - 100.f, 500.f, ORNG);        // fixed orange line
        lseg(100.f, 520.f, (float)sw - 100.f, 520.f, ORNG);
    }
    // publish under lock (short critical section, no il2cpp inside)'''
assert old in t
t = t.replace(old, new, 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok r15d marker')

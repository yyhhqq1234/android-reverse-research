import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# 1) remove the continuous camera-rotation write of the aimbot.
#    Writing Transform.set_rotation on the TPS camera every 100 ms fights the camera
#    controller and makes player movement look wildly fast/erratic. Aim correction now
#    happens ONLY at the fire moment (silent aim), which is what "锁头硬跟" needs.
start = t.index('    if (g_aimbot && g_aimValid && ic_set_rot && ic_look_rot) {')
end = t.index('    // --- build draw list ---', start)
removed = t[start:end]
t = t[:start] + t[end:]
io.open(p, 'w', encoding='utf-8').write(t)
print('removed continuous aim-rotation block (%d chars)' % len(removed))
print('remaining set_rot call sites:', t.count('ic_set_rot('))

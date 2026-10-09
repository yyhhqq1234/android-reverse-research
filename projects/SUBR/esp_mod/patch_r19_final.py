# R19 定版收尾：拆掉局内探针（保留 R18 的 makeCurrent/fbo0 与全部算法修复）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
start = t.find('        {   // R17 probe')
end = t.find('        glDisable(GL_DEPTH_TEST);', start)
assert start > 0 and end > start, 'MISS probe block'
t = t[:start] + t[end:]
open(p, 'w', encoding='utf-8').write(t)
print('ok r19 strip probe')

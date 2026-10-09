import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
s = io.open(p, encoding='utf-8').read()
old = "        buf[i] = (c < 128) ? (char)tolower((int)c) : '?';"
new = "        buf[i] = (c < 128) ? (char)((c >= 'A' && c <= 'Z') ? (c + 32) : c) : '?';"
assert old in s, 'MISS tolower line'
io.open(p, 'w', encoding='utf-8').write(s.replace(old, new, 1))
print('tolower replaced')

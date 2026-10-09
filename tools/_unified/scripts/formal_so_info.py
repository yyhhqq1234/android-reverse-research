import zipfile, re
z = zipfile.ZipFile(r'D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk')
names = [i.filename for i in z.infolist() if i.filename.startswith('lib/arm64-v8a/') and i.filename.endswith('.so')]
print('so_count=%d abi=arm64-v8a-only' % len(names))
d = z.read('lib/arm64-v8a/libclient.so')
print('libclient len=%d magic=%r is_elf=%s' % (len(d), d[:4], d[:4] == b'\x7fELF'))
strs = re.findall(rb'[ -~]{6,}', d)
txt = b'\n'.join(strs).decode('ascii', errors='ignore')
open(r'D:\APK-Reverse\projects\DWRG\work_dwrg\formal_libclient_strings.txt', 'w', encoding='utf-8').write(txt)
print('strings=%d saved' % len(strs))
uniq = set([s.decode() for s in strs])
keys = [s for s in uniq if any(k in s.lower() for k in ['login', 'token', 'sign', 'neox', 'dwrg', 'unisdk', 'ssl', 'root', 'hook', 'frida', 'xposed', 'jni', 'python'])]
print('HITS_COUNT=%d' % len(keys))
for k in sorted(keys)[:60]:
    print('HIT:' + k)

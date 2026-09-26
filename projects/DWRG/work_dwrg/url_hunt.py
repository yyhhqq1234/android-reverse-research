import re, pathlib, zipfile
z = zipfile.ZipFile(r'D:\APK-Reverse\projects\DWRG\第五人格（测试版）.apk')
data = z.read('lib/armeabi-v7a/libclient.so').decode('ascii', errors='ignore')
urls = sorted(set(re.findall(r'https?://[A-Za-z0-9._\-/:?=&%]+', data)))
print('URL_COUNT=%d' % len(urls))
for u in urls[:80]:
    print('URL=' + u)
# dex urls via jadx sources grep cache? quick scan Channel/Client
for p in [r'D:\APK-Reverse\projects\DWRG\work_dwrg\jadx_out\sources\com\netease\dwrg\Channel.java',
          r'D:\APK-Reverse\projects\DWRG\work_dwrg\jadx_out\sources\com\netease\dwrg\Client.java']:
    t = pathlib.Path(p).read_text(encoding='utf-8', errors='ignore')
    for u in sorted(set(re.findall(r'https?://[^\s"\']+', t)))[:20]:
        print('DEX_URL=' + u)

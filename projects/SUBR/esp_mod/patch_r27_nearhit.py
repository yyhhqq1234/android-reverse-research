# R27：修"明明贴脸却判背挡"的另一半原因——射线起点嵌在几何里（相机/枪口在自己模型或石头里），
#      命中距离 0.1m 级别的近距命中一律忽略（实机 diag 出现过 hd=0.1 maxD=199.9 → 全敌误判 blocked）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''    float maxD = len - 0.80f;      // margin: the target's own body occupies this band
    if (maxD <= 0.f) return false; // point-blank: nothing can be in between -> reachable
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool got = false;
    try { got = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!got) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd < maxD - 0.05f;'''
new = '''    float maxD = len - 0.80f;      // margin: the target's own body occupies this band
    if (maxD <= 0.f) return false; // point-blank: nothing can be in between -> reachable
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool got = false;
    try { got = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!got) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    // R27: a hit right at the origin means the origin is embedded in geometry (own model / vehicle /
    // rock the camera sits in). Seen in-match as hd=0.1 with maxD=199 -> every enemy falsely "blocked".
    if (hd < 0.90f) return false;
    return hd < maxD - 0.05f;'''
assert old in t, 'MISS ray_blocked2 body'
t = t.replace(old, new, 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok r27 origin-embedded hits')

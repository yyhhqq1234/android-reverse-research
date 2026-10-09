# R24【修崩溃】：R23 用 RaycastHit.m_Collider(+40) 做"目标自身碰撞体"识别 -> 结构布局不对读到野指针，
# 调 get_gameObject(野指针) 直接 native crash（01:57:46 libSUBRESP 0x1f3ec）。
# 改成安全版：只用 +28 的命中距离（久经验证），用"贴近目标 0.8m 内不算遮挡"的边距代替碰撞体身份判定。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

start = t.find('// R23: ray probe that IGNORES hits')
end = t.find('// R21: one ray probe; true = a blocker stops the ray short of the target', start)
assert start > 0 and end > start, 'anchors'
new = '''// R24: safe LOS probe. Only hit.distance is read (+28, long proven). Hits within
// 0.80 m of the aim point are treated as the target's own hull (point-blank own-body
// false "blocked" was the reported bug); anything stopping the ray earlier is a blocker.
static bool ray_blocked2(Vec3 from, Vec3 to, void* targetGO) {
    (void)targetGO;   // kept for call-site compatibility
    if (!ic_ray) return false;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.25f) return false;
    if (len > 900.f) return true;
    d.x /= len; d.y /= len; d.z /= len;
    float maxD = len - 0.80f;      // margin: the target's own body occupies this band
    if (maxD <= 0.f) return false; // point-blank: nothing can be in between -> reachable
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool got = false;
    try { got = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!got) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd < maxD - 0.05f;
}
'''
t = t[:start] + new + t[end:]

# 目标 GO 不再需要（去掉一次多余的引擎调用）
t = t.replace('''                    void* tgo = ic_get_go ? ic_get_go((Il2CppObject*)e.obj, NULL) : NULL;
                    bool blkHead = ray_blocked2(org, e.head, tgo);
                    bool blkBody = ray_blocked2(org, body, tgo);''',
              '''                    bool blkHead = ray_blocked2(org, e.head, NULL);
                    bool blkBody = ray_blocked2(org, body, NULL);''', 1)
t = t.replace('''                void* ego = ic_get_go ? ic_get_go((Il2CppObject*)e.obj, NULL) : NULL;
                if (ray_blocked2(g_muzzleOk ? g_muzzlePos : campos, aimPt, ego)) continue;''',
              '''                if (ray_blocked2(g_muzzleOk ? g_muzzlePos : campos, aimPt, NULL)) continue;''', 1)

open(p, 'w', encoding='utf-8').write(t)
print('ok r24 safe los')

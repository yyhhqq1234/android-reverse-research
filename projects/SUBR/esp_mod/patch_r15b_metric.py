p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()
old = '''                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d bh=(%.1f,%.1f,%.1f) boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f rayhit=%d hd=%.1f maxD=%.1f vis=%d",
                         e.hpk, (double)pitchDeg, (double)(e.head.y - e.root.y), e.anim, (int)bhOk,
                         bh.x, bh.y, bh.z, boxMid, skelX, (skelX > 0 ? boxMid - skelX : 0.f),
                         fs.x, fs.y, hs.x, hs.y, hs.y - fs.y, (double)e.dist,
                         (int)blk, (double)hd, (double)maxD, (int)e.vis);'''
new = '''                    // R15 proof metric: distance(head actually used, bot's OWN head bone) ~ 0 => M1 fixed
                    float headVsBone = -1.f;
                    if (bhOk) {
                        float ex = e.head.x - bh.x, ey = e.head.y - bh.y, ez = e.head.z - bh.z;
                        headVsBone = sqrtf(ex*ex + ey*ey + ez*ez);
                    }
                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d headVsBone=%.2f boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f mz=%d rayhit=%d hd=%.1f maxD=%.1f vis=%d",
                         e.hpk, (double)pitchDeg, (double)(e.head.y - e.root.y), e.anim, (int)bhOk,
                         (double)headVsBone, boxMid, skelX, (skelX > 0 ? boxMid - skelX : 0.f),
                         fs.x, fs.y, hs.x, hs.y, hs.y - fs.y, (double)e.dist,
                         (int)g_muzzleOk, (int)blk, (double)hd, (double)maxD, (int)e.vis);'''
assert old in t, 'MISS diag logi'
t = t.replace(old, new, 1)
open(p, 'w', encoding='utf-8').write(t)
print('ok diag metric')

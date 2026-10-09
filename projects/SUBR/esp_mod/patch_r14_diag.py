# R14 诊断补丁（临时取证用，不改算法）：让局内 compute 在开关全关时也以 1Hz 跑，
# 并输出 锚点/横向偏移/俯仰/射线 四组证据，用于定点 M1(死代码门) / B1(锚点不一致) / L(视线)。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

# 1) 新增 Transform.get_forward 解析（俯仰代理）
rep('''typedef bool            (*fn_enabled)(void*, const MethodInfo*);''',
    '''typedef bool            (*fn_enabled)(void*, const MethodInfo*);
typedef Vec3          (*fn_get_fwd)(void*, const MethodInfo*);''')
rep('''static fn_enabled        ic_beh_en     = NULL;   // Behaviour.get_enabled (Camera extends Behaviour)''',
    '''static fn_enabled        ic_beh_en     = NULL;   // Behaviour.get_enabled (Camera extends Behaviour)
static fn_get_fwd        ic_get_fwd    = NULL;   // Transform.get_forward (pitch proxy for diagnostics)''')
rep('''    ic_beh_en    = (fn_enabled)       il2cpp_off2addr(0x0CB1BE8); // Behaviour.get_enabled''',
    '''    ic_beh_en    = (fn_enabled)       il2cpp_off2addr(0x0CB1BE8); // Behaviour.get_enabled
    ic_get_fwd   = (fn_get_fwd)       il2cpp_off2addr(0x1763480); // Transform.get_forward''')

# 2) 诊断开关 + 只诊断不绘制标志
rep('''static volatile int  g_maxDist  = 300;   // metres''',
    '''static volatile int  g_maxDist  = 300;   // metres
static volatile int  g_diag     = 1;     // R14: run compute in-match even with all toggles off (evidence)
static volatile int  g_diag_only = 0;    // set by driver(): suppress publishing so nothing renders''')

# 3) driver：允许纯诊断路径 + 分档节流
rep('''    if (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot) return;  // zero cost when off''',
    '''    if (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && !g_diag) return;  // zero cost when off (R14: diag keeps compute alive)
    g_diag_only = (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && g_diag) ? 1 : 0;''')
rep('''    if (tl - lastBySrc[li] < 33) return;  // 30 Hz: 10 Hz lags behind fast camera turns''',
    '''    int thr = g_diag_only ? 1000 : 33;    // R14: 1 Hz when diagnostics-only, else 30 Hz
    if (tl - lastBySrc[li] < thr) return; // 30 Hz: 10 Hz lags behind fast camera turns''')

# 4) 诊断模式不发布绘制（避免在屏幕上瞎画）
rep('''    if (pthread_mutex_trylock(&g_drawLock) == 0) {
        g_drawCount = ldc > 400 ? 400 : ldc;''',
    '''    if (pthread_mutex_trylock(&g_drawLock) == 0) {
        g_drawCount = g_diag_only ? 0 : (ldc > 400 ? 400 : ldc);   // R14: diag-only never publishes''')

# 5) 证据块：锚点/偏移/俯仰/射线（插在 per-hpk 采样之后）
rep('''                    break;
                }
            }
        }
    }

    g_phase = 3;''',
    '''                    break;
                }
            }
            // ==== R14 evidence: anchor mismatch / size vs pitch / LOS ray ====
            {
                float pitchDeg = 0.f;
                if (ic_get_fwd && camTr) {
                    Vec3 fw = ic_get_fwd(camTr, NULL);
                    if (fw.x == fw.x && fw.y == fw.y && fw.z == fw.z)
                        pitchDeg = -asinf(fw.y) * 57.29578f;
                }
                for (int i = 0; i < nEnt; i++) {
                    Ent& e = ents[i];
                    if (e.kind != K_HOSTILE || e.dead) continue;
                    // skeleton anchor: (head bone + hips bone)/2 in screen space
                    float skelX = -1.f;
                    Vec3 bh{0,0,0}; bool bhOk = false;
                    if (e.anim && ic_get_bone) {
                        Il2CppObject* hb = ic_get_bone(e.anim, 10, NULL);
                        if (!hb) hb = ic_get_bone(e.anim, 11, NULL);
                        if (hb && alive(hb)) {
                            Il2CppObject* hbt = ic_get_xform(hb, NULL);
                            if (hbt && alive(hbt)) { Vec3 w = ic_get_pos(hbt, NULL); if (sane(w)) { bh = w; bhOk = true; } }
                        }
                        if (bhOk) {
                            Il2CppObject* pb = ic_get_bone(e.anim, 0, NULL);   // Hips
                            if (pb && alive(pb)) {
                                Il2CppObject* pbt = ic_get_xform(pb, NULL);
                                if (pbt && alive(pbt)) {
                                    Vec3 pw = ic_get_pos(pbt, NULL);
                                    if (sane(pw)) {
                                        Vec3 psc = ic_w2s(cam, pw, 2, NULL);
                                        Vec3 hsc = ic_w2s(cam, bh, 2, NULL);
                                        if (psc.z >= 0 && hsc.z >= 0) skelX = (psc.x + hsc.x) * 0.5f;
                                    }
                                }
                            }
                        }
                    }
                    Vec3 fs = ic_w2s(cam, e.root, 2, NULL);
                    Vec3 hs = ic_w2s(cam, e.head, 2, NULL);
                    float boxMid = (hs.x + fs.x) * 0.5f;
                    // LOS probe with the same call the code uses (pivot -> head)
                    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
                    bool blk = false; float hd = -1.f, maxD = -1.f;
                    Vec3 dd{e.head.x - pivot.x, e.head.y - pivot.y, e.head.z - pivot.z};
                    float L = sqrtf(dd.x*dd.x + dd.y*dd.y + dd.z*dd.z);
                    if (ic_ray && L > 1.5f) {
                        dd.x/=L; dd.y/=L; dd.z/=L;
                        Vec3 o{pivot.x+dd.x*1.2f, pivot.y+dd.y*1.2f, pivot.z+dd.z*1.2f};
                        maxD = L - 1.2f;
                        try { blk = ic_ray(o, dd, hit, maxD, NULL); } catch (...) { blk = false; }
                        if (blk) memcpy(&hd, hit + 28, 4);
                    }
                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d bh=(%.1f,%.1f,%.1f) boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f rayhit=%d hd=%.1f maxD=%.1f vis=%d",
                         e.hpk, (double)pitchDeg, (double)(e.head.y - e.root.y), e.anim, (int)bhOk,
                         bh.x, bh.y, bh.z, boxMid, skelX, (skelX > 0 ? boxMid - skelX : 0.f),
                         fs.x, fs.y, hs.x, hs.y, hs.y - fs.y, (double)e.dist,
                         (int)blk, (double)hd, (double)maxD, (int)e.vis);
                    break;   // first alive hostile each 5 s
                }
            }
        }
    }

    g_phase = 3;''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r14 diag')

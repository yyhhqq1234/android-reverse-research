"""Round 5: W2S is still rejecting everything (ent=23, w2s=0). Add raw diagnostics
+ a second candidate camera (Camera.get_current) so one test session pinpoints it."""
import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# 1) resolve Camera.get_current too
old = 'static fn_get_main       ic_cam_main   = NULL;'
assert old in t
t = t.replace(old, old + '\nstatic fn_get_main       ic_cam_cur    = NULL;   // Camera.get_current', 1)

old = '    ic_cam_main  = (fn_get_main)      il2cpp_off2addr(0x0CB47EC); // Camera.get_main'
assert old in t
t = t.replace(old, old + '\n    ic_cam_cur   = (fn_get_main)      il2cpp_off2addr(0x0CB4820); // Camera.get_current', 1)

# 2) diagnostics inside compute_frame, right before the aim selection block
anchor = '    // --- aim target selection (pixel-nearest to centre within FOV circle) ---'
assert anchor in t
dbg = '''    // ---- raw diagnostics (every 5 s): world coords + W2S from both cameras ----
    {
        static long long lastdbg = 0;
        long long tn = now_ms();
        if (nEnt > 0 && tn - lastdbg > 5000) {
            lastdbg = tn;
            Il2CppObject* cam2 = ic_cam_cur ? ic_cam_cur(NULL) : NULL;
            Il2CppObject* tr2  = cam2 ? ic_get_xform(cam2, NULL) : NULL;
            Vec3 cp2 = tr2 ? ic_get_pos(tr2, NULL) : Vec3{0,0,0};
            Ent& e0 = ents[0];
            Vec3 s1 = ic_w2s(cam, e0.root, 0, NULL);
            Vec3 s2 = cam2 ? ic_w2s(cam2, e0.root, 0, NULL) : Vec3{0,0,0};
            LOGI("dbg campos=(%.1f,%.1f,%.1f) curpos=(%.1f,%.1f,%.1f) root0=(%.1f,%.1f,%.1f) "
                 "w2s_main=(%.0f,%.0f,%.0f) w2s_cur=(%.0f,%.0f,%.0f) sw=%d sh=%d ent=%d",
                 campos.x, campos.y, campos.z, cp2.x, cp2.y, cp2.z,
                 e0.root.x, e0.root.y, e0.root.z, s1.x, s1.y, s1.z, s2.x, s2.y, s2.z,
                 g_sw, g_sh, nEnt);
        }
    }

'''
t = t.replace(anchor, dbg + anchor, 1)

io.open(p, 'w', encoding='utf-8').write(t)
print('round5 diagnostics added')

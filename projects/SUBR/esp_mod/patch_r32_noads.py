# R32：去广告（IL2CPP 层 hook 游戏自己的 adManager）
#   ShowInterstitial / ShowCustomInterstitial / StartAd(type=0) -> 不播广告，直接触发 InterstitialClosed
#   ShowRewerdVideo / StartAd(type!=0)                        -> 不播广告，直接触发 CompleteMethod(true,"")
#   ShowBanner                                                -> 直接返回（不出横幅）
#   其余（InterstitialClosed/RewardAdClosed/CompleteMethod/Req*/BannerLoaded/Started）只记录并原样执行
#   菜单新增 110_Toggle_No Ads（默认开）可总开关
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

# 开关 + il2cpp_string_new
rep('''static volatile int  g_aimPitchTrim = 0;''',
    '''static volatile int  g_aimPitchTrim = 0;
static volatile int  g_noAds = 1;          // R32: no-ads master switch (menu 110)''')
rep('''static const char*   (*p_class_get_name)(void*) = NULL;''',
    '''static const char*   (*p_class_get_name)(void*) = NULL;
static Il2CppObject* (*p_string_new)(const char*) = NULL;   // R32: il2cpp_string_new''')
rep('''    p_class_get_name = (decltype(p_class_get_name))dlsym(h, "il2cpp_class_get_name");''',
    '''    p_class_get_name = (decltype(p_class_get_name))dlsym(h, "il2cpp_class_get_name");
    p_string_new = (decltype(p_string_new))dlsym(h, "il2cpp_string_new");''')

# 菜单项
rep('''        "109_SeekBar_Aim Pitch Trim_-20_20",''',
    '''        "109_SeekBar_Aim Pitch Trim_-20_20",
        "110_Toggle_No Ads",''')
rep('''    else if (strstr(n, "Aim Pitch Trim")) g_aimPitchTrim = v;   // R28''',
    '''    else if (strstr(n, "Aim Pitch Trim")) g_aimPitchTrim = v;   // R28
    else if (strstr(n, "No Ads")) g_noAds = v;                  // R32''')

# 去广告实现（放在 bootstrap 之前的合适位置：紧跟 silent aim 段之后）
rep('''// ---------------- GLES replay (render thread) ----------------''',
    '''// ---------------- R32: ad bypass (game-side adManager) ----------------
// The pack ships AppLovin MAX + AdMob + IronSource + UnityAds; all entry points the GAME uses
// funnel through its own adManager class, so hooking that class removes every ad without
// touching the SDKs (no SDK callbacks can leak through).
static void (*orig_ad_iclose)(void*, const MethodInfo*) = NULL;                 // InterstitialClosed
static void (*orig_ad_rclose)(void*, const MethodInfo*) = NULL;                 // RewardAdClosed
static void (*orig_ad_complete)(void*, bool, Il2CppObject*, const MethodInfo*) = NULL; // CompleteMethod
static void (*orig_ad_showInter)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_showCust)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_showRew)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_start)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_showBanner)(void*, const MethodInfo*) = NULL;
static volatile int g_adWant = 1;   // 1 = interstitial path, 2 = rewarded path

static void ad_trace(const char* what, int type) {
    static long long last = 0;
    long long tn = now_ms();
    if (tn - last > 300) { last = tn; LOGI("AD: %s type=%d want=%d noAds=%d", what, type, g_adWant, g_noAds); }
}
static void ad_grant(void* thiz) {   // mimic "rewarded ad watched successfully"
    if (!thiz || !alive(thiz)) return;
    if (orig_ad_complete && p_string_new) {
        try {
            Il2CppObject* s = p_string_new("");
            orig_ad_complete(thiz, true, s, NULL);
        } catch (...) {}
    }
}
static void hk_ad_iclose(void* t, const MethodInfo* m) { ad_trace("InterstitialClosed", -1); if (orig_ad_iclose) orig_ad_iclose(t, m); }
static void hk_ad_rclose(void* t, const MethodInfo* m) { ad_trace("RewardAdClosed", -1); if (orig_ad_rclose) orig_ad_rclose(t, m); }
static void hk_ad_complete(void* t, bool ok, Il2CppObject* adv, const MethodInfo* m) {
    ad_trace("CompleteMethod", ok ? 1 : 0);
    if (orig_ad_complete) orig_ad_complete(t, ok, adv, m);
}
static void hk_ad_showInter(void* t, const MethodInfo* m) {
    ad_trace("ShowInterstitial", -1);
    if (g_noAds) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); return; }
    if (orig_ad_showInter) orig_ad_showInter(t, m);
}
static void hk_ad_showCust(void* t, int type, const MethodInfo* m) {
    ad_trace("ShowCustomInterstitial", type);
    if (g_noAds) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); return; }
    if (orig_ad_showCust) orig_ad_showCust(t, type, m);
}
static void hk_ad_showRew(void* t, int type, const MethodInfo* m) {
    ad_trace("ShowRewerdVideo", type);
    if (g_noAds) { ad_grant(t); return; }
    if (orig_ad_showRew) orig_ad_showRew(t, type, m);
}
static void hk_ad_start(void* t, int type, const MethodInfo* m) {
    ad_trace("StartAd", type);
    if (g_noAds) {
        if (type <= 0) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); }
        else           { ad_grant(t); }
        return;
    }
    if (orig_ad_start) orig_ad_start(t, type, m);
}
static void hk_ad_banner(void* t, const MethodInfo* m) {
    ad_trace("ShowBanner", -1);
    if (g_noAds) return;                       // no banner
    if (orig_ad_showBanner) orig_ad_showBanner(t, m);
}

// ---------------- GLES replay (render thread) ----------------''')

# bootstrap 安装
rep('''    hook_or_log("OrbitCam::LateUpdate",  il2cpp_off2addr(0x1301FF0), (void*)hk_orb_late, (void**)&orig_orb_late);  // R31''',
    '''    hook_or_log("OrbitCam::LateUpdate",  il2cpp_off2addr(0x1301FF0), (void*)hk_orb_late, (void**)&orig_orb_late);  // R31
    // R32: ads
    hook_or_log("ad::InterstitialClosed", il2cpp_off2addr(0x0B38D7C), (void*)hk_ad_iclose, (void**)&orig_ad_iclose);
    hook_or_log("ad::RewardAdClosed",     il2cpp_off2addr(0x0B39308), (void*)hk_ad_rclose, (void**)&orig_ad_rclose);
    hook_or_log("ad::CompleteMethod",     il2cpp_off2addr(0x0B3895C), (void*)hk_ad_complete, (void**)&orig_ad_complete);
    hook_or_log("ad::ShowInterstitial",   il2cpp_off2addr(0x0B39020), (void*)hk_ad_showInter, (void**)&orig_ad_showInter);
    hook_or_log("ad::ShowCustomInter",    il2cpp_off2addr(0x0B390C8), (void*)hk_ad_showCust, (void**)&orig_ad_showCust);
    hook_or_log("ad::ShowRewerdVideo",    il2cpp_off2addr(0x0B38F34), (void*)hk_ad_showRew, (void**)&orig_ad_showRew);
    hook_or_log("ad::StartAd",            il2cpp_off2addr(0x0B38E44), (void*)hk_ad_start, (void**)&orig_ad_start);
    hook_or_log("ad::ShowBanner",         il2cpp_off2addr(0x0B38C9C), (void*)hk_ad_banner, (void**)&orig_ad_showBanner);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r32 no-ads')

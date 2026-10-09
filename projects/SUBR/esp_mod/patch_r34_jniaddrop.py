# R34：在 Unity 的 JNI 桥底层拦广告——hook AndroidJavaObject._Call / _CallStatic，
#      凡是调用 Java 侧"展示广告"方法（含 interstitial / reward / banner / showAd）一律丢弃不转发。
#      同时把这些调用名打日志（低码率），用于确认广告到底从哪条路走。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

rep('''static void hk_ad_x_reqUnlock(void* t, Il2CppObject* id, const MethodInfo* m) { ad_trace("ReqUnlockAd", -1); if (orig_ad_x_reqUnlock) orig_ad_x_reqUnlock(t, id, m); }''',
    '''static void hk_ad_x_reqUnlock(void* t, Il2CppObject* id, const MethodInfo* m) { ad_trace("ReqUnlockAd", -1); if (orig_ad_x_reqUnlock) orig_ad_x_reqUnlock(t, id, m); }

// R34: bottom of Unity's JNI bridge — drop Java-side "show the ad" calls entirely.
// Il2CppString layout: +0x10 = int length, +0x14 = UTF-16 chars.
static void* (*orig_ajo_call)(void*, Il2CppObject*, Il2CppObject*, const MethodInfo*) = NULL;
static void* (*orig_ajo_callstatic)(void*, Il2CppObject*, Il2CppObject*, const MethodInfo*) = NULL;

static bool jni_name_has(Il2CppObject* s, const char* needle) {
    if (!s) return false;
    int len = 0;
    memcpy(&len, (char*)s + 0x10, 4);
    if (len <= 0 || len > 200) return false;
    char buf[256];
    int n = (len < 200 ? len : 200);
    for (int i = 0; i < n; i++) {
        uint16_t c = 0;
        memcpy(&c, (char*)s + 0x14 + i * 2, 2);
        buf[i] = (c < 128) ? (char)tolower((int)c) : '?';
    }
    buf[n] = 0;
    return strstr(buf, needle) != NULL;
}
// ad-show method names we refuse to forward (lowercased substrings)
static bool jni_is_ad_show(Il2CppObject* name) {
    static const char* bad[] = {"showinterstitial", "interstitial_show", "showad", "show_ad",
                                "showrewarded", "showreward", "rewardedad_show", "showbanner",
                                "show_ads", "showads"};
    for (unsigned i = 0; i < sizeof(bad) / sizeof(bad[0]); i++)
        if (jni_name_has(name, bad[i])) return true;
    // generic show(): only when the surrounding name hints at ads
    if (jni_name_has(name, "show") && (jni_name_has(name, "ad") || jni_name_has(name, "max")))
        return true;
    return false;
}
static void* hk_ajo_call(void* self, Il2CppObject* name, Il2CppObject* args, const MethodInfo* m) {
    if (g_noAds && jni_is_ad_show(name)) {
        if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
            ad_trace("JNI_Call_DROPPED", -1);
        return NULL;
    }
    if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
        ad_trace("JNI_Call", -1);
    return orig_ajo_call ? orig_ajo_call(self, name, args, m) : NULL;
}
static void* hk_ajo_callstatic(void* self, Il2CppObject* name, Il2CppObject* args, const MethodInfo* m) {
    if (g_noAds && jni_is_ad_show(name)) {
        if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
            ad_trace("JNI_CallStatic_DROPPED", -1);
        return NULL;
    }
    if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
        ad_trace("JNI_CallStatic", -1);
    return orig_ajo_callstatic ? orig_ajo_callstatic(self, name, args, m) : NULL;
}''')

rep('''    hook_or_log("ad::ReqUnlockAd",        il2cpp_off2addr(0x0B38DA4), (void*)hk_ad_x_reqUnlock, (void**)&orig_ad_x_reqUnlock);''',
    '''    hook_or_log("ad::ReqUnlockAd",        il2cpp_off2addr(0x0B38DA4), (void*)hk_ad_x_reqUnlock, (void**)&orig_ad_x_reqUnlock);
    hook_or_log("ajo::_Call",             il2cpp_off2addr(0x19EEE1C), (void*)hk_ajo_call, (void**)&orig_ajo_call);
    hook_or_log("ajo::_CallStatic",       il2cpp_off2addr(0x19EEF30), (void*)hk_ajo_callstatic, (void**)&orig_ajo_callstatic);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r34 jni ad drop')

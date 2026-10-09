# R33：adManager 全类追踪（其余方法也挂 passthrough+日志），用于定位广告究竟走哪条路径
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:90].replace('\n', '\\n'))
    t = t.replace(old, new, n)

rep('''static void hk_ad_banner(void* t, const MethodInfo* m) {
    ad_trace("ShowBanner", -1);
    if (g_noAds) return;                       // no banner
    if (orig_ad_showBanner) orig_ad_showBanner(t, m);
}''',
    '''static void hk_ad_banner(void* t, const MethodInfo* m) {
    ad_trace("ShowBanner", -1);
    if (g_noAds) return;                       // no banner
    if (orig_ad_showBanner) orig_ad_showBanner(t, m);
}
// R33: trace the rest of the class so we can see which path any ad actually takes
static void (*orig_ad_x_awake)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_start)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_upd)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqRew)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqInter)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqUnlock)(void*, Il2CppObject*, const MethodInfo*) = NULL;
static void (*orig_ad_x_started)(void*, const MethodInfo*) = NULL;
static void hk_ad_x_awake(void* t, const MethodInfo* m)   { ad_trace("Awake", -1);   if (orig_ad_x_awake) orig_ad_x_awake(t, m); }
static void hk_ad_x_start(void* t, const MethodInfo* m)   { ad_trace("Start", -1);   if (orig_ad_x_start) orig_ad_x_start(t, m); }
static void hk_ad_x_started(void* t, const MethodInfo* m) { ad_trace("Started", -1); if (orig_ad_x_started) orig_ad_x_started(t, m); }
static void hk_ad_x_upd(void* t, const MethodInfo* m)     { if (orig_ad_x_upd) orig_ad_x_upd(t, m); }
static void hk_ad_x_reqRew(void* t, const MethodInfo* m)  { ad_trace("ReqReward", -1); if (orig_ad_x_reqRew) orig_ad_x_reqRew(t, m); }
static void hk_ad_x_reqInter(void* t, const MethodInfo* m){ ad_trace("ReqInter", -1);  if (orig_ad_x_reqInter) orig_ad_x_reqInter(t, m); }
static void hk_ad_x_reqUnlock(void* t, Il2CppObject* id, const MethodInfo* m) { ad_trace("ReqUnlockAd", -1); if (orig_ad_x_reqUnlock) orig_ad_x_reqUnlock(t, id, m); }''')

rep('''    hook_or_log("ad::ShowBanner",         il2cpp_off2addr(0x0B38C9C), (void*)hk_ad_banner, (void**)&orig_ad_showBanner);''',
    '''    hook_or_log("ad::ShowBanner",         il2cpp_off2addr(0x0B38C9C), (void*)hk_ad_banner, (void**)&orig_ad_showBanner);
    hook_or_log("ad::Awake",              il2cpp_off2addr(0x0B3878C), (void*)hk_ad_x_awake, (void**)&orig_ad_x_awake);
    hook_or_log("ad::Start",              il2cpp_off2addr(0x0B387DC), (void*)hk_ad_x_start, (void**)&orig_ad_x_start);
    hook_or_log("ad::Started",            il2cpp_off2addr(0x0B38AD4), (void*)hk_ad_x_started, (void**)&orig_ad_x_started);
    hook_or_log("ad::Update",             il2cpp_off2addr(0x0B388E8), (void*)hk_ad_x_upd, (void**)&orig_ad_x_upd);
    hook_or_log("ad::ReqReward",          il2cpp_off2addr(0x0B391B4), (void*)hk_ad_x_reqRew, (void**)&orig_ad_x_reqRew);
    hook_or_log("ad::ReqInter",           il2cpp_off2addr(0x0B3925C), (void*)hk_ad_x_reqInter, (void**)&orig_ad_x_reqInter);
    hook_or_log("ad::ReqUnlockAd",        il2cpp_off2addr(0x0B38DA4), (void*)hk_ad_x_reqUnlock, (void**)&orig_ad_x_reqUnlock);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r33 ad trace')

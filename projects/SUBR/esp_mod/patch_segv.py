p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:70]
    t = t.replace(old, new, 1)

rep('#include <android/log.h>',
    '#include <android/log.h>\n'
    '#include <signal.h>\n'
    '#include <setjmp.h>\n'
    '// Last-resort SEGV guard: raw pointer validation can itself touch an\n'
    '// unmapped page. Catch the fault, skip the tick, keep the game alive.\n'
    'static sigjmp_buf g_jb; static volatile sig_atomic_t g_armed = 0;\n'
    'static volatile unsigned g_segv = 0;\n'
    'static void sev_handler(int, siginfo_t*, void*) {\n'
    '    if (g_armed) siglongjmp(g_jb, 1);\n'
    '}')

rep('''    g_owner = me; g_since = tl;
    tl_hook = 1;
    try { compute_frame(); } catch (...) { g_compute_rc = 6; }
    tl_hook = 0;
    g_owner = 0;''',
    '''    g_owner = me; g_since = tl;
    tl_hook = 1;
    g_armed = 1;
    if (sigsetjmp(g_jb, 1)) {
        g_segv++; g_compute_rc = 7;
    } else {
        try { compute_frame(); } catch (...) { g_compute_rc = 6; }
    }
    g_armed = 0;
    tl_hook = 0;
    g_owner = 0;''')

anchor = '    p_domain_get = (decltype(p_domain_get))dlsym(h, "il2cpp_domain_get");'
assert anchor in t, 'MISS anchor'
t = t.replace(anchor,
    '    struct sigaction sa; memset(&sa, 0, sizeof(sa));\n'
    '    sa.sa_sigaction = sev_handler;\n'
    '    sa.sa_flags = SA_SIGINFO | SA_RESTART;\n'
    '    sigaction(SIGSEGV, &sa, NULL);\n' + anchor, 1)

open(p, 'w', encoding='utf-8').write(t)
print('ok segv-guard')

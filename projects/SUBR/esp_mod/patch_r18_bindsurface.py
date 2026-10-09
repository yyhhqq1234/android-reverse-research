# R18【关键】：把我们的绘制显式绑到"正在被 swap 的那个 surface + framebuffer 0"。
# 证据：局内 fbo=0/vp=1440x810/glClear 回读=洋红，但屏幕上没有洋红 -> 我们的命令进的是一个
# 不被呈现的缓冲（局内 Unity 走离屏 RT/不同 surface，菜单期恰好是窗口 surface 所以看得见）。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

rep('''typedef EGLBoolean (*qs_t)(EGLDisplay, EGLSurface, EGLint, EGLint*);
static qs_t p_qsurf = NULL;   // eglQuerySurface: real surface size (R15e)''',
    '''typedef EGLBoolean (*qs_t)(EGLDisplay, EGLSurface, EGLint, EGLint*);
static qs_t p_qsurf = NULL;   // eglQuerySurface: real surface size (R15e)
typedef EGLBoolean (*mkcur_t)(EGLDisplay, EGLSurface, EGLSurface, EGLContext);
typedef EGLContext (*curctx_t)(void);
static mkcur_t p_mkcur = NULL;
static curctx_t p_curctx = NULL;''')

rep('''    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");''',
    '''    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");
    if (hegl) {
        p_mkcur  = (decltype(p_mkcur))dlsym(hegl, "eglMakeCurrent");
        p_curctx = (decltype(p_curctx))dlsym(hegl, "eglGetCurrentContext");
    }''')

rep('''        GLState st;
        gl_save(st);
        {   // R17 probe''',
    '''        // R18: guarantee our draw targets the surface being presented, on the default framebuffer
        if (p_mkcur && p_curctx) {
            EGLContext ctx = p_curctx();
            if (ctx) {
                static int mkLogged = 0;
                EGLBoolean okc = p_mkcur(d, s, s, ctx);
                if (!mkLogged) { mkLogged = 1; LOGI("makeCurrent(d,s,s,ctx) -> %d", (int)okc); }
            }
        }
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
        GLState st;
        gl_save(st);
        {   // R17 probe''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r18 bind surface+fbo0')

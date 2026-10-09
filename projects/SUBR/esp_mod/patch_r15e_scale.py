# R15e【根因级修复】叠加层坐标系：Screen 报告 1440x810（渲染目标），真实 EGL surface 1920x1080。
# 旧代码 viewport=(0,0,1440,810) 且坐标不缩放 -> 叠加层只覆盖左下 75% 且整体缩到 75%
#   -> 标记盒(100,100,300x300) 实测出现在屏幕 (100,680)-(400,980)，1:1 映射，证实该结论。
# 修法：eglQuerySurface 取真实 surface 尺寸 -> viewport 全屏 + 着色器按 k=(surfW/sw, surfH/sh) 缩放坐标。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

# 1) 顶点着色器加缩放 uniform k（r = 真实 surface 尺寸）
rep('''static GLuint g_prog = 0, g_vb = 0; static GLint g_uRes = 0, g_uCol = 0;
static const char* VS =
    "attribute vec2 p;uniform vec2 r;void main(){vec2 c=p/r*2.0-1.0;gl_Position=vec4(c.x,c.y,0.,1.);}";''',
    '''static GLuint g_prog = 0, g_vb = 0; static GLint g_uRes = 0, g_uCol = 0, g_uK = -1;
static int g_surfW = 0, g_surfH = 0;   // real EGL surface size (Screen.width may be a render target)
static const char* VS =
    "attribute vec2 p;uniform vec2 r;uniform vec2 k;void main(){vec2 c=(p*k)/r*2.0-1.0;gl_Position=vec4(c.x,c.y,0.,1.);}";''')

rep('''    g_uRes = glGetUniformLocation(g_prog, "r");
    g_uCol = glGetUniformLocation(g_prog, "c");''',
    '''    g_uRes = glGetUniformLocation(g_prog, "r");
    g_uCol = glGetUniformLocation(g_prog, "c");
    g_uK   = glGetUniformLocation(g_prog, "k");''')

# 2) replay_draw：r = 真实 surface，k = surface/Screen
rep('''    glUseProgram(g_prog);
    glUniform2f(g_uRes, (float)g_sw, (float)g_sh);''',
    '''    glUseProgram(g_prog);
    int rw = g_surfW > 0 ? g_surfW : g_sw, rh = g_surfH > 0 ? g_surfH : g_sh;
    glUniform2f(g_uRes, (float)rw, (float)rh);
    if (g_uK >= 0) glUniform2f(g_uK,
        (float)rw / (float)(g_sw > 0 ? g_sw : rw),
        (float)rh / (float)(g_sh > 0 ? g_sh : rh));''')

# 3) eglQuerySurface 解析
rep('''typedef EGLBoolean (*swap_t)(EGLDisplay, EGLSurface);
static swap_t orig_swap = NULL;''',
    '''typedef EGLBoolean (*swap_t)(EGLDisplay, EGLSurface);
static swap_t orig_swap = NULL;
typedef EGLBoolean (*qs_t)(EGLDisplay, EGLSurface, EGLint, EGLint*);
static qs_t p_qsurf = NULL;   // eglQuerySurface: real surface size (R15e)''')

rep('''    void* hegl = dlopen("libEGL.so", RTLD_NOW);
    void* sw = hegl ? dlsym(hegl, "eglSwapBuffers") : NULL;''',
    '''    void* hegl = dlopen("libEGL.so", RTLD_NOW);
    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");
    void* sw = hegl ? dlsym(hegl, "eglSwapBuffers") : NULL;''')

# 4) hk_swap：取真实 surface 尺寸 + viewport 全屏
rep('''    if (g_drawCount > 0 && g_sw > 0 && g_sh > 0) {
        GLState st;
        gl_save(st);''',
    '''    if (g_drawCount > 0 && g_sw > 0 && g_sh > 0) {
        if (p_qsurf) {   // R15e: the real surface is not always Screen.width x Screen.height
            EGLint w = 0, h = 0;
            if (p_qsurf(d, s, EGL_WIDTH, &w) == EGL_TRUE && p_qsurf(d, s, EGL_HEIGHT, &h) == EGL_TRUE && w > 0 && h > 0) {
                g_surfW = (int)w; g_surfH = (int)h;
            }
        }
        GLState st;
        gl_save(st);''')

rep('''        glViewport(0, 0, g_sw, g_sh);
        if (!g_prog) gl_init();''',
    '''        glViewport(0, 0, (g_surfW > 0 ? g_surfW : g_sw), (g_surfH > 0 ? g_surfH : g_sh));
        if (!g_prog) gl_init();''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15e surface scale')

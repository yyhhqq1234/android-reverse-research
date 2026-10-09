# R15i：① glClear 探针（判定"我们的 GL 命令是否真的进到被呈现的缓冲"）
#        ② 自建 VAO（GLES3 下属性状态属于 VAO，借用引擎 VAO 是叠加层画不出来的常见原因）
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new):
    global t
    assert old in t, 'MISS: ' + old[:90].replace('\n', '\\n')
    t = t.replace(old, new, 1)

# 1) 自己的 VAO
rep('''static GLuint g_prog = 0, g_vb = 0; static GLint g_uRes = 0, g_uCol = 0, g_uK = -1;''',
    '''static GLuint g_prog = 0, g_vb = 0, g_vao = 0; static GLint g_uRes = 0, g_uCol = 0, g_uK = -1;
typedef void (*fn_glGenVertexArrays)(GLsizei, GLuint*);
typedef void (*fn_glBindVertexArray)(GLuint);
static fn_glGenVertexArrays p_genVAO = NULL;
static fn_glBindVertexArray p_bindVAO = NULL;''')

rep('''    glGenBuffers(1, &g_vb);
    LOGI("gl inited prog=%u ures=%d ucol=%d", g_prog, g_uRes, g_uCol);''',
    '''    glGenBuffers(1, &g_vb);
    {
        void* g3 = dlopen("libGLESv2.so", RTLD_NOW);
        if (g3) {
            p_genVAO  = (fn_glGenVertexArrays)dlsym(g3, "glGenVertexArrays");
            p_bindVAO = (fn_glBindVertexArray)dlsym(g3, "glBindVertexArray");
        }
        if (p_genVAO && p_bindVAO) { p_genVAO(1, &g_vao); }
    }
    LOGI("gl inited prog=%u ures=%d ucol=%d uK=%d vao=%u genVAO=%p bindVAO=%p",
         g_prog, g_uRes, g_uCol, (int)g_uK, g_vao, (void*)p_genVAO, (void*)p_bindVAO);''')

# 2) 绘制时绑定自己的 VAO（在 glUseProgram 之后）
rep('''    glUseProgram(g_prog);
    int rw = g_surfW > 0 ? g_surfW : g_sw, rh = g_surfH > 0 ? g_surfH : g_sh;''',
    '''    glUseProgram(g_prog);
    if (p_bindVAO) p_bindVAO(g_vao);   // R15i: attributes live in the VAO under GLES3
    int rw = g_surfW > 0 ? g_surfW : g_sw, rh = g_surfH > 0 ? g_surfH : g_sh;''')

# 3) glClear 探针（放在 gl_save 之后、状态设置附近）
rep('''        GLState st;
        gl_save(st);
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);''',
    '''        GLState st;
        gl_save(st);
        {   // R15i probe: does ANY of our GL reach the presented buffer?
            glEnable(GL_SCISSOR_TEST);
            glScissor(600, 600, 200, 200);
            glClearColor(1.f, 0.f, 1.f, 1.f);
            glClear(GL_COLOR_BUFFER_BIT);
            GLubyte pr[4] = {0,0,0,0};
            glReadPixels(650, 650, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, pr);
            static long long lastCP = 0;
            if (now_ms() - lastCP > 3000) { lastCP = now_ms(); LOGI("clearprobe (650,650)=(%d,%d,%d,%d)", pr[0],pr[1],pr[2],pr[3]); }
            glClearColor(0.f, 0.f, 0.f, 0.f);
        }
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r15i vao+clearprobe')

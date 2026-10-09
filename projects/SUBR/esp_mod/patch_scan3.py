"""Part 3: fix declaration order / duplicates introduced by patch_scan*.py"""
import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# 1) h_il2cpp not yet declared where find_of_type_method uses it -> use a local dlopen,
#    and drop the duplicate p_find_of_type declaration (line ~218 version stays).
t = t.replace(
    '    if (!getm) getm = (decltype(getm))dlsym(h_il2cpp, "il2cpp_class_get_method_from_name");',
    '    static void* lib = NULL;\n'
    '    if (!lib) lib = dlopen("libil2cpp.so", RTLD_NOW);\n'
    '    if (!getm && lib) getm = (decltype(getm))dlsym(lib, "il2cpp_class_get_method_from_name");')

# remove the FIRST p_find_of_type declaration (the part-2 one, before find_of_type_method)
first = t.index('static const MethodInfo* p_find_of_type = NULL;')
second = t.index('static const MethodInfo* p_find_of_type = NULL;', first + 10)
t = t[:first] + t[first:].replace('static const MethodInfo* p_find_of_type = NULL;\n', '', 1)

# 2) Il2CppArray typedef visibility: add a minimal one if the struct isn't declared yet
if 'typedef struct Il2CppArray' not in t:
    anchor = 'typedef struct Il2CppObject { void* klass; void* monitor; } Il2CppObject;'
    assert anchor in t
    t = t.replace(anchor,
                  anchor + '\n'
                  'typedef struct Il2CppArray { Il2CppObject obj; void* bounds; size_t max_length; void* vector[0]; } Il2CppArray;', 1)

# 3) g_scan_ticks used before its definition -> move the definition above driver()
t = t.replace('static unsigned g_scan_ticks = 0;\n', '')
anchor = 'static volatile int g_in_hook = 0;'
assert anchor in t
t = t.replace(anchor, anchor + '\nstatic unsigned g_scan_ticks = 0;', 1)

io.open(p, 'w', encoding='utf-8').write(t)
print('part3 applied')

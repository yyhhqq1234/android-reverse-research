import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

anchor = 'static void*       (*p_class_from_name)(void*, const char*, const char*) = NULL;'
add = anchor + '''
static void* (*p_class_get_method_from_name)(void*, const char*, int) = NULL;
static Il2CppObject* (*p_runtime_invoke)(const MethodInfo*, void*, void**, void**) = NULL;
static void* (*p_domain_get)(void) = NULL;
static void* (*p_thread_attach)(void*) = NULL;'''
assert anchor in t and 'p_runtime_invoke)(const MethodInfo*' not in t
t = t.replace(anchor, add, 1)

old = '    p_class_from_name = (decltype(p_class_from_name))dlsym(h, "il2cpp_class_from_name");'
new = old + '''
    p_class_get_method_from_name = (decltype(p_class_get_method_from_name))dlsym(h, "il2cpp_class_get_method_from_name");
    p_runtime_invoke = (decltype(p_runtime_invoke))dlsym(h, "il2cpp_runtime_invoke");
    p_domain_get = (decltype(p_domain_get))dlsym(h, "il2cpp_domain_get");
    p_thread_attach = (decltype(p_thread_attach))dlsym(h, "il2cpp_thread_attach");'''
assert old in t, 'dlsym block not found'
t = t.replace(old, new, 1)
io.open(p, 'w', encoding='utf-8').write(t)
print('exports restored')

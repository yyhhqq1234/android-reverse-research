"""Part 4: final ordering fixes."""
import io
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = io.open(p, encoding='utf-8').read()

# declare p_find_of_type + invoke before find_of_type_method()
anchor = 'static const MethodInfo* find_of_type_method(void* engineObj) {'
assert anchor in t
t = t.replace(anchor,
              'static const MethodInfo* p_find_of_type = NULL;\n'
              'static Il2CppObject* invoke(const MethodInfo*, void*, void**);   // fwd\n\n'
              + anchor, 1)

# remove the later duplicate declaration of p_find_of_type
i = t.index('static const MethodInfo* p_find_of_type = NULL;')
j = t.index('static const MethodInfo* p_find_of_type = NULL;', i + 10)
t = t[:j] + t[j:].replace('static const MethodInfo* p_find_of_type = NULL;\n', '', 1)

io.open(p, 'w', encoding='utf-8').write(t)
print('part4 applied')

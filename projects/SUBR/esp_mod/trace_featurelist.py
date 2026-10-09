import io, re
p = r'D:\APK-Reverse\projects\SUBR\apktool_out\smali_classes4\com\android\support\Menu.smali'
lines = io.open(p, encoding='utf-8').read().split('\n')
# featureList method range
start = next(i for i, l in enumerate(lines) if l.startswith('.method private featureList('))
end = next(i for i in range(start, len(lines)) if lines[i] == '.end method')
print('featureList smali lines %d..%d' % (start + 1, end + 1))
pat = re.compile(r'split|replace|aget-object|const-string|\.line 5(5|6|7)\d|invoke-virtual .*String;->|new-array')
out = []
for i in range(start, end):
    l = lines[i].strip()
    if pat.search(l):
        out.append('%5d  %s' % (i + 1, l))
print('\n'.join(out[:70]))

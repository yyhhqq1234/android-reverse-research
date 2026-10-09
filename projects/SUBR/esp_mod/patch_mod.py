"""Apply SUBR ESP-mod smali patches to apktool_out. Idempotent (skips if already applied)."""
import sys, shutil, os

OUT = r'D:\APK-Reverse\projects\SUBR\apktool_out'
SM4 = os.path.join(OUT, 'smali_classes4', 'com', 'android', 'support')

def patch(path, old, new, tag):
    with open(path, encoding='utf-8') as f:
        t = f.read()
    if tag in t:
        print('[skip] already applied:', tag)
        return
    assert old in t, 'pattern not found: ' + tag
    t = t.replace(old, new, 1)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(t)
    print('[ok]', tag)

# 1. Main.smali: load our lib after MyLibName
p1 = os.path.join(SM4, 'Main.smali')
patch(p1,
      'const-string v2, "MyLibName"\n\n    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V',
      'const-string v2, "MyLibName"\n\n    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V\n\n    const-string v2, "SUBRESP"\n\n    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V',
      'SUBRESP')

# 2. Menu$100000004.smali: concat extra features
p2 = os.path.join(SM4, 'Menu$100000004.smali')
patch(p2,
      'invoke-virtual {v3}, Lcom/android/support/Menu;->GetFeatureList()[Ljava/lang/String;\n\n    move-result-object v3',
      'invoke-virtual {v3}, Lcom/android/support/Menu;->GetFeatureList()[Ljava/lang/String;\n\n    move-result-object v3\n\n    invoke-static {v3}, Lcom/android/support/ModBridge;->concat([Ljava/lang/String;)[Ljava/lang/String;\n\n    move-result-object v3',
      'ModBridge;->concat')

# 3. Preferences.smali: route toggles to ModBridge (scoped per-method)
pp = os.path.join(SM4, 'Preferences.smali')
with open(pp, encoding='utf-8') as f:
    t = f.read()

def method_block(text, sig):
    i = text.index(sig)
    j = text.index('.end method', i)
    return i, j

def insert_before_return(text, i, j, code, tag):
    if tag in text[i:j]:
        print('[skip] already applied:', tag)
        return text
    k = text.rindex('return-void', i, j)
    # back up to line start
    ls = text.rindex('\n', i, k) + 1
    text = text[:ls] + code + text[ls:]
    print('[ok]', tag)
    return text

# changeFeatureBool: v1=name(String), v3=value(Z)
i, j = method_block(t, '.method public static changeFeatureBool')
t = insert_before_return(t, i, j,
    '    move-object v6, v1\n\n    move v7, v3\n\n    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onBool(Ljava/lang/String;Z)V\n\n',
    'onBool')
# changeFeatureInt: v1=name, v3=value(I)
i, j = method_block(t, '.method public static changeFeatureInt')
t = insert_before_return(t, i, j,
    '    move-object v6, v1\n\n    move v7, v3\n\n    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onInt(Ljava/lang/String;I)V\n\n',
    'onInt')
# changeFeatureLong: v0=name, v2/v3=value(J wide) -> v7/v8
i, j = method_block(t, '.method public static changeFeatureLong')
t = insert_before_return(t, i, j,
    '    move-object v6, v0\n\n    long-to-int v7, v2\n\n    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onInt(Ljava/lang/String;I)V\n\n',
    'onLong')

with open(pp, 'w', encoding='utf-8') as f:
    f.write(t)

# 4. install ModBridge.smali
shutil.copy(r'D:\APK-Reverse\projects\SUBR\esp_mod\smali\ModBridge.smali', os.path.join(SM4, 'ModBridge.smali'))
print('[ok] ModBridge.smali installed')
print('DONE')

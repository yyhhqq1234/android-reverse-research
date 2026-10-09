"""ASCII-ify the mod menu: wire Ascii.fixAll into the feature list and replace the
astral-plane button labels (which render as "box with X" on most Android fonts)."""
import io, os, sys

OUT = r'D:\APK-Reverse\projects\SUBR\apktool_out'
SM4 = os.path.join(OUT, 'smali_classes4', 'com', 'android', 'support')

def rd(p):
    return io.open(p, encoding='utf-8').read()
def wr(p, t):
    io.open(p, 'w', encoding='utf-8').write(t)

# ---- 1. ModBridge.concat: sanitize the native feature list first ----
p = os.path.join(SM4, 'ModBridge.smali')
t = rd(p)
anchor = '''.method public static concat([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
'''
inject = anchor + '''    # sanitize the pack's feature strings (astral math letters -> ASCII)
    invoke-static {p0}, Lcom/android/support/Ascii;->fixAll([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p0
'''
if 'Ascii;->fixAll' in t:
    print('[skip] concat already wired')
elif anchor in t:
    t = t.replace(anchor, inject, 1)
    wr(p, t)
    print('[ok] concat wired to Ascii.fixAll')
else:
    sys.exit('concat anchor not found')

# ---- 2. Menu.smali: replace the fancy label constants ----
p = os.path.join(SM4, 'Menu.smali')
t = rd(p)
reps = [
    (r'"\ud835\ude77\ud835\ude78\ud835\ude73\ud835\ude74"', '"HIDE"'),
    (r'"\ud835\ude7c\ud835\ude78\ud835\ude7d\ud835\ude78\ud835\ude7c\ud835\ude78\ud835\ude89\ud835\ude74"', '"MINIMIZE"'),
    (r'"\u25bd "', '"v "'),
    (r'" \u25bd"', '" v"'),
    (r'"\u25b3 "', '"^ "'),
    (r'" \u25b3"', '" ^"'),
]
for old, new in reps:
    if old in t:
        n = t.count(old)
        t = t.replace(old, new)
        print('[ok] %s -> %s  (%d)' % (old[:30], new, n))
    else:
        print('[skip] %s not present' % old[:30])
wr(p, t)
print('DONE')

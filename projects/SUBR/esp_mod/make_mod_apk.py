"""Build the mod APK by ZIP SURGERY on the ORIGINAL apk.

Why: apktool rebuild re-encoded 263 resource files + resources.arsc + AndroidManifest.
That perturbs resource/theme/font resolution on the device (the mod menu's text came
out as missing-glyph boxes). This script keeps EVERY original entry byte-identical and
swaps in only what the mod needs:

  * classes4.dex      <- rebuilt dex that contains com/android/support/ModBridge
  * lib/arm64-v8a/libSUBRESP.so <- our native ESP/aimbot library
  * drops META-INF signature files (re-signed afterwards)

Then: zipalign + apksigner v2.
"""
import zipfile, sys, os, shutil

ROOT = r'D:\APK-Reverse\projects\SUBR'
ORIG = os.path.join(ROOT, 'SUBR.apk')
BUILT = os.path.join(ROOT, 'SUBR_esp_unsigned.apk')     # apktool output (source of patched dex)
SO = os.path.join(ROOT, 'esp_mod', 'libs', 'arm64-v8a', 'libSUBRESP.so')
OUT = os.path.join(ROOT, 'SUBR_esp_surgery.apk')

assert os.path.exists(ORIG), ORIG
assert os.path.exists(BUILT), BUILT
assert os.path.exists(SO), SO

src = zipfile.ZipFile(ORIG)
built = zipfile.ZipFile(BUILT)

# pull the patched dex from the apktool build.
# ONLY classes4.dex is swapped: all of our smali edits (ModBridge, Preferences,
# Main, Menu$100000004) live in smali_classes4, so dex 1-3 can stay original.
patched_classes = {}
for dexname in ('classes4.dex',):
    try:
        patched_classes[dexname] = built.read(dexname)
        print('  using rebuilt %s (%d bytes)' % (dexname, len(patched_classes[dexname])))
    except KeyError:
        print('  (apktool build has no %s)' % dexname)
if not patched_classes:
    sys.exit('no patched dex found in ' + BUILT)

SKIP = ('.SF', '.RSA', '.DSA', '.EC')
new = zipfile.ZipFile(OUT, 'w', zipfile.ZIP_DEFLATED)
copied = replaced = 0
for info in src.infolist():
    n = info.filename
    if n.upper().startswith('META-INF/') and n.upper().endswith(SKIP):
        continue                                    # drop old signature
    if n == 'META-INF/MANIFEST.MF':
        continue
    zi = zipfile.ZipInfo(n, date_time=info.date_time)
    zi.compress_type = info.compress_type           # keep STORED/DEFLATE per entry
    zi.external_attr = info.external_attr
    if n in patched_classes:
        new.writestr(zi, patched_classes[n])
        replaced += 1
    else:
        new.writestr(zi, src.read(n))
        copied += 1

# add our native lib (STORED like the other .so entries so it can be mmapped)
zi = zipfile.ZipInfo('lib/arm64-v8a/libSUBRESP.so', date_time=(2026, 10, 3, 0, 0, 0))
zi.compress_type = zipfile.ZIP_STORED
zi.external_attr = 0o100644 << 16
new.writestr(zi, open(SO, 'rb').read())

# extra dex holding the ASCII sanitizer (com/android/support/Ascii), from d8
EXTRA_DEX = os.path.join(ROOT, 'esp_mod', 'dexout', 'classes.dex')
if os.path.exists(EXTRA_DEX):
    zi = zipfile.ZipInfo('classes5.dex', date_time=(2026, 10, 3, 0, 0, 0))
    zi.compress_type = zipfile.ZIP_DEFLATED
    zi.external_attr = 0o100644 << 16
    new.writestr(zi, open(EXTRA_DEX, 'rb').read())
    print('  added classes5.dex (%d bytes)' % os.path.getsize(EXTRA_DEX))

new.close(); src.close(); built.close()
print('surgery done: copied=%d replaced_dex=%d -> %s (%.1f MB)'
      % (copied, replaced, OUT, os.path.getsize(OUT) / 1048576.0))

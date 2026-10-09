import json, re, io
d = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
ms = d['ScriptMethod']
wants = [
    r'PlayerHealthManager\$\$Start',
    r'PlayerHealthManager\$\$Update',
    r'MeleeHit\$\$Start',
    r'MeleeHit\$\$.*',
    r'PickableItem\$\$Start',
    r'PickableItem\$\$.*',
    r'UnityEngine_Object\$\$get_name',
    r'HealthManager\$\$_ctor',
    r'ZombieHealth\$\$.*',
    r'PlayerHealthManager\$\$getshooter',
]
out = io.open(r'D:\APK-Reverse\projects\SUBR\hook_targets.txt', 'w', encoding='utf-8', errors='replace')
n = 0
for m in ms:
    for w in wants:
        if re.fullmatch(w, m['Name']):
            out.write('%s | %s\n  %s\n' % (m['Name'], hex(m['Address']), m['Signature']))
            n += 1
            break
out.write('HITS: %d\n' % n)
out.close()
print('hits:', n)

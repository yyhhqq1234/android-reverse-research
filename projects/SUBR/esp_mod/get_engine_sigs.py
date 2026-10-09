import json, io, re
d = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
ms = d['ScriptMethod']
keys = ['WorldToScreenPoint', 'get_position', 'set_rotation', 'get_rotation', 'get_transform',
        'get_width', 'get_height', 'GetBoneTransform', 'LookRotation', 'get_main', 'get_gameObject']
out = io.open(r'D:\APK-Reverse\projects\SUBR\esp_addrs3.txt', 'w', encoding='utf-8')
CLS = ('UnityEngine.Camera', 'UnityEngine.Transform', 'UnityEngine.Component', 'UnityEngine.Screen',
       'UnityEngine.Animator', 'UnityEngine.Quaternion', 'UnityEngine.Object', 'UnityEngine.GameObject')
seen = set()
for m in ms:
    n = m['Name']
    if '$$' not in n:
        continue
    cls, meth = n.split('$$', 1)
    if cls.startswith(CLS) and any(k in meth for k in keys):
        if n in seen:
            continue
        seen.add(n)
        out.write('%-58s %-12s %s\n' % (n, hex(m['Address']), m['Signature']))
out.close()
print('wrote', len(seen), 'entries')

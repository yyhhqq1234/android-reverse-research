import json
d = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
ms = d['ScriptMethod']
keys = ['get_main', 'WorldToScreen', 'get_position', 'set_position', 'set_rotation',
        'get_rotation', 'get_forward', 'GetBoneTransform', 'get_width', 'get_height',
        'LookRotation', 'get_transform', 'get_gameObject', 'get_enabled',
        'get_fieldOfView', 'get_active', 'get_hierarchyCapacity' if False else 'get_name',
        'FindObjectsOfType', 'get_current', 'get_localPosition', 'InverseTransformPoint']
seen = set()
want_cls = ('UnityEngine.Camera', 'UnityEngine.Transform', 'UnityEngine.Animator',
            'UnityEngine.Screen', 'UnityEngine.Quaternion', 'UnityEngine.Vector3',
            'UnityEngine.Behaviour', 'UnityEngine.Component', 'UnityEngine.Object',
            'UnityEngine.GameObject')
out = open(r'D:\APK-Reverse\projects\SUBR\esp_addrs2.txt', 'w', encoding='utf-8')
for m in ms:
    n = m['Name']
    if '$$' not in n:
        continue
    cls, meth = n.split('$$', 1)
    if cls in want_cls and meth in keys and n not in seen:
        seen.add(n)
        out.write('%s | %s\n  %s\n' % (n, hex(m['Address']), m['Signature'][:220]))
out.close()
print('wrote', len(seen))

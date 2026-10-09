import json, re
d = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
ms = d['ScriptMethod']
wants = [
    r'UnityEngine_Camera\$\$get_main',
    r'UnityEngine_Camera\$\$WorldToScreenPoint.*',
    r'UnityEngine_Component\$\$get_transform',
    r'UnityEngine_Component\$\$get_gameObject',
    r'UnityEngine_Transform\$\$get_position',
    r'UnityEngine_Transform\$\$set_rotation',
    r'UnityEngine_Animator\$\$GetBoneTransform',
    r'UnityEngine_Object\$\$FindObjectsOfType.*',
    r'UnityEngine_GameObject\$\$FindGameObjectsWithTag',
    r'UnityEngine_GameObject\$\$get_transform',
    r'UnityEngine_Screen\$\$get_width',
    r'UnityEngine_Screen\$\$get_height',
    r'UnityEngine_Quaternion\$\$LookRotation.*',
    r'HealthManager\$\$TakeDamage.*',
    r'PlayerHealthManager\$\$TakeDamageData',
    r'ShootBehaviour\$\$.*',
    r'UnityEngine_Transform\$\$LookAt.*',
    r'UnityEngine_Camera\$\$get_fieldOfView',
]
out = open(r'D:\APK-Reverse\projects\SUBR\esp_addrs.txt', 'w', encoding='utf-8')
out.write('total methods: %d\n' % len(ms))
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

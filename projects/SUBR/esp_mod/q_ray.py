import json
d = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
ms = d['ScriptMethod']
for m in ms:
    n = m['Name']
    if n.startswith('UnityEngine.Physics$$Raycast'):
        print(hex(m['Address']), '|', m['Signature'][:170])
print('---- orbit ----')
for m in ms:
    n = m['Name']
    if 'ThirdPersonOrbitCam' in n and ('get_' in n or 'set_' in n or 'Update' in n):
        print(hex(m['Address']), '|', n)

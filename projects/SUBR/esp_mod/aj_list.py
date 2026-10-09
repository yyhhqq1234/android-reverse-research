import json
j = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
for e in j['ScriptMethod']:
    n = e.get('Name', '')
    if 'AndroidJavaObject$$' in n or 'AndroidJavaClass$$' in n:
        print(hex(e['Address']), n, '|', e['Signature'][:150])

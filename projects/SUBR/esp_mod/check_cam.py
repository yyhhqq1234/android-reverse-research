import json
j=json.load(open('projects/SUBR/il2cpp_dump/script.json',encoding='utf-8'))
d={e['Name']:hex(e['Address']) for e in j['ScriptMethod']}
keys=['UnityEngine.Camera$$get_fieldOfView','UnityEngine.Camera$$get_orthographic','UnityEngine.Camera$$get_depth','UnityEngine.Camera$$get_main','UnityEngine.Camera$$get_current','UnityEngine.Camera$$get_enabled','UnityEngine.Camera$$get_pixelRect']
for k in keys:
    print(k, d.get(k,'MISS'))

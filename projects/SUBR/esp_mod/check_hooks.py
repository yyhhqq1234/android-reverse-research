import json
j=json.load(open('projects/SUBR/il2cpp_dump/script.json',encoding='utf-8'))
d={e['Name']:hex(e['Address']) for e in j['ScriptMethod']}
keys=['GameController$$Update','MainMenuV8$$Update','AIController$$Update','ZombieEnemyAI$$Update','EnemyAIBoss$$Update','MonsterEnemy$$Update','PlayerHealthManager$$Start','ShootBehaviour$$ShootByScript','PlayerHealthManager$$Update','PickableItem$$Update']
for k in keys:
    print(k, d.get(k,'MISS'))

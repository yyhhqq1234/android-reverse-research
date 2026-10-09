import re, io
txt = open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\dump.cs', encoding='utf-8').read()
targets = ['HealthManager','PlayerHealthManager','ShootBehaviour','AimBehaviour','Recoil',
           'Zone','WeaponData','GameController','ZombieHealth','ItemsHealth','DamageIndicator',
           'KillFEED','Killer','InteractiveWeapon','Bullet','Grenade','GrenadeThrow','MeleeFight',
           'crosshairController','RedDotAim','AimPoser','UIGameController','MainMenuV8','SavePlayerData',
           'Invectory','AirDrop','PickupManager','PickableItem','WeaponItemSpawner','AutoWeaponSpawner',
           'EnemyAIBoss','ZombieController','ZombieEnemyAI','MonsterEnemy','AIController','CharacterThirdPerson',
           'BasicBehaviour','GenericBehaviour','MoveBehaviour','SprintBehaviour','JumpBehaviour','CrouchBehaviour']
out = io.open(r'D:\APK-Reverse\projects\SUBR\core_classes.txt', 'w', encoding='utf-8', errors='replace')
for t in targets:
    m = re.search(r'(?m)^public (?:sealed |abstract )?(?:class|struct) ' + t + r'\b.*?(?=^// (?:Namespace|Assembly|Image)|\Z)', txt, re.S)
    if m:
        out.write('=' * 80 + '\n' + m.group(0) + '\n')
    else:
        out.write('NOT FOUND: ' + t + '\n')
out.close()
print('done')

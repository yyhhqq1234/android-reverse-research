#!/usr/bin/env python3
import re

d = open('D:/安卓逆向/NECR/work_necr/trial/out_vanilla/dump.cs', encoding='utf-8').read()
want = ['CostManager', 'UpgradeManager', 'SummonManager', 'PlayerParams', 'PlayerFSM',
        'UnitManager', 'Units', 'MonsterManager', 'SkillManager', 'QuestManager',
        'StageManager', 'BossLevelManager', 'ADManager', 'Rewarded', 'TimeManager',
        'CollectionManager', 'MainData', 'MainDataBase', 'MixBox', 'LevelManager',
        'MainLevelUp', 'TierUp', 'CashShopManager', 'UIManager', 'GameStart']
blocks = re.split(r'(?=// Namespace: )', d)
out = []
for b in blocks:
    m = re.search(r'public class (\w+)', b)
    if not m or m.group(1) not in want:
        continue
    cn = m.group(1)
    out.append(f'===== {cn} =====')
    for f in re.finditer(r'// RVA: (0x[0-9A-Fa-f]+)[^\n]*\n\t(public|private|protected) ([^\n;{}]+)[;{]', b):
        out.append(f"  {f.group(1)} {f.group(3).strip()[:110]}")
open('D:/安卓逆向/NECR/work_necr/logs/audit_targets.txt', 'w', encoding='utf-8').write('\n'.join(out))
print('classes:', len(set(re.findall(r'===== (\w+)', chr(10).join(out)))), 'lines:', len(out))

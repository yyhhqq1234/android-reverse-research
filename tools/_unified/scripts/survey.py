#!/usr/bin/env python3
import re
txt = open('D:/安卓逆向/NECR/work_necr/trial/out_vanilla/dump.cs', encoding='utf-8', errors='replace').read()
for c in ['SummonManager', 'GambleManager', 'UpgradeManager', 'TimeManager', 'QuestManager',
          'MixBox', 'TierUp', 'MainManager', 'SkillManager', 'StageManager', 'LevelManager',
          'MonsterManager', 'CollectionManager', 'Inventory', 'GameStart', 'MainData']:
    i = txt.find('public class ' + c + ' ')
    if i < 0:
        print(c, 'NOTFOUND')
        continue
    seg = txt[i:i + 7000]
    ms = re.findall(r'// RVA: (0x[0-9A-F]+)[^\n]*\n\tpublic (\w[\w<>,\.\s]*?) (\w+)\(([^)]*)\)', seg)
    print('===', c)
    for rva, ret, name, args in ms[:12]:
        print(' ', rva, ret.strip()[-20:], name, '(' + args[:36] + ')')

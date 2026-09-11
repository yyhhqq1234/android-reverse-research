#!/usr/bin/env python3
import re

d = open('D:/安卓逆向/NECR/work_necr/trial/out_vanilla/dump.cs', encoding='utf-8').read()
# game classes: MonoBehaviour subclasses outside Unity/System namespaces
classes = {}
for m in re.finditer(r'// Namespace: ([^\n]*)\n[^\n]*?public class (\w+) : MonoBehaviour', d):
    ns, cn = m.group(1).strip(), m.group(2)
    if ns.startswith(('Unity', 'System', 'UnityEngine', 'TMPro', 'I2.', 'MoreMountains',
                      'CodeStage', 'AppsFlyer', 'Facebook', 'IronSource', 'Google',
                      'UnityEngine.', 'Behaviours', 'Coffee', 'DG.', 'DemiLib',
                      'EasyRoads3D', 'FEM', 'Hovl', 'Ionic', 'Kaimira', 'Ludiq',
                      'Multipart', 'Pathfinding', 'PixelCrushers', 'RootMotion',
                      'SWS', 'Spine', 'Tasharen', 'ThirdParty', 'Vavilichev',
                      'VolumetricFogAndMist2', 'Winterbyte', 'com.', ' unavoidable')):
        continue
    classes[cn] = ns
print(len(classes), 'game classes')
for cn in sorted(classes):
    print(f'  {cn}  [{classes[cn]}]')

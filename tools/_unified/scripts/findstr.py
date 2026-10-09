#!/usr/bin/env python3
import json

s = json.load(open('D:/安卓逆向/NECR/work_necr/trial/out_vanilla/script.json'))
sm = s['ScriptMethod']
print('methods:', len(sm))
print('m0:', str(sm[0])[:400])
print('mkeys:', list(sm[0].keys()))

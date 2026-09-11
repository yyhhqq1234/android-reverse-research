#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Apply verified S->T replacements + row rewords to cn_batch1."""
import sys

CN = 'D:/安卓逆向/NECR/work_necr/trans/work/cn_batch1.txt'
OUT = 'D:/安卓逆向/NECR/work_necr/trans/work/cn_batch1_fixed.txt'

REWORD = {
    1: '在副本中', 18: '想退出？', 31: '我也能升級？', 32: '夢魔',
    55: '要批量賣出？', 64: '想寫評價？', 87: '夜翼', 114: '白骨',
    125: '雪妖精', 157: '傳說蒼騎士', 159: '全員治療', 160: '眞的要賣出？',
    161: '眞的要轉生？', 164: '行屍', 171: '生命提升', 180: '額外生命',
    191: '新手指南', 195: '芙麗雅', 200: '白骨隊長', 202: '當前MP',
    207: '想轉生？',
}
GMAP = {'灵': '靈', '骑': '騎', '额': '額', '红': '紅', '击': '擊', '复': '復',
        '传': '傳', '钻': '鑽', '领': '領', '莱': '萊', '说': '說', '兔': '兎',
        '黄': '黃', '边': '邊', '师': '師', '级': '級', '励': '勵', '唤': '喚',
        '动': '動', '转': '轉', '监': '監', '狱': '獄', '时': '時', '真': '眞',
        '关': '關', '间': '間', '币': '幣', '个': '個', '疗': '療', '罗': '羅',
        '写': '寫', '评': '評', '员': '員', '宝': '寶', '败': '敗', '佣': '傭',
        '枪': '槍', '当': '當', '卫': '衛', '亚': '亞', '缩': '縮', '剑': '劍',
        '换': '換', '变': '變', '梦': '夢', '欢': '歡', '这': '這', '气': '氣',
        '风': '風', '开': '開', '伤': '傷', '龙': '龍', '随': '隨', '仅': '僅',
        '尽': '盡', '务': '務', '尔': '爾', '弹': '彈', '发': '發', '现': '現',
        '战': '戰', '饿': '餓', '马': '馬', '续': '續', '奥': '奧', '欧': '歐',
        '钱': '錢', '连': '連', '华': '華', '场': '場', '达': '達', '属': '屬',
        '卖': '賣', '购': '購', '队': '隊', '长': '長', '确': '確', '认': '認',
        '奖': '賞', '获': '獲', '售': '賣'}

BANNED = set('吗戏体骷髅卡魇蝙蝠冰青僵教蕾值')

lines = [l.rstrip('\n') for l in open(CN, encoding='utf-8')]
assert len(lines) == 218, len(lines)
out = []
for i, ln in enumerate(lines):
    if i in REWORD:
        out.append(REWORD[i])
        continue
    if not ln:
        out.append('')
        continue
    out.append(''.join(GMAP.get(c, c) for c in ln))
joined = '\n'.join(out)
bad = sorted(set(joined) & BANNED)
assert not bad, ['U+%04X' % ord(c) for c in bad]
open(OUT, 'w', encoding='utf-8').write(joined + '\n')
print('fixed written, rows:', len(out))

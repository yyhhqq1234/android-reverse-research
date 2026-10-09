# R28：给自瞄加"俯仰微调"滑条（菜单第 109 项，单位 0.1°，范围 -20..+20），
#      用于把残余的系统性高低差（用户实测"准星落在头部正上方"）直接压到头上；同时作用于静默瞄相机。
p = r'D:\APK-Reverse\projects\SUBR\esp_mod\jni\hack.cpp'
t = open(p, encoding='utf-8').read()

def rep(old, new, n=1):
    global t
    c = t.count(old)
    assert c >= n, 'MISS(%d/%d): %s' % (c, n, old[:80].replace('\n', '\\n'))
    t = t.replace(old, new, n)

rep('''static volatile int  g_aimSmooth = 6;''',
    '''static volatile int  g_aimSmooth = 6;
static volatile int  g_aimPitchTrim = 0;   // R28: 0.1 deg units; negative = aim lower (crosshair was landing above the head)''')

rep('''    else if (strstr(n, "Max Dist"))    g_maxDist = v;''',
    '''    else if (strstr(n, "Max Dist"))    g_maxDist = v;
    else if (strstr(n, "Aim Pitch Trim")) g_aimPitchTrim = v;   // R28''')

rep('''        "108_SeekBar_Max Dist_50_600",''',
    '''        "108_SeekBar_Max Dist_50_600",
        "109_SeekBar_Aim Pitch Trim_-20_20",''')

# aimbot 俯仰微调
rep('''            float pitch = -asinf(d.y / len) * 57.29578f;''',
    '''            float pitch = -asinf(d.y / len) * 57.29578f + (float)g_aimPitchTrim * 0.1f;   // R28 trim''')

# 静默相机快照俯仰微调
rep('''                                float spit = -asinf(cd.y / cl) * 57.29578f;''',
    '''                                float spit = -asinf(cd.y / cl) * 57.29578f + (float)g_aimPitchTrim * 0.1f;   // R28 trim''')

open(p, 'w', encoding='utf-8').write(t)
print('ok r28 pitch trim')

# REPORT8 元歌补丁
点位：SkillSlotLinker.InitSkillSlot offset113 ldc0→ldc1，m_ingnoreDisable恒真
门链：IsSkillSlotLimited→ignoreDisable→ForceLimited→IsEnabled(m_disabledFlags==0)→set_enabled
来源：豁免源自ResSkillCfgInfo.bBIngnoreDisable（表加密，改代码侧恒真）
产物：Assembly-CSharp.mod.dll 10130944B，patch-yuange.ps1可复跑，verify 40行ldc.i4.1确认
重建：用户本地前台跑apktool b→zipalign→apksigner v1+v2→adb install
验证：单机傀儡英雄吃眩晕切傀儡可点；数值（继承率/时长/CD）待表解密后填skill.bytes

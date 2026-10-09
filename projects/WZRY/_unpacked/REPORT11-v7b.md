# REPORT11 V7b 傀儡键cheat触发版（待用户实测）
- 包：`build/wzry-v7b-a.apk`（已装机，V1同签覆盖）：P1-P2双路恒真+P3/P4/P5限位false+P6 IsEnabled真+P8/P9 CD归零+BUFF日志+ P12b
- P12b：`CSkillButtonManager.JointSkillButtonDown` 头插 `CHEAT:2→SendCommand(2)` + `CHEAT:5→SendCommand(5)`（2=ToggleZeroCd 5=ToggleInvincible，无GM校验，GM权限已启用确认可用）；V7在InitJointSkillButton发帧命令开局崩（tomb15/159s/0x19），已移出该时机
- 证据链：V1只改兜底无效→V2六点按钮层→V3全禁AddBuff只去名不去效（C#非权威）→V4系加成员崩装载（tomb12 Mono栈/tomb13 1秒崩）→内存直读63MB空壳+641块零串（表纯数字）→行距HeroBuff32/Skill324 →V5/V6 BuffID日志通（60080/90015/90005）→作弊系统`CheatCommandBattleEntry.GodMode/ZeroCD`（GM已启用）
- 未闭环：Agent盲点多次误选英雄（司马懿/妲己/牛魔），傀儡键CHEAT触发与吃晕判据需用户手测（选角屏无名，只能靠加载屏认名）
- 用户步骤：选元歌→对妲己→放傀儡→按傀儡键→看是否无CD+吃晕是否免控；回传“晕/不晕+傀儡可用否”
- 回收：`adb logcat -d | grep -E 'BUFF:|CHEAT:'` 定晕眩ID → V8精准版

# REPORT9 元歌V2b-Agent代打
- 包：`build/wzry-aligned-v2b.apk`（V2六点，AddBuff原样，v1+v2 WZRY-TEST签，同签覆盖装机Success）
- V3崩：`tombstone_11` 13:35:34 UnityMain SIGSEGV null+0x178，元歌开局崩，司马懿同V3可进，判V3全禁杀傀儡Buff链，V2b回滚后元歌可进局（s21/s22-s25）。
- V1根因：只改兜底offset113，主路offset105走表，`CSkillButtonManager::IsSkillSlotLimited`照限；V2补P1(m1)+P3/P4/P5(false)+P6(true)。
- Native权威：GameCore战斗态加载（b9988000段无r-x），ARM转译houdini，x86 frida扫不到，HeroBuff/skill表加密，C# AddBuff仅UI（V3名没了效还在）。
- Agent代打（用户退出后接管）：QQ直进→刺客过滤→(1525,375)选元歌候选（刺客先手+人像切换技）→对手妲己→开局（V2b无崩，进局00:06）。
- 存疑：选角模型台空、人形蓝粉与傀儡切换未见，人像技点击无傀儡，疑元歌模型资源缺失fallback；傀儡吃晕链未走到（02:29泉水2级，技能未加满）。
- 证据：`build/s11-s25.png`、`build/tomb11.txt`、`gg-stun.lua`已push、GG已装机。
- 下一步：A.确认英雄（读选角名/切人像技出傀儡） B.妲己晕吃+傀儡键状态 C.V4按BuffID精准放行（需晕眩ID：GG差分或表解密）。

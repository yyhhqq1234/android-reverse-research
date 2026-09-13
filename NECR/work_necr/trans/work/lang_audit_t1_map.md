# T1-语言切换UI与字段映射（只读分析报告）

> 来源：AgentTeams `necr-lang-audit` / t1 completed 输出原样落盘；只读分析，未改包未构建。
> 证据：`trial/out_vanilla/{dump.cs,script.json,stringliteral.json}`、`trans/trial/{cn_lang,cn_lang2,cn_set,cn_enter,cn_ko,cn_v1,lv2t}.png`、`trans/trial/prefs.xml`、`release_stable/playerprefs_clean.xml`、`src/res/values/strings.xml`。

T1-语言切换UI与字段映射（只读）完成。证据：trial/out_vanilla/{dump.cs,script.json,stringliteral.json}、trans/trial/{cn_lang,cn_lang2,cn_set,cn_enter,cn_ko,cn_v1,lv2t}.png、trans/trial/prefs.xml、release_stable/playerprefs_clean.xml、src/res/values/strings.xml。

【表1·方法地址（dump.cs RVA == script.json Address == 文件偏移，三处一致已核对）】
- GameStart.Start 0x121A834 / WaitTheStart 0x121AA04 / SelectLanguage(int num) 0x121AAAC / GameLoad 0x121ACA0（TypeDefIndex 5995；字段 info Text 0xC、logo 0x10、curTrans int 0x14、first int 0x18、l_Select GameObject 0x1C）
- TranslationManager Awake 0x13E309C / Start 0x13E3154 / InItTrans 0x13E3390 / ReStartTranNum(int Num) 0x1400E98 / ReStartGame 0x1400F0C（TypeDefIndex 6079；instance 0x0、curTrans 0xC、curTransNum私有 0x254）
- UIManager.L_SelectScreenOpen 0x1425104 / L_SelectReCheckScreenOpen 0x142512C（字段 L_SelectScreen 0x10C、L_SelectReCheckScreen 0x110；另有 OptionScreenOpen 0x14222A8 为设置入口）

【表2·选项→参数→字段（置信度分级）】
- 语言选项共3个（SelectLanguage收0/1/2，TRANS_NOTES断言；prefs实测仅见0与1，2从未在存档出现）：高置信=三语为韩/英/日（KO 356/JA 262/EN字面量见T2域；截图实证EN模式cn_lang/cn_enter/cn_v1与KO模式cn_ko 로이/포탈/봉바；无中文槽位，lv2t系模拟器桌面无关）。
- 0/1/2→具体语种：未确认。候选A 0=KO/1=EN/2=JA；候选B 0=KO/1=JA/2=EN（KO排首仅为韩国开发+字面量规模最大之弱推断；trans_align.txt的KO/JA/EN列序是分析者自定列序，不代表数组下标）。需动态试验裁决（见未确认清单U1）。
- 参数→字段：SelectLanguage(num)→GameStart.curTrans(0x14)→持久化PlayerPrefs键TransNum（stringliteral.json确认键名存在；trans/trial/prefs.xml TransNum=0、release_stable/playerprefs_clean.xml TransNum=1）→TranslationManager.curTrans(0xC)/curTransNum(0x254)→InItTrans内以curTrans为下标读全部string[]并写入各Text。下标=语种索引系结构推断（中置信），IL函数体未静态可见故标未完全确认。

【表3·string[]字段清单（TranslationManager内共16个，偏移照录）】mainName 0x10、unitName 0x48、unitAB 0x80、skillName 0xAC、skillDescription 0xB0、skillSubDescript 0xB4、questDescription 0xC8、stageName 0xE4、stageQuestName 0xEC、textInfo 0x1BC、NotEnoughCostInfo 0x1C4、tutoText 0x1C8、NPC_BongbaTextList 0x244、NPC_lilyTextList 0x248、NPC_boyTextList 0x24C、pc_avatarTextList 0x250；另8个单语种string（stageEnter 0xE8、miniText 0xF8、missionSlot 0x1C0、bossLevelText 0x22C、portalNameText 0x230、nPC_Bongba/lily/boyNameText 0x234/0x238/0x23C）疑为非翻译或单语文本。
【curTrans消费点分组（字段级，高置信为InItTrans统一赋值；运行时动态读取点未静态可见）】主界面(mainLevel/mana/hp/att/move/summon系Text)→升级/背包/卖出(upgrade/bag/massSell)→合成MixBox→技能(skillReset/ResetInfo)→任务/收集/退出(quest/collection/exit)→关卡/赌博/层级(stage/gamble/tierUp)→活动箱/首领/结算(eventChest/bossLevel/clear)→出售/使命/召唤加成/商店IAP(mission/summonBonus/addGold/oneChance/dia系列)→导师/化身/重生/评价/语言重选(tuto/avatar/birth/Review/L_Select)→NPC对话与头顶名(NPC_*TextList+tutoText+textInfo/NotEnoughCostInfo)。商店/技能/任务从对应数组取下标curTrans，此为B路等长替换能全局生效的结构原因。

【表4·流程与即时/重启 verdict】非即时生效、需重进：证据为ReStartTranNum+ReStartGame方法对命名（中高置信）+设置链Language Select按钮→L_SelectScreen→L_SelectReCheckScreen二次确认→重载场景（截图cn_set.png实证入口按钮；UIManager两开关方法地址见表1）。首次启动门控：GameStart.first/l_Select/prefs first=1+GameStart=1+GameStartAlready=1三键并存，推断首进弹l_Select语言选择（中置信，待动态确认）。

【截图证据纠偏】任务书称cn_lang/cn_lang2为语言界面截图，实际内容：cn_lang.png=英文开场叙事+Enter按钮；cn_lang2.png=英文Tutorial“Let's first touch the portal”；cn_set.png=设置页（Creator Lee Min Ho、BGM/Sound/Tutorial ON、Language→Select按钮）确为语言入口；cn_enter/cn_v1=英文玩法；cn_ko=韩文玩法（对照证实运行时至少KO/EN两态）；lv2t=模拟器桌面无关图。结论：L_Select三按钮选择器本身在现有截图集中没有正面捕获。

【负证据】src反编译树无语言UI（res/values/strings.xml仅app_name Necromancer+样板，Unity场景驱动）；stringliteral.json中English*全系Unity/.NET区域名与DynamicOSFontAssets路径，非游戏语言选项；游戏韩文字面住global-metadata.dat（.so内零命中，沿用TRANS_NOTES结论，本任务未复验二进制）。

【未确认清单U1-U6】U1：0/1/2→KO/EN/JA确切对应（动态试验：备份存档→PlayerPrefs TransNum分别置0/1/2→重进截图L_Select+主城NPC名对照，30分钟可裁决；或反汇编SelectLanguage@0x121AAAC约244字节体）。U2：各string[]长度是否为3及与选项数一致（转T2用metadata确认）。U3：InItTrans“55KB”规模断言（dump/script均无函数体大小，本任务未独立复算；不影响映射结论）。U4：运行时除InItTrans外有无直读curTrans的动态消费点（如NPC对话逐句取索引——需frida/GG动态或反汇编，静态dump不可见函数体）。U5：L_Select三按钮→SelectLanguage(num)接线（在Unity场景资源内，AssetStudio看场景PersistentCalls可确认）。U6：Houdini pc=0类崩溃与语言切换无关（本任务未触购买路径，未发现语言切换崩溃证据；翻译补丁仍须遵守v19铁律不碰购买路径）。

红线遵守：全程只读，未改动原包/src/live SO，未构建未安装；中文路径工具均一次直读成功，无需D:/tmp中转。

---

## 附注（t2口径对齐，captain转交）

- JA计数以t2为准：stringliteral.json去重后272 vs ja.txt 262（交集241，差31+21，疑归一化/多行\n所致）；本报告正文未采用JA绝对数，不冲突。
- KO 356 = batch1 218 + batch2 138，与本报告引用的TRANS_NOTES一致。
- batch2长对话CN未译、含\r或\n 111条属T2/T3工作量域，本映射不受影响。
- 位置对齐已证伪：trans_align.txt的KO/JA/EN列序是分析者自定列序，不代表数组下标；遇JA对不齐按此口径注明，不强行位置对齐。

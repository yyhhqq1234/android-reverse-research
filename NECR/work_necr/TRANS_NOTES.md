# NECR 韩翻中档案（goal 进行中）

## 三语源
- `TranslationManager`（TypeDefIndex 6079）：curTrans + 9+ string[]（mainName/unitName/unitAB/skillName/skillDescription/skillSubDescript/questDescription/stageName/stageQuestName…）；`InItTrans@0x13E3390`（55KB 初始化）；`GameStart.SelectLanguage@0x121AAAC` 收 0/1/2。
- 字面量：KO 356 / JA 262 / EN 混排（`trial/out_vanilla/stringliteral.json`；地址为运行时编址，**不可当偏移**，B 路按内容搜索定位）。
- 韩文字节住 `global-metadata.dat`（.so 内零命中）。
- 对照 v1：`trans/batches/`（batch1 短词218 + batch2 长对话138，均带BOM，UTF-8）；`trans/work/`（trans_align.txt、ko/ja/en_cand源、font_hanzi_union.txt 4621字、测试TSV）；`trans/trial/`（so/meta试件、out_trial2回载、sa1/sa2拼合）。
- 注意：3 条英文值含 `\r\n`（代理/Host 文本），对照表已归一为 ` / `；最终 TSV 回填时 KO 列需经 stringliteral.json 反查原始字节（`transB_trial.py` 按字节精确匹配，归一化串对不上）。
- 机翻进行中（用户看不懂韩日，captain 直译）：对照页 `trial/tr_pages/p1-6.html`（batch1截图翻译用人眼通道）。
- 对齐结论：位置对齐证伪（指纹1/12，表不等长）；内容指纹（数字/占位符/长度）v0。

## 字体（显示前置条件）
- sharedassets1：`NanumGothicExtraBold`；sharedassets2：`NanumBarunGothic`（均为 Sandoll/Fontrix 韩文字体，KS X 1001 汉字集约4888字）。
- 推论：常用汉字大多能显示（与KS汉字集重叠），生僻字变豆腐块。**译文必须用常用字**；后期可对字体 cmap 做覆盖校验门。
- 日文假名显示源：Nanum 无假名，待查（可能 Arial/Liberation 兜底或另一字体，暂不阻塞中文）。

## 路线
- **B 路（主力，已验证）**：metadata 按内容等长替换（超长列清单不碰）→ dumper 回载一致（11692条、`dump.cs` 369121行）。脚本 `tools/transB_trial.py`（TSV：KO<TAB>CN，自测5/5）。
- **A 路（改道中）**：原 hook set_text 不可行（零静态调用者，入口禁碰）；候选 InItTrans 数组内容替换；字典存储链 open（.so 死区仅8处零散≤1796B，无11KB连续）。
- B 路 trial 产物：`D:\tmp\out_trial2\`、`D:\tmp\meta_trial.dat`、`D:\tmp\so_trial.so`。

## 中文机翻覆盖韩文位（v20cn，2026-09-12 设备验证通过）
- 成果：`repack/necr_menu_v20cn.apk`（50.9MB，v1+v2签名，SO/DEX与v19逐字节一致），韩文位全部显示中文（语言选择界面`中文版`按钮→开场→村庄→教程→关卡→战斗），logcat仅剩原生1条Text漂移警告（v19同款`160/164`）。
- 范围：metadata 349条（`trans/work/tsv_full.tsv`：batch1 217 + batch2 132，其中13条raw-`\n`覆盖）+ 场景384条（`trans/work/tsv_scene.tsv`：level1 2 + level2 180/177 + sharedassets2 15）。
- 字形门：繁体优先（Nanum并集4621字，简体`你/吗/呢/啊`等缺字），`tools/trans_cmap_report.py` 0 bad lines；`000`占位符保留；CJK标点全角化。
- **铁律（设备用崩溃换来的）**：场景序列化字符串**禁止重写长度字段**！transB2（metadata扁平表）可重写len；transB3（场景）必须保持`int32LE(lenKO)`不变、内容`CN+空格`垫到lenKO。重写len会导致Unity按消耗字节校验错位→`serialization layout (Read X expected Y)`连刷→某对象读出约3GB分配→`Could not allocate memory...TempOverflow`→Loading.Preload线程SIGTRAP tombstone（英文位/韩文原包不崩溃，中文位2/2崩溃，对照定位）。
- 工具链：`tools/trans_join.py`（ID→KO精确join+冲突/超长门，输出两TSV，TSV内`\n`转义为`\\n`）、`tools/transB2.py`/`transB3.py`（整条目替换，transB3已加`.bak`排除+保长语义）、`tools/report_b3.py`（场景命中枚举，只读）。
- 备份：src树`pre-cn.bak.*`（54场景+metadata）均为回填前原字节（已验hash）；tree level2漂移孤本`logs/level2_tree_pristine.pre-cn.bak`（tree版level2比src少`성공 확률/소환 보너스/수락`3串，属原生版本差，非翻译缺口，保持不动）。
- 坑：transB3的glob曾把`.bak-pre-cn`备份也打补丁（已修：跳过含`.bak`的文件名）；打包树`assets/bin/`下勿留`*report*.txt`/`.bak`（会被打进APK，v20cn曾因此多出6MB）。
- 源文件：`trans/work/ko.txt`（356行ID锚）、`mt1.tsv`（batch1）、`cn_batch2_id.tsv`、`cn_scene_idx.tsv`（`中文版`等长9B优于`中文+空格`）、`cn_rawfix.tsv`（13条raw-`\n`覆盖）、`scene_only.txt`（36条场景独有）。

## 简体中文版（necr_menu_sc，2026-09-12 设备验证通过，用户授权）
- 成果：`repack/necr_menu_sc.apk`（50919093 B，`cd317adc…`，v1+v2签名，SO/DEX=30543200/648052与v19一致），全链路简体无tofu（语言选择→开场→村庄→教程→10关卡→进图战斗→AUTO 30s+），logcat仅原生`160/164`一条。
- 管线：对照表`*_sc.*`（349+384，0超长）→transB2重打metadata（6032980 B，md5=`7e18e26e`）→transB3保长重打场景（src 197/tree 194，与繁体同数）→新包名构建（v20cn包 untouched）。
- **最大发现1（字体）**：双Nanum各缺165简体字形（fontTools直读cmap：17666/18582，TTF 4.53/4.19MB，长度前缀=int32LE紧贴字前），但设备**零tofu**——Unity动态字体在Android有系统兜底（Noto CJK）。结论：cmap门只是咨询性质，设备才是终裁；**字体手术不需要做**。TTF注入方案（子集化删闲置谚文+merge 165字+零垫保长）已备而不用。
- **最大发现2（缓存）**：游戏读`files/il2cpp/Metadata/global-metadata.dat`机内缓存（首次运行解包常驻）。更新metadata后`install -r`不刷新，必须`adb push`到该路径+force-stop，或整包卸载重装（本次即卸载流，包内=机内=7e18e26e已对齐）。
- 澄清（实测打回越权子代理三点）：①“139条KO仍韩文”不实——metadata内KO字节零残留（抽查`봉바 상점에서는/제왕력 725년/스킬이 비어있습니다`全灭；20条ko.txt未覆盖=7条字体测试串+1条控制串+12条raw-`\n`归一化假象）；②“B3场景无需重跑”不实——场景197/194命中且关卡名/按钮全走场景；③ 其`trans_final.py`/SKIP表/`meta_mt1.dat`在本管线不存在。
- 诚实记录：trad终包pid 5533在验证后闲置期死亡一次（logcat留FATAL、无tombstone留存、不可复现；后3个会话含战斗soak全程无崩；与v19已知偶发一致，非保长翻译的确定性崩溃签名）。

## 对话排版（三期：断句重构，包c9525741已验证）
- 病因：NPC对话气泡经59文件+全堆双证，是代码动态创建的Text（无场景组件可改），右对齐是原版设计；唯一能动的是串内容。
用户裁图那句`在奉巴商店\n能买到怪物…`是5字+15字的瘸腿断句（断点照搬韩文长度），短行缩在右边显得版式碎。
- 改动（纯文本层，零二进制风险）：298条改单行`在奉巴商店能买到怪物，有时还有稀有怪物。`（63B≤韩文103B），两TSV齐改，
pristine重打metadata（349/0，6032980不变，md5=52105922）。
- 设备证明（`repack/necr_menu_sc.apk` c9525741，install -r+清缓存）：堆上该串=完整单行21字+空格垫，旧双行版消失；
pid 5151村庄正常。一个短气泡单行显示与`奉巴饿了。`同式（已验证紧凑正常）。
- 256条（莉莉`用那邪恶…/去拯救…`）故意不动：13/11两半均衡，断句是原文语气的停顿；其“错位”在整屏下面板是左对齐满宽，
11字不可能溢出，应为裁图观感。若整屏仍见错位，发整屏按真bug查（疑NPCManager代码路径）。
## 居中排版（二期：4按钮，以包内实物为准，包229b77d3已验证）
- 依据：用户指定根据`repack/necr_menu_sc.apk`排版。开包验明：level2=606228(md5 4ada8496→本期3080a791)、
metadata=6d41efd8（空格垫）、SO=2f1660b1(v3)；包内确认一期`增加成员`A=4已装机。
- 本期（4个int，src/build两树齐改，尺寸不变）：`入场`@0x6DDC8:0→1、`卖掉`(第三处,前两处已是4)@0x7CBD8:3→4、
`选择形象`@0x73C60:3→4、`排除`@0x88D38:3→4。列表行/气泡/商店描述一律不动（靠左或原右对齐是正确排版）。
- 设备证明（`repack/necr_menu_sc.apk` 229b77d3，install -r）：包内level2四处对齐值复核OK，pid 4761冷启动村庄正常，
中文/存档全正常。四个按钮散布各UI（副本入口/出售/形象/编队），请用户玩到时顺手确认，有不顺眼的报名字我单点回滚（改回1个int即复原）。
## 居中排版（一期：增加成员按钮，包53f41478已验证）
- 背景：用户要部分中文居中、全权委托排版。中英逐像素审计结论：背包/商店/气泡与英文原版对齐完全一致，无回归性偏位；
居中=改原版设计。另普查level2全部341个Text组件（自研指纹：FontSize/Style/BestFit/Min/Max/Align…11字段+1.0f行距+len），
按钮字几乎全已是MiddleCenter(4)，列表行保持靠左（居中反而难看）。
- 改动（最窄1个int）：怪物详情`增加成员`按钮（全场唯一MiddleLeft=3的按钮字）@level2文件偏移0x59D30：3→4(MiddleCenter)，
src/build两树同偏移齐改，文件尺寸606228不变（只改值不改结构，无序列化错位风险）。
- 设备证明（`repack/necr_menu_sc.apk` 53f41478，install -r）：pid 4389冷启动进村庄正常，中文/存档/导航全正常。
按钮本身位于怪物详情面板（需用户打开复核，附截图即算验收）。
- 刻意不动：商店行标题/描述（列表靠左是正确排版）、属性块标题+5行（运行时合成串，组件无法在205个候选中唯一确定，
盲改风险>收益；用户若仍要该块居中，圈一张图我就定点改）。
## 背包召唤物词条NUL截断修复（transB2空格垫，包3dbe2156已验证）
- 症状（用户截图）：怪物详情`额外属性`行裸奔`<color=#FFFB69FF>`标签、5行属性全空；另报`奉巴锁了。` toast措辞怪。
- 定因（frida堆扫描实锤）：合成串=`<color=#FFFB69FF>额外属性\0\0\0\0</color>\n额外攻击力\0\n1372…`——transB2.py:56用
`b'\x00'`垫短替换，NUL进C#串；Unity原生富文本扫描遇NUL即停→标签按原文渲染、NUL后全部截掉→与截图逐字一致。
transB3场景早就是空格垫（一直正常），本次只是把metadata对齐到已验证的正确模式。
- 修复（最窄）：transB2.py仅改垫字节`\x00`→空格+注释1行；pristine bak重打metadata（349/0，6032980 B不变，
md5 7e18e26e→6d41efd8；3611字节差异全是垫字节，逐字节diff证无其他改动）；SO未动（仍v3=2f1660b1）。
- 设备证明（`repack/necr_menu_sc.apk` 3dbe2156，install -r存档完好3亿金币）：堆上合成串=
`<color=#FFFB69FF>额外属性    </color>\n额外攻击力 1372\n额外生命 9604\n额外回复 196\n额外攻击速度 32\n额外移动速度 32\0`，
零内嵌NUL，标签闭合，5行齐全。渲染按同代码英文路径必正常（英文同面板正常）。
- 回归：开场/村庄/怪物商店/背包/存档全正常，pid 3499存活，logcat对3499零异常。
- 待用户复核：①打开怪物详情看5行是否显示、标题是否黄色无标签；②`奉巴锁了。`toast（数据文件/TSV双无此串，疑为NUL截断的合成残段或UI重叠，修后应恢复全串或消失，复现时截图给我）。
## $6.99闪退→发放修复（OneChance守卫v1→v2→v3，简体包已带补丁验证通过）
- 症状：点IAP商店`限购一次/去广告+黑魔女/$6.99`即SIGSEGV fault addr 0x15进程死；$0.99等正常。
- 定因（script.json PC反查+反汇编+场景字节三重锁定）：按钮`01_onechance`的onClick持久监听调`CashShopManager.OneChance()`（RVA=Offset 0x9A479C，实例无参），但序列化带了陈旧int参数1，运行时this==0x1（非null！）；入口`ldr r4,[r4,#0x14]`（this.oneChanceButton，dump.cs字段0x14）读[0x15]崩。trad/简体/原版v19三次回溯逐PC一致（0x9a4848→0xb42ea4 InitiatePurchase→UnityEvent→输入链），与翻译无关（出厂数据bug）。
- v1（cmp r4,#0）漏过0x1，崩溃后移+4到0x9a484c——设备实测发现的，非纸上谈兵。
- v2（终版，`tools/patch_onechance.py`，断言原字+备份链）：0x9a4848 `cmp r4,#1`(E3540001) / 0x9a484c `ldrne→ldrhi`(85944014) / 0x9a4850 bne保持 / 0x9a4854恢复`bl throw`(EBE5E40C)。this==1走托管NRE（日志一行，存活）；this==0走set_interactable(0x13656c4)内托管NRE；有效调用逐字节同行。免farm（set_interactable是IL2CPP托管码，空引用只抛不崩）。
- 设备证明（`repack/necr_menu_sc.apk` 95e80d06，SO=ac4c1a5a，meta=7e18e26e）：商店确认打开后点$6.99，pid 9622存活，logcat仅`NullReferenceException at CashShopManager.OneChance()`，无FATAL/无signal 11。回归：开场/村庄/教程/关卡/战斗/AUTO全链正常。
- 回滚链：`logs/libil2cpp_so_pre-onechance.bak`(2916c4f2=v19) → `logs/libil2cpp_so_v1-onechance.bak`(a5453976) → 现src SO(ac4c1a5a)。注意build_menu以src/lib为准同步，补tree会被覆盖（已踩过一次）。
- v3（终版发放：跳UI块，`b 0x9a4868`=EA000006 @0x9a4848，0x9a484c恢复原ldr，备份`logs/libil2cpp_so_v2-onechance.bak`=ac4c1a5a，现src SO=2f1660b1）：
动因是用户报"不闪了但没效果"——prefs无OneChance键，证P3分发miss（r4长度≠12）+陈旧路径死于v2守卫，双无。
尾部审计：0x9a4868后与this无关（r4在0x9a4890被静态覆盖，各自空guard完好），跳过后陈旧监听自己变成发放路径，
与P3/商店/ID全解耦。设备证明（包3b31f3ba）：点$6.99后pid 10303存活、零FATAL/零signal/零NRE；
钻石0→102400（AddToDia(100)×P2的×1024，恰一次，无double）；prefs新增`ADPass=1`（去广告）/`OneChance=1`（限购旗）/
`diacost=102400`/`Player02On=1`（黑魔女，怪物页N角标）。四件套全到。副作用（MOD可接受）：按钮不置灰，可重复点重复领。
- 边界（诚实）：模拟器无Play，真实扣费流程无法端到端验证；补丁只动按钮回调，不碰InitiatePurchase/store链；
真机Play环境$6.99是否"扣费且到账一致"需真机测（模拟器里=白嫖四件套）。

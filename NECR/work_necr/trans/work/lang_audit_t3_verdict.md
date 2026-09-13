# T3 路径评审与可行 verdict（只读评审，不写补丁）

- 任务：necr-lang-audit / t3，评审人 route-reviewer
- 前置：t1（语言切换UI与字段映射）completed、t2（文本量与字体盘点）completed
- 方法：对 t1/t2 的关键断言做只读独立复核（dump.cs / script.json / stringliteral.json / prefs / 截图 / 工具脚本 / .so 零段扫描），不改包不构建
- 结论先行：t1/t2 证据几乎全 PASS；推荐路径 **B 主力 + B+ 溢出清单双轨**；C/A 判死留档

## 1. t1 评审表（语言切换链路）

| # | t1 断言 | 复核 | 说明 |
|---|---|---|---|
| V1-1 | 10+ 方法 RVA 三处一致（dump.cs==script.json==文件偏移） | PASS | 逐一核对 script.json：GameStart.Start 0x121A834 / WaitTheStart 0x121AA04 / SelectLanguage 0x121AAAC / GameLoad 0x121ACA0；TranslationManager Awake 0x13E309C / Start 0x13E3154 / InItTrans 0x13E3390 / ReStartTranNum 0x1400E98 / ReStartGame 0x1400F0C；UIManager L_SelectScreenOpen 0x1425104 / L_SelectReCheckScreenOpen 0x142512C，十进制 Address 与 RVA 十六进制逐个相符；dump.cs 侧 RVA==Offset==VA |
| V1-2 | 16 个 string[] + 8 个单语 string，偏移照录 | PASS | dump.cs TranslationManager 块逐字吻合：mainName 0x10、unitName 0x48、unitAB 0x80、skillName 0xAC、skillDescription 0xB0、skillSubDescript 0xB4、questDescription 0xC8、stageName 0xE4、stageQuestName 0xEC、textInfo 0x1BC、NotEnoughCostInfo 0x1C4、tutoText 0x1C8、NPC_BongbaTextList 0x244、NPC_lilyTextList 0x248、NPC_boyTextList 0x24C、pc_avatarTextList 0x250；单语 stageEnter 0xE8、miniText 0xF8、missionSlot 0x1C0、bossLevelText 0x22C、portalNameText 0x230、NPC 名 0x234/238/23C；curTrans 0xC、curTransNum 私有 0x254；GameStart TypeDefIndex 5995 字段 info/logo/curTrans/first/l_Select 偏移吻合 |
| V1-3 | TransNum 持久化键，prefs=0 / clean=1 | PASS | trans/trial/prefs.xml 第 448 行 TransNum=0；release_stable/playerprefs_clean.xml 第 138 行 TransNum=1；stringliteral.json 中 'TransNum' 恰好 1 条 |
| V1-4 | src 无语言选项（Java 层薄胶水） | PASS | src/res/values/strings.xml 仅 app_name 等，无语言项，语言选项在 Unity 侧 |
| V1-5 | 截图纠偏：cn_lang/cn_lang2 非语言选择器，L_Select 三按钮无正面捕获 | PASS | 独立直检：cn_lang.png=EN 开场剧情 + Enter 按钮；cn_lang2.png=EN 新手村 Tutorial（Roy/Portal/Let's first touch the portal），两张均非语言选择器（本轮视觉后端不可用，结论以 read_image 直检两张 + 既有证据为准） |
| V1-6 | 三语为韩/英/日，无中文槽位，高置信 | PASS | KO 356 / JA 去重 272 / EN 实机截图互证；lv2t 系模拟器桌面无关 |
| V1-7 | U1：0/1/2→KO/EN/JA 对应未确认 | PASS（诚实标注） | 不强行结论，候选 A（0=KO/1=EN/2=JA）vs B（0=KO/1=JA/2=EN），给 30 分钟动态裁决法 |
| V1-8 | 下标=语种索引，中置信（IL 体不可见） | PASS | dump.cs 方法体全空（IL2CPP 还原无函数体），结构推断合理，置信度标注诚实 |

附赠：U5 部分自证——二次确认屏文案字段就在 TranslationManager 直属 Text 字段：L_SelectDescription01 0x220、L_SelecAgree 0x224、L_SelecCancle 0x228（非 string[]，走场景 blob 管线，见 §3）。

## 2. t2 评审表（文本量与字体）

| # | t2 断言 | 复核 | 说明 |
|---|---|---|---|
| V2-1 | 11692 条/非空 11691/KO 356/JA 272/ASCII 10804/含CR-LF 111 | PASS | 独立重数逐项命中（含 Hangul/Kana/ASCII 判定复算） |
| V2-2 | KO 356=batch1 218+batch2 138；trans_align 358 行 | PASS | ko.txt 356 行；batches 两文件 218+138 行；trans_align 358=356+2 头（头行声明 CR normalized + 列头 KO/JA/EN/CN） |
| V2-3 | JA 去重 272 vs txt 262，交集 241，差 31+21，归一化/多行所致 | PASS（口径精化） | 关键发现：ko.txt/ja.txt 行带 8-hex-ID 前缀 + TAB，不去前缀直接比对交集为 0；去前缀后 raw 交集 241（31+21 与 t2 一致）；CR→' / '归一后 txt 侧 262 全匹配，仅剩 10 条 JSON-only JA。t2 方向正确，本评审给出精确口径——回填规则必须按此口径（见 §4） |
| V2-4 | KO 归一（3 条 Agent/Host ' / ' 等） | PASS | 去前缀 raw 交集 343，归一后 356 全对（13 条 CRLF 行） |
| V2-5 | union 4621 唯一 CJK；cn_fixed 286 字 0 缺字 | PASS | 独立复算：union 去重恰好 4621 且全 U+4E00–9FFF；cn_fixed 汉字去重 286，相对 union 缺字 0 |
| V2-6 | mt1.tsv 217 行全 TAB；cn_batch1 218 行 217 非空 | PASS | 解释 217/218 之差：1 空行（空 CN=跳过，符合 transB 语义） |
| V2-7 | out_trial2 回载一致；out_mt1 +2925B；meta 尺寸不变 | PASS | out_trial2 dump.cs/stringliteral 与 vanilla 同字节；out_mt1 独立 diff 恰好 217 条（1061153−1058228=2925B）；meta_mt1.dat=6032980B=原 global-metadata.dat |
| V2-8 | B 路工具链（等长+NUL，SKIP 40） | PASS | transB_trial 裸字节精确匹配（count==1 门，multi/overflow/missing 上报）；trans_final SKIP 集合数出恰好 40 行 |
| V2-9 | .so 死区 8 处零散 ≤1796B，无 11KB 连续 | PASS | 独立扫描 trial/libil2cpp.so（30543200B）：最大零段恰好 1796B@0x1bf6d6c；且 0x1b3b7f4（1568B）即 v19 TRAMP 禁区，实际可用更少 |
| V2-10 | A 路 hook set_text 不可行（零静态调用者） | PASS（表述精化） | 28 处 set_text 全是引擎/UIToolkit 侧声明（UnityEngine.UI.Text.set_text TypeDefIndex 5856 等），游戏自有类（TypeDefIndex 5945–6104）零调用点；hook 只能打引擎 setter，必拦截全 UI 文本→判死理由成立 |
| V2-11 | Nanum 两字体 + KS X 1001 约 4888 字；假名兜底待查 | 部分采信 | sharedassets split 明文无字体名字符串（序列化资产内），AssetStudioMod 结论本次未独立复核；但 cmap 0 缺字是独立证据；假名兜底未查——不阻塞中文，列残余风险 |
| V2-12 | batch1 已全换 217/0/0；batch2 138 长对话 CN 未译 | PASS | work/ 下无 batch2 CN 文件；字节预算 batch1 平均 38B/最大 92B vs batch2 平均 209B/最大 2235B，溢出风险判断成立 |

## 3. U1–U6 对路径结论的影响

- U1（0/1/2→语种对应）：**不影响 B 路方向**。B 路绕开选择器、中文寄生 KO 槽，用户须选韩语即得中文；30 分钟动态试验（改 TransNum 重进看界面语种）仍值得做，优先级 P1（决定用户指引写法）。
- U2（各数组长度）：降 P2。B 路不改变任何数组/表长度，等长约束与数组长度无关。
- U3（消费点全覆盖度）：P1，影响覆盖率声明。若个别 Text 直写字段未进 InItTrans，B 路会有韩文残留→B+ 清单加“实机截图扫尾”项。
- U4（单语 string 是否随语言切）：不阻塞。stageEnter/miniText 等多为英文直写（Portal/Enter/Tutorial 截图互证），v1 保留英文即可，P2。
- U5（二次确认屏文案归属）：**已部分自证**（L_Select* 三字段见 §1），确认需要 metadata + 场景 blob 双管线（B 系 transB + trans_final 已含），P1。
- U6（重进链缓存）：操作性影响。TransNum 持久化→测中文固定 TransNum=0；换 TSV 后重进即可（ReStart 链存在），P2。

## 4. 路径分级 verdict

- **B 路（metadata 等长全量机翻）——可行 ✅ 主力**。工作量：batch2 138 条机翻 + 逐条压缩（CN 字节 ≤KO 字节；batch1 先例：218 条中 6 条需 shorten 修 + 148 条术语修正）；cmap 门逐批；G1/回载门。风险：中低。零代码改动，天然遵守 v19 铁律（TRAMP 头两字不动、pop-pc/fp-sl-r7-r10 禁入购买路径体——翻译补丁不碰 .so 即天然遵守）；唯一前置：购买相关字符串审计并入 SKIP（见 §5）。
- **B+ 路（等长 + 超长清单）——可行 ✅ 与 B 双轨**。工作量：B + 溢出条 second pass（溢出条保持 KO + 记 UI 容忍清单）。风险：低（fallback 到韩文，无崩溃面；中文密度高于韩文，batch1 先例 0 溢出）。
- **C 路（新增 curTrans=3 中文槽）——不可行 ❌**。InItTrans 55KB IL 重写扩容 + SelectLanguage 扩展 + 三按钮 UI + 存档键 + 字体，全链条动代码：必撞 360 运行期签名派生密钥死路（E1–E20 全灭）与 v19 禁区；且无 IL 源码、stringLiteral 改表结构即破等长前提。否决。
- **A 路（运行时 hook）——判死 ❌ 留档**。游戏类零静态调用点，只能打引擎 Text.set_text（全 UI 拦截，需运行时语言判决 + 字体动态加载），依赖 Frida/Gadget 注入，与离线重打包目标冲突；任何 .so 代码改动走回壳校验死路。与 t2 一致。

## 5. 下一动手步

1. **购买路径审计**（v19 铁律前置门，翻译补丁同样遵守）：筛 KO 356 中与购买/SKU/收据相关串（ThisIsFakeReceiptData、dia*、CashShop 系等），有则并入 SKIP（效仿 40 舞台名 bisect 先例）。
2. **翻 batch2**：TSV `KO<TAB>CN` 无头，`#` 行跳过，空 CN=跳过；KO 列必须用 stringliteral.json **原始字节**（13 条 CRLF 行回填 `\r\n` 而非 ` / `，trans_align 归一列只做人眼对照，不得直接喂 transB_trial）；transB 裸字节 count==1 门，multi-hit 上报；长对话核对 `\n` 数量；ko/ja.txt 的 ID 前缀仅做行定位，不进 TSV。
3. **四门验证**：meta 6032980B 不变＋dumper 回载 11692 条/dump.cs 369121 行＋cmap 0 缺字＋MuMu TransNum=0 实机（进村/选关/购买回归 + 存档健康；Houdini pc=0 类误报不追字面）。
4. U1 动态试验与 U3 实机扫尾可在首批中文包出来后顺手做（P1）。

（备注：本轮视觉后端不可用，截图结论以 read_image 直检 cn_lang/cn_lang2 两张 + 既有证据为准；字体名 ASMod 结论未独立复核，见 V2-11。）

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

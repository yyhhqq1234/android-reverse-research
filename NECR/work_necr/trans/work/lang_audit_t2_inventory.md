# T2 文本量与字体盘点（只读）

> 任务 t2《T2-文本量与字体盘点》完整输出原样落盘。只读已有产物计数，未做写盘试验。
> 日期：2026-09-12；执行人：font-metadata；团队 necr-lang-audit。

## 1. 数量表

### 1.1 stringliteral 三语规模（`trial/out_vanilla/stringliteral.json`）

- 总量 11692 条，非空 11691 / 空 1。
- KO 356（JSON内含韩文条目数；= `trans/work/ko.txt` 356 行；= `trans/batches/trans_batch1_short.txt` 218 + `trans_batch2_long.txt` 138；= `trans/work/trans_align.txt` 数据行 356 + 2 头 = 358 行）。
- JA 272（JSON唯一值）vs `trans/work/ja.txt` 262 行（交集 241，差 31+21，归一化/多行 `\n` 所致，待 T1/T3 注意）。
- ASCII-only 10804 条。
- 含 `\r` 或 `\n` 111 条（含二进制 blob，其中英 Agent/Host 文本 3 条已归一为 ` / `）。
- `dump.cs` 369121 行 / 12.68MB（12684031B），`global-metadata.dat` 6032980B。

### 1.2 trans_align / batches / mt1 家底

- `trans/batches/trans_batch1_short.txt`：218 行（8515B，KO 平均 14.1B / 5.6 字，短词）。
- `trans/batches/trans_batch2_long.txt`：138 行（29046B，KO 平均 121.6B / 46.2 字，最大 2232B / 786 字，长对话）。
- `trans/work/trans_align.txt`：358 行（2 头 + 356 数据）。
- `trans/work/ko.txt`：356 行；`trans/work/ja.txt`：262 行；`trans/work/en_cand.txt`：9175 行（ASCII 候选，非翻译目标）。
- `trans/work/cn_batch1.txt` / `cn_batch1_fixed.txt`：218 行 / 217 非空（148 行术语修正，如关卡→副本）。
- `trans/work/mt1.tsv`：217 行（5842B）；`trans/work/transB2_report.txt`：replaced 217，overflow 0，missing 0。
- `trans/trial/out_trial2/` 回载：`dump.cs` 369121 行 / `stringliteral.json` 11692 条，与 vanilla 一致（B 路回载一致）。
- `trans/trial/out_mt1/`：`stringliteral.json` 11692 条（+2925B）/ diff 217 条，`trans/work/meta_mt1.dat` 6032980B 尺寸不变。
- `trial/tr_pages/`：p1–6.html + miss*.html（batch1 截图翻译用人眼通道）。
- `trans/trial/cn_*.png` 一批（cn_v1/shop/set/lang/enter/ko 等对照截图）。

### 1.3 Nanum 字体 CJK 覆盖与 4621 字 union

- sharedassets1：`NanumGothicExtraBold`；sharedassets2：`NanumBarunGothic`（均为 Sandoll/Fontrix 韩文字体，KS X 1001 汉字集约 4888 字）。
- `trans/work/font_hanzi_union.txt`：4621 字（13863B，单行，全 U+4E00–9FFF，去重后 4621）。
- mt1 / cn_fixed 去重汉字仅 286 字 ⊂ union；`tools/trans_cmap_check.py` 跑 mt1 结果 0 缺字。
- union 外 267 字（= 4888−4621）为 KS 集未覆盖估计；batch2 译文若用生僻字即豆腐块。
- 日文假名 Nanum 无覆盖（待查 Arial/Liberation 兜底，中文不阻塞）。

### 1.4 B 路等长约束与 A 路现状

- B 路（主力，已验证）：metadata 按内容等长替换（超长列清单不碰）→ dumper 回载一致（11692 条、`dump.cs` 369121 行）。
  - `tools/transB_trial.py`（TSV：KO<TAB>CN，自测 5/5；裸字节 NUL 填补，严格同短字节）。
  - `tools/transB2.py`（WHOLE-ENTRY 解析 stringLiteral 表，同短填补；batch1：217/217 全换、无溢出无缺失）。
  - `tools/transB3.py` / `trans_final.py`（场景 int32LE 长度 + NUL 填补，文件尺寸/对齐不变）。
  - batch1 经 `trans_shorten6.py` 修 6 行 + 148 行术语修正后收敛；batch2 138 条长对话 CN 未译，溢出风险高。
  - `trans_final.py` 跳过 40 行承重舞台名（portal/选关 key，bisect 证改名必崩村口，L21/22/36/37/38 组）。
- A 路（改道中）：原 hook set_text 不可行（零静态调用者，入口禁碰）；候选 InItTrans 数组内容替换（`TranslationManager` TypeDefIndex 6079，`InItTrans@0x13E3390` 55KB 初始化，9+ string[]；`GameStart.SelectLanguage@0x121AAAC` 收 0/1/2）；字典存储链 open（.so 死区仅 8 处零散 ≤1796B，无 11KB 连续 → 全量 CN 表塞不进 .so，只能走 metadata/场景 = B 系）。

## 2. 前 5 显示风险

- R1 豆腐块：译文汉字超出 4621 union / KS 集即缺字形；batch2 138 条长对话用字未收敛，必须 cmap 门逐批过。
- R2 等长截断 / NUL 残留：超长 CN 被拒换（保持 KO）或填补不当，长对话尤甚；batch1 已靠 shorten6 收敛，batch2 需逐条压缩。
- R3 字节精确匹配陷阱：`\r\n` 归一化串对不上 transB 按字节匹配；KO 列须经 `stringliteral.json` 反查原始字节回填（对照表已归一为 ` / ` 的 3 条英文值即例）。
- R4 承重舞台名：40 行 portal/选关 key 改名崩村口，v1 须保持韩文（trans_final SKIP）。
- R5 布局溢出：短按钮按 KO 宽度排版 + 固定对话框，CN 换行/字号/占位符（`%d`/`{0}`）错位；假名兜底字体未定，混排需截图复核（cn_*.png 通道）。

## 3. 执行说明

- 只读执行，无写盘试验；计数均为读取现有产物（`trial/out_vanilla/`、`trans/batches/`、`trans/work/`、`trans/trial/`、`tools/trans*.py`、`TRANS_NOTES.md`）。
- 韩文字节住 `global-metadata.dat`（.so 内零命中）；stringliteral 地址为运行时编址，不可当偏移，B 路按内容搜索定位。
- 对齐结论引用既有档案：位置对齐证伪（指纹 1/12，表不等长）；内容指纹（数字/占位符/长度）v0。

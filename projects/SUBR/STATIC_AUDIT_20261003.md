# SUBR ESP 静态审查 — 隐性Bug清单（不进局，纯静态，2026-10-03 20:15）

> 范围：`esp_mod/jni/hack.cpp`（1295行，当前已含第6/7轮修复）+ `make_mod_apk.py` + `Android.mk/Application.mk` + `script.json/dump.cs` 交叉验证
> 结论：hook/引擎偏移全对；`W2S eye=2`/`Raycast 0x1A51B5C/hit+28`/`orbit 0x18+0x20/0xE8+0xEC+0x8C+0x90`/`muzzle 0xB8/err 0x64`/`used 0x98` 全对。隐性Bug共12项，按严重度排序。未改代码，只给定位+修复段。

## 🔴 S1 骨骼边表错 — 腿从未绘制，手臂串线（hack.cpp:756-757）
- 现状 `B[]={10,9,8,7,0, 11,13,15,17, 12,14,16,18, 1,3,5, 2,4,6}`（19骨，对），但 `E[][2]` 17条边最大索引16，`17/18`（右小腿/右脚）永不引用；`{8,9}/{8,10}/{8,11}` 把左手连到右肩/右大臂/右小臂，正确应为胸连右肩。
- 后果：骨骼永远半身（躯干+手臂乱连+无腿），远看像“骨骼没了/残了”，与本次主诉同类。
- 修复（替换E表，建议腿+手臂全连，19骨→18边）：
```cpp
static const int E[][2] = {{0,1},{1,2},{2,3},{3,4},{2,5},{5,6},{6,7},{7,8},{2,9},{9,10},{10,11},{11,12},{4,13},{13,14},{14,15},{4,16},{16,17},{17,18}};
```

## 🔴 S2 物品洪水挤掉敌人框（hack.cpp:806-820, 655/983-989）
- `scan_collect(item,160)` + 每物品4段 `lseg` = 640 DrawCmd，`ldraw/local/g_draw` 上限400，先画的敌人框被后画的物品顶掉（`lseg` 静默丢弃）。
- 后果：开 `Item ESP` 的局，敌人框随机消失，关物品即恢复，极易误判为“矩阵没了”。
- 修复：物品限40个最近（按 `e.dist` 排序或先计数截断），或死体/物品共用第二预算：
```cpp
int itemN=0; for(...) { if(e.kind!=K_ITEM) continue; if(itemN++>=40) break; ... }
```

## 🔴 S3 hk_shoot 无SEGV保护（hack.cpp:958-999）
- `compute_frame` 有 `sigjmp(g_jb)+g_armed` 兜底，但 `hk_shoot`（`ShootByScript` 内连调 `ic_get_pos/ic_get_rot/ic_look_rot/ic_set_rot`）不在保护内；`alive()` 自身 `memcpy` 也可能踩未映射页，而 `g_armed` 此时为0，`sev_handler` 直接放行→真崩溃。
- 后果：开 `Silent/Aimbot` 后随机闪退，`tombstone` 指向 `libil2cpp+get_position/set_rotation`，与ESP无关却背锅。
- 修复：`hk_shoot` 入口加 `g_armed=1 + sigsetjmp`（或最简：只在 `try{...}catch(...){orig_shoot}` 内做姿态快照，失败直接 `orig_shoot`）。

## 🟠 S4 自杀门 3m 吃掉近战敌人（hack.cpp:501）
- `if (d2 < 9.0f) continue;` 剔除3m内一切（含敌人），TPS相机在本地玩家身后~4m，3m门本意剔自己，但霰弹/贴脸敌人也在3m内→贴脸无框。
- 修复：收紧到 `d2 < 1.0f`（1m），本地玩家靠 `K_PLAYER` 跳过+`dedupe` 已够，远好于3m一刀切。

## 🟠 S5 去重 0.5m 吃掉跳伞/出生集群（hack.cpp:502-507）
- `ex*ex+...<0.25`（0.5m）判重，跳伞/出生点敌人密集<0.5m→只留一个框，其余 perceived missing。
- 修复：收紧到 `0.09`（0.3m）或只对同 `kind+hpk` 去重。

## 🟠 S6 GL 顶点属性指针未恢复（hack.cpp:1089-1127, 1022）
- `gl_save/restore` 保了 `prog/abuf/viewport/blend/depth/cull/scissor/attr0使能`，但 `glVertexAttribPointer(0,...)` 改的是属性0的指针/步长/类型，恢复只改绑定不改指针→游戏下一帧用属性0时读到我方VBO（人物模型拉扯/花屏一帧）。
- 修复：`save` 加 `glGetVertexAttribiv(0,GL_VERTEX_ATTRIB_ARRAY_SIZE/TYPE/STRIDE/NORMALIZED)` + `glGetVertexAttribPointerv(0,GL_VERTEX_ATTRIB_ARRAY_POINTER)`，`restore` 原样写回；或切独立 `attrib 1` 给ESP用。

## 🟡 S7 骨骼预算固定前6名饿死其余（hack.cpp:698/765-766）
- `skelBudget=6` 每帧重置但 `ents` 顺序固定（scan顺序），永远前6个全骨骼，其余永远脊柱线。
- 修复：帧轮转 `static int rot; for(i...){idx=(i+rot)%nEnt}` + `rot+=6`，肉眼即全员全骨骼。

## 🟡 S8 FOV圈与物品同桶变色（hack.cpp:1000-1003, 790-804）
- `ORNG{1,0.55,0}` 落 `bucket3 yellow`（`col0>0.9&&col1>0.5`），与物品 `YELL` 同桶同色 `COL[3]`，FOV圈变黄易误读为物品。
- 修复：桶判前加 `else if(d.col[0]>0.9f&&d.col[1]>0.4f&&d.col[1]<0.7f) bucket=6` 或FOV单独色（建议橙 `{1,0.4,0}` + 第7桶）。

## 🟡 S9 REG_HOOK 在compute期间丢注册 + reg过期66ms（hack.cpp:915-921, 200-204）
- `if(g_owner) return` 丢弃compute窗口内（~5-10ms@30Hz）的全部 `Update` 注册；`reg_expire<=2帧`（66ms）+ scan 1Hz主导，reg fallback基本不可用（scan空时 `hpk=0` 无骨骼无血条）。
- 现状可接受（scan主导），但 `watchdog` 只重置 `g_scan_image` 不重置 `g_ty*/p_find_of_type`，场景切换后 `Type` 可能 stale→`scan_collect` 返回空数组→回落到残废reg→“进新图ESP全空”。
- 修复：`watchdog` 内同步清 `g_tyPHM/Zombie/Boss/Monster/Item/AI/Orbit=NULL; p_find_of_type/2=NULL; g_core_image=NULL`，强制下一帧重建。

## 🟡 S10 Monster无死亡判定（hack.cpp:528, 589-600）
- `hpk4` 永远 `known=false`→`dead` 永假，死怪尸体永久红框+骨骼（与 `hpk2/3/5` 白盒逻辑不一致）。
- `MonsterEnemy` dump无血量场，建议用 `alive()` + 位置冻结（两帧 `root` 差<0.02且 `anim` 无效）判死，或暂标 `TODO` 不判死（现状）但文档注明。

## 🟡 S11 AIController.head@0x1E0 从未使用（hack.cpp:551-572）
- `hpk2` 只用 `TarHead@0xF0` + `anim@0x20` 骨骼头，`head@0x1E0` 闲置；`TarHead` 为空且 `anim` 为空（LOD/载具内）时回退 `+1.55m` 对蹲/趴/开车偏短→框偏矮。
- 修复：`TarHead` 为空时先试 `head@0x1E0`，再试骨骼，最后才 `+1.55`。

## 🟢 S12 e.dist 闲置 + w2s日志不足（hack.cpp:511, 617-631）
- `e.dist` 自第6轮加入但第7轮回滚后不再使用（仅占内存，无害，建议留给S2物品截断排序用）。
- `w2s_logged<3` 只记前3个，回归定位不够；建议按类各记1条（AI/Zombie/Boss/Monster各首个 `root/w2s/hv/dead/anim`）。

## 已验证无误（本次静态确认，不用动）
- 8个hook偏移与 `script.json` 一致：`GC 0xcd6544 / Menu 0xb29e0c / AI 0x16ad950 / Zombie 0xb367a0 / Boss 0xce9a84 / Monster 0x9ba7e8 / PHM_Start 0x1aa4f28 / Shoot 0xd39eec / Item 0x1a9f098`。
- `W2S eye=2(Mono)` 6处全对；`Raycast 0x1A51B5C(origin,dir,hit,maxD)+hit+28` 对；`orbit player 0x18+off 0x20 / H 0xE8 V 0xEC / maxV 0x8C minV 0x90` 对；`muzzle 0xB8/err 0x64` 对；`used 0x98` 对；`Zombie 0xB0/0xB9 / Boss 0xC8/0xD1 / AI 0xE4+0xF0+0x20 / Monster 0x20+0x70 / PHM 0x18+0x98` 对。
- `make_mod_apk.py` 只换 `classes4.dex` +追加 `libSUBRESP.so/classes5.dex`，`resources.arsc/manifest` 逐字节保留，`STORED` 给so可mmap，正确；`Application.mk arm64-v8a/api22/c++_static/O2/hidden` 正确。

## 建议顺序（不动游戏，只改码）
1. S1骨骼边表（1行，最像“骨骼没了”） 2. S2物品截断（3行，最像“框没了”） 3. S3射击保护（防闪退背锅） 4. S4/S5门限（各1数） 5. S6 GL指针（6行） 6. S7轮转+S8分桶+S9看门狗全清+S10/S11注明。全部静态可改，不需进局即可合入，合入后一次重建重装即验。

## 第二轮（R1-R7，2026-10-03 20:19 已合入重装）
- R1 双驱动节流分源（menu/game各33ms， was共用starve）
- R2 开关volatile（UI写/游戏读可见性）
- R3 混合方程存取（特效MIN/MAX不再被改）
- R4 scan+看门狗进guard（双线程use-after-free消除）
- R5 reg窗口90帧（Start注册不再66ms过期）
- R6 S3二次加固（armed全程+catch吞弹 Rosenberg：崩溃改丢一枪）
- R7 S6续blend方程（与attrib指针同批）
- 构建: NDK0+SURGERY+ALIGN+SIGN0 16384 Success 8/8+ready1


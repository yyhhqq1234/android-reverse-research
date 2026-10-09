# SUBR ESP/静默自瞄 算法全面审查（只审不改）
> 时间：2026-10-03 22:1x｜对象：`esp_mod/jni/hack.cpp`（1485 行，第 13 轮状态）｜设备：127.0.0.1:16384
> 本轮按操作者要求 **只出结论，不改代码**。所有结论标证据等级：[已证]＝纯代码可判；[待判]＝需一次实局日志定点。

## 0. 症状 → 代码 → 因果链（速查）

| 症状 | 代码位置 | 因果链 | 等级 |
|---|---|---|---|
| 方框在骨骼右侧 | `hack.cpp:663` + `:874-884` | 方框锚在「组件 transform + 兜底头(+1.55m)」，骨骼锚在真骨骼；两者不是同一坐标系原点 → 横向固定偏移 | 已证(锚点不一致)＋待判(偏移量) |
| 方框随镜头俯仰变大变小 | `hack.cpp:873-884` | 顶=兜底/伪点、底=重投影点，2 个锚点的世界间隔不是刚体；再叠加 `hh` 钳 `sh*1.5` 跳变 → 尺寸随俯仰跳 | 已证 |
| 静默自瞄永远固定高度 | `hack.cpp:674,681` | **`e.head` 在 663 行被写成 `p.y+1.55`，而 674/681 行判定条件 `e.head.y == p.y` 恒假 → `head@0x1E0` 与骨骼头两条路径永不执行**，hpk2(AIController) 头部永远是 root+1.55 定高 | **已证（死代码）** |
| 骨骼正常但 hpk2 无骨骼 | 同上 | 直读 `anim@0x20` 只在 `TarHead@0xF0` 分支(671)里赋值；TarHead 为空时 `e.anim` 保持 NULL → 该类无骨骼可画 | 已证 |
| 不区分弹道能否打到 | `hack.cpp:863` + `:411-425` | `vis` 只用于红/灰着色，但：射线从 `pivot`(玩家)发出非枪口、容差 2m 过宽、`ic_ray` 命中与否无任何日志 → 无法证明射线真的在判遮挡（可能恒 RED 或恒 GRAY） | 已证(设计不足)＋待判(实际值) |

## 1. 方框算法（当前实现，逐行）

```
856  feet = W2S(e.root)            // root = 组件 transform 世界位置（非骨骼）
857  head = W2S(e.head)            // e.head = 各门类分支解析（可能是兜底定高点）
859  z<0 → 丢；860 在屏 → EITHER 判（近距放宽）
873  worldH = e.head.y - e.root.y
874  if 0.05 < worldH < 1.0:  feet = W2S(head - 1.7m)   // 「世界贴地」
879  hh = |head.y - feet.y|       // 屏像素高
880  hh<=2 → 丢；hh>sh*1.5 → 钳
883  ww = hh * 0.45
884  x = (head.x+feet.x)/2 - ww/2 ; y = feet.y
885  col = vis ? RED : GRAY
```

### 已证缺陷
- **B1 锚点体系不一致（根因）**：方框用「组件 transform + 解析头」，骨骼用 `Animator.GetBoneTransform`。骨骼你已确认正确 → 骨骼是可信原点，方框不是。凡 `e.head` 不是真头骨时（兜底 `+1.55`、或 `TarHead` 指向非本体的 transform），框顶就错位；横向偏移量与俯仰强相关（屏 x 偏移 = 世界横向差 ÷ 深度，头/脚深度不同 → 俯仰时偏移量变化），与你的观感完全吻合。
- **B2 兜底头是「刚体常量」而非骨骼**：`+1.55m` 对蹲/趴/车载/攀爬全部错，且**在屏幕空间恒为同一像素高度**（对同一距离）→ 视觉上「框不随敌人姿态变」。
- **B3 `hh` 钳位造成跳变**：`hh = sh*1.5` 一进入近距就截断，俯仰让 `hh` 反复越界 → 框高在「真实值/钳位值」间跳，正是「随镜头变大变小」。
- **B4 「世界贴地」启发式不可靠**：阈值 `worldH<1.0` 是拍的；命中时把底换成 `head-1.7m` 这个**伪点**，该点可落到相机后方(`f2.z<0`) → 该帧退回未贴地底 → 逐帧翻转；且它只在 `worldH<1.0` 的类别生效 → 不同敌人框顶体系不同。
- **B5 宽度由高度推**：`ww = 0.45*hh`。俯视/仰视时屏高被透视压扁，而敌人横向仍很宽 → 框变细条。
- **B6 中轴取 head/feet 两点平均**：身体倾侧/奔跑时不是骨骼 bbox 中心，视觉上「框偏离人」。
- **B7 死体标记**用 `root` + 固定 14px，与活体框体系不一致。
- **B8 绘制队列无优先级**：`DrawCmd` 上限 400，方框与物品(40×4)、FOV(30)、死体(30)共池；敌人多时方框会被后画的顶掉。

### 修复方向（方案，待批）
1. **统一锚点 = 骨骼 bbox**：每帧对同一实体算 `bones[]` 投影，取 `minX,maxX,minY,maxY` 作框（有骨骼时）；无骨骼时才回退 root/头骨。
2. **无骨骼类别**：底= root（脚）或 `RootBone`，顶= `root + classHeight`（AIController 1.8 / Zombie 1.7 / Boss 2.4 可由 dump 或实测定），**并且** 用同一世界竖段投影，不做屏幕空间加法。
3. **删掉「世界贴地」启发式与 `hh` 钳位**；改为 `hh<=2` 只丢真远点，近距不钳（超屏由 GL 裁剪即可）。
4. **框宽**：有骨骼用双肩宽投影；无骨骼用 `hh*0.45` 但仅在 `hh<sh*0.6` 时。
5. **中轴**：`x = (minX+maxX)/2`。
6. **优先级**：敌人框先入队，物品/FOV 后入队（或 `MAX 400` 提到 768，`DrawCmd` 16 float 不大）。

## 2. 骨骼算法（当前实现）

```
817  if e.anim && ic_get_bone && skelBudget>0:
822    B[19] = {10,9,8,7,0, 11,13,15,17, 12,14,16,18, 1,3,5, 2,4,6}
826    逐骨 GetBoneTransform(b) → transform → world → W2S，z<0/出屏 → 该骨无效
839    E[18] = 头部-颈-胸-脊-髋 + 双肩臂 + 双髋腿脚（图正确）
847    segments>=5 → full（消耗 skelBudget）
850    非 full → 退化画 head→feet 竖线 + 0.75 高位横线
```

### 结论
- **骨骼几何正确**（已证：B/E 映射经人工核对，19 骨 18 边，头/颈/胸/脊/髋/双臂/双腿/双脚全覆盖）→ 与你「骨骼位置正确」的观察一致。**骨骼是当前唯一可信锚点**，应作为方框与自瞄的基准。
- **S1 [已证] 抖动源**：`skelRot` 每帧 `+=6`，所以全骨骼实体集合逐帧轮换（6 个/帧）。同一敌人在相邻帧里，一帧 19 骨、下一帧退化 2 段 → 视觉上闪。
  → 方案：`skelBudget` 改为「按距离排序取最近 N」或固定集合 + 每 0.5s 轮换一次，避免逐帧跳。
- **S2 [已证] 无效骨过滤过严**：单骨 `s.z<0` 就丢该骨（而不是丢该段），近距时头/脚骨常越屏 → 段数骤减 → 触发退化分支 → 忽而全骨忽而竖线。
  → 方案：越屏不丢，保留坐标（GL 自然裁剪），仅丢 `z<0`。
- **S3 性能**：最多 6×19×GetBoneTransform/帧@30Hz ≈ 3400 次/s 托管调用。可接受但不经济；方案：按 animator 缓存 bone transform 指针 + 1s TTL + 有效性校验。

## 3. 静默自瞄算法（当前实现）

```
784  if aimbot||silent: 选「屏幕像素最近且在 FOV 圆内」的 hostile
788    只对 K_HOSTILE；789 死体跳过
790    s = W2S(e.head)            // ← 瞄准点 = e.head
792    出屏丢；795 进入 FOV 圆
798    if !los_clear(pivot, e.head) → 跳（用玩家位置判视线）
799    g_aimPoint = e.head
804  aimbot: 直接改写 ThirdPersonOrbitCam 的 angleH@0xE8 / angleV@0xEC（平滑 /sens）
1129 hk_shoot(ShootByScript): 取 muzzle@0xB8 → dir = aimPoint - muzzle → LookRotation → set_rotation
      · g_silent：吸附-开火-还原；否则 keep-on-target
      · 顺带把 shotErrorRate@0x64 清零再还原
```

### 已证缺陷
- **A1 [已证·核心] 瞄准点是「e.head」，而 hpk2 的 e.head 恒为兜底 `root+1.55`**（原因见 §0 死代码：674/681 条件恒假）。→ 你看到的「永远固定高度、不是头部」= 瞄准点就是一枚定高伪点。
- **A2 [已证] 视线判定用 `pivot`（玩家/轨道枢轴）而非枪口 `muzzle@0xB8`**：pivot 能看见、枪口被掩体挡住时会误判可打；反之亦然。弹道判定应从**枪口**发。
- **A3 [已证] 非枪械/非 TPS 相机时自瞄静默失效**：`orbObj` 取的是 `ThirdPersonOrbitCam`；上车/跳伞/开镜另有相机 rig（RCC_Camera / `MouseOrbitImproved`），此时 `orbObj` 或 `alive` 失败 → 自瞄不生效且无日志。
- **A4 [已证] 只挂 `ShootBehaviour.ShootByScript`**：若实际开火走 `Shooting/ShootWeapon/Update`（AI 与某些武器分支），静默自瞄不覆盖该路径；`shotErrorRate=0` 也无效。
- **A5 [已证] 无失败日志**：`shoot fix:` 只在 `len>2` 且 5s 节流时打；吸附是否真的改写成功、子弹是否吃到 muzzle.forward 无证据。
- **A6 [已证] 异常路径不还原 `shotErrorRate`**：SEGV longjmp 出去的帧会把散布永久清零（次要，但属状态污染）。
- **A7 [已证] 瞄准点不校验「属主」**：只按类别筛 `K_HOSTILE`，不校验目标是否已死（有 dead 判）、是否同一队伍（`team@0x234` 未用）。

### 修复方向（方案，待批）
1. **瞄准点 = 真骨**：`GetBoneTransform(10=Head)`，缺失依次退 `9/Neck` → `8/Chest` → 类专属 head 变换（`AIController.head@0x1E0`）→ 最后才定高兜底；并加「命中部位」开关（Head/Neck/Chest）。
2. **弹道判定从枪口发**：`los_clear(muzzlePos, aimPoint)`，容差收到 **0.3~0.5m**（2m 太宽），并校验命中物体属主（可选）。
3. **相机 rig 兜底**：`orbObj` 取不到时，直接写 `Transform.set_rotation`/相机旋转，或按 `Camera.main` 的 yaw/pitch 写回；至少打一条「aim: no orbit rig」日志。
4. **开火路径覆盖**：确认游戏子弹方向是否取 `muzzle.forward`；若不是，改挂开火函数（需先静态定位 `ShootWeapon/Shooting`）。
5. **失败可见**：`hk_shoot` 每次进入/改写/还原各打一条节流日志（1Hz）。

## 4. 遮挡/「弹道能否打到」判定（现状与目标）

当前：`e.vis = los_clear(pivot, e.head)`（863 行），只喂给颜色 `RED/GRAY`（885 行），方框与骨骼共用。
问题：[已证] 容差 2m；[已证] 起点 `from+1.2m`（<1.2m 目标恒「可见」）；[已证] 异常时 `return true`（失败放行）；[待判] `ic_ray(0x1A51B5C)` 的 ABI/命中是否真的生效（**无任何射线日志，恒红/恒灰都符合现状**）。

目标算法（三色 + 可打性）：
```
for each hostile:
  muzzle = ShootBehaviour.gunMuzzle@0xB8（本地玩家）
  hit, dist = Raycast(muzzle, normalize(aimPoint - muzzle), 0.3m 容差)
  canHit  = (无遮挡) && (dist <= gunRange) && (命中属主==该敌人 || 命中点在敌人包围球内)
  颜色：canHit → 红；可见但被地形挡 → 灰；超射程 → 蓝（可选）
  半径圈/虚线区分
```
验证判据：同一敌人走到墙后，`frame` 里 `vis` 计数应减少、`dbg` 里该敌人 `hd`(命中距离) 应 << `maxD`。

## 5. 其它顺带发现（同批确认，建议一并改）

| 编号 | 位置 | 问题 |
|---|---|---|
| M1 | `:674/:681` | **死代码门（本轮最关键）**：兜底先写 `p.y+1.55`，条件 `e.head.y==p.y` 恒假 → `head@0x1E0`/骨骼头路径永不执行 |
| M2 | `:663` | hpk2 用 `TarHead@0xF0`（语义疑似「AI 的目标头」而非「自己的头」）→ 需实证；稳解是只用骨骼头 |
| M3 | `:696/:708` | hpk3/hpk5 已正确用 animator→骨；但 `anim=0x0`(21:57 日志 Boss) 时无回退（应退 head 变换） |
| M4 | `:932` | 死体白框只判 `root`，未做 `vis`/距离分级 |
| M5 | `:411-425` | `los_clear` 三处 fail-open（异常/无 ic_ray/无命中）→ 全部显示为「可打」 |
| M6 | `:443` | `cam_score` 用 `depth` 做负分，UI 相机 depth 高会被压到 -100+，但**若世界相机 depth 也为负值**（Unity 允许）会误排 |
| M7 | `:884` | 方框 x 用 `head/feet` 平均，未用骨骼 bbox |

## 6. 修复优先级（按「症状闭环」排序，待操作者批准）

1. **M1 死代码门 + 瞄准点改真骨**（一行条件 + 骨骼头）→ 直接解决「自瞄定高」+「hpk2 无骨骼」+「方框顶错」三症。
2. **方框改骨骼 bbox 算法**（B1/B4/B6）→ 解决「框在骨骼右侧」与「位置不对」。
3. **删 `hh` 钳位 + 越屏不丢骨**（B3/S2）→ 解决「随俯仰变大变小」与骨骼闪。
4. **视线改枪口 + 容差 0.3m + 三色**（A2/L）→ 解决「不区分能否打到」。
5. **加射线/自瞄日志**（A5/L4）→ 让上述 4 条可验证；否则永远只能猜。
6. 次要：M4/M6/M7、`skelRot` 轮换降频、骨缓存。

## 7. 一次实局即可定点的验证清单（下一轮执行）

同一局、开 `Box+Skeleton`、平视 3s + 抬头 3s + 找一个敌人躲墙后 3s，然后取：
```powershell
D:\APK-Reverse\tools\platform-tools\adb.exe -s 127.0.0.1:16384 logcat -d -s SUBRESP | Select-String -Pattern 'dbg hpk|campick|frame' | Select-Object -Last 40
```
判据：
- `dbg hpk=2 ... anim=0x0 wH=1.55` → 证实 M1（hpk2 无骨、定高头）
- `dbg hpk=2 ... anim=0x... wH≈1.7 fscr/hscr 与骨骼位置差` → 证实 B1 的横向差
- `frame ... vis=?` 与墙上敌人同步变化 → 视线机制有效；否则 M5/L4
- `campick src=? fov=?` 确认世界相机（FOV 60 左右、非 51 菜单相机）

## 8. 结论一句话

三个算法里，**骨骼算法正确、可直接当基准**；**方框算法锚点体系错误（用组件 transform/兜底定高点而非骨骼 bbox）**，这是「框在骨骼旁边 + 框随俯仰变」的共同根因；**静默自瞄的瞄准点受同一处死代码门影响退化为定高伪点**，且视线判定用玩家枢轴而非枪口、容差 2m，导致「不区分能否打到」。修法是把三者统一到**骨骼/枪口坐标系**，并补日志使每步可证。本轮按要求未改代码。

---

# 附：R14 实机取证（决定性证据，2026-10-03 22:17-22:19，设备 16384，原始日志 `logs/r14_diag.txt`）

诊断构建（`esp_mod/patch_r14_diag.py`，临时型）：开关全关时 compute 仍以 1Hz 运行、且不发布绘制（屏幕干净），
只为取证。取证项：锚点(框心/骨骼心)、俯仰、射线命中、每类 head 解析结果。

## 证据 1｜hpk2 的 e.head = 本地玩家自己的头（TarHead 语义确认）

| 样本 | 敌人距离 | bot 根投影 fscr | 使用的 head 投影 hscr | bot 自身骨头顶 bh |
|---|---|---|---|---|
| A | 26 m | (1048,356) | **(634,320)** | (626.4,16.5,373.9) |
| B | 54 m | (1038,382) | **(633,320)** | (635.8,16.5,400.6) |
| C | 2 m | (452,-339) | **(636,320)** | (616.5,16.5,351.0) |
| 玩家自己(hpk1) | — | (611,-213) | **(636,320)** | — |

三个 bot 距离 26/54/2 m、根投影散布全屏，而 `hscr` 恒在 **(633,320)**，与玩家自己的 `hscr=(636,320)` 同点。
→ **`AIController.TarHead@0xF0` 是「AI 的目标头」＝本地玩家头**，不是 bot 自己的头。
→ 直接解释三症：① 框顶锚在玩家头上 → 「框不在敌人身上」；② 自瞄点也是玩家头 → 「永远固定高度、不是某个部位」；
③ `los_clear(pivot, e.head)` 变成「玩家→玩家自己」，近距 L<1.5 → `maxD=-1` 直接判真 → **`vis` 恒为 1，遮挡从不生效**（样本 A/B/C `vis=1`）。

## 证据 2｜死代码门 M1 确认（wH=1.55 精确等于硬编码兜底）

| 样本 | 距离 | anim | bonehead | wH |
|---|---|---|---|---|
| D | 213 m | **0x0** | 0 | **1.55** |
| E | 296 m | **0x0** | 0 | **1.55** |

`wH` 精确等于 `1.55`（就是第 663 行硬编码 `p.y + 1.55f`）→ 兜底发生、而 674/681 行的
`e.head.y == p.y` 判定恒假（1.55≠0）→ `head@0x1E0` 与骨骼头两条路径**从未执行**、`e.anim` 保持 NULL
→ 该类「无骨骼 + 定高头」。M1 由实机数据确证，非推测。

## 证据 3｜框心 vs 骨骼心横向差（「框在骨骼右侧」量化）

`dxMidSkel` = 框中轴 − 骨骼中轴：**-207 / -203 / +77 px**（样本 A/B/C）。
框心 = `(玩家头.x + bot根.x) / 2`（两个不同深度、不同实体的点），骨骼心 = (头骨+髋骨)/2
→ 差值随距离/朝向乱跳（-207 ↔ +77），既不是 0 也不是固定偏移，正是「框挂在骨骼旁边」的量化来源。

## 证据 4｜框高 `hh` 乱跳（「随镜头上下变大变小」量化）

同一构建下 `hh` 采样：**-36 / -62 / +659 / +6 / +27 px**（含负值）。
`hh = |head.y - feet.y|` 而 head 是玩家头（2 m 深度）、feet 是 bot 根（26~296 m 深度）
→ 两个锚点深度差两个数量级，俯仰一变两者屏距剧变 → 框高在「几百 px/几 px/负数」间跳，
再叠加 `hh>sh*1.5` 钳位 → 视觉上就是尺寸随镜头上下突变。

## 证据 5｜新增缺陷 R6：scan 与 reg 二选一，敌人整批消失

```
frame 5065 reg=0  ent=29 (player=1 hostile=0 item=28)   ← 只扫到物品
frame 6272 reg=17 ent=34 (player=1 hostile=0 item=33)   ← reg 已有 17 个实体，hostile 仍为 0
```
`compute_frame` 里 `if (g_scanN > 0) {...} else { 用 reg }` —— 只要扫描返回了任何实体（例如 33 个物品），
**注册表里的 17 个 AIController 就完全不被使用** → 物品多的场景敌人成批不显示（与「敌人矩阵没了」同源）。
正确做法是取并集（scan ∪ reg，按对象去重），而不是二选一。

## 结论（三症一因 + 一个新缺陷）

1. **hpk2 头部用错字段**（TarHead=目标头）→ 框错位/自瞄定高/遮挡失效，三症同源。
2. **M1 死代码门**（兜底先写头、后判定恒假）→ 兜底不可被覆盖，hpk2 既无骨骼也无真头。
3. **R6 二选一** → 物品一多，敌人整批不入框。
4. 骨骼算法本身正确（`bonehead=1`、`bh` 与 bot 根相差 1.5 m 合理），**它应当同时充当方框与自瞄的锚点**。

## 待批修复（一处改三症，未动手）

1. **hpk2 头改「自己的头」**：`e.anim`(=AIController.anim@0x20) → `GetBoneTransform(10/11)`；失败 → `head@0x1E0`；再失败 → `root+1.55`。同时用显式标志位替换 `e.head.y == p.y` 判定（消灭 M1）。
2. **方框改骨骼 bbox**：`x/y/w/h` 由同一批骨骼投影的 min/max 得出（与骨骼同源 → dx≡0）；无骨骼才退 root→root+classH。
3. **自瞄点 = 真骨**（10→9→8），并用 **muzzle@0xB8 发线**、容差 0.3 m 做可打性判定；`vis` 同样改由 muzzle 射线产生。
4. **R6**：scan ∪ reg 并集。
5. 验证：实机重跑 diag，判据 `dxMidSkel≈0`、`hh` 随俯仰变化 <15%、`vis` 在墙后翻 0、`rayhit=1 且 hd≈maxD`。

---

# 附二：R15-R19 修复与实机复验（2026-10-04 00:40 定版）

## 修了什么（全部有实机数字背书）

| # | 缺陷 | 修法 | 复验数字（前 → 后） |
|---|---|---|---|
| 1 | `AIController.TarHead@0xF0` 是「AI 的目标头」＝本地玩家自己的头（实机：3 个 bot 距离 26/54/2 m，`hscr` 恒 (633,320)，与玩家自己 (636,320) 同点） | hpk2 头部改「自己的头」：`anim@0x20 → GetBoneTransform(10/11)` → 退 `head@0x1E0` → 才 `root+1.75`；同时用显式 `headOk` 标志替换 `e.head.y==p.y` 死代码判定（M1） | `headVsBone` = **0.00**（原先指向玩家头，距离数十米） |
| 2 | 方框锚点与骨骼不同源（组件 transform+解析头 vs 真骨骼） | 方框改**骨骼 bbox**（Hips/Head/Feet/Shoulder 投影 min/max），无骨骼才退 `root→root+classH` | `dxMidSkel` **−207/−203/+77 px → −0/0/+1 px** |
| 3 | 框高随俯仰乱跳（`hh` 出现负数/几百 px） | 去掉屏幕空间「世界贴地」启发式与 `hh>sh*1.5` 钳位；`hh` 只 cull 退化值 | `hh` **−36/−62/+659 → 24/14/12/30 px**（随距离单调） |
| 4 | 遮挡/弹道判定恒真（`e.head` 是玩家头 → `pivot→head` 长度≈0 → `maxD<0` 直接判可见） | 射线改由**枪口/枢轴**发出 + 容差 **2.0 m → 0.35 m**；`vis` 同时用于方框与骨骼着色 | `rayhit=1 hd=35.5~78.7 maxD=35.8~79.0`（命中目标本体）；`frame` 里 `hostile=8 vis=6`、`hostile=3 vis=2` → **存在遮挡区分** |
| 5 | scan 与 reg **二选一**（扫描只拿到物品时，17 个已注册敌人全被弃用） | 改**并集** `scan ∪ reg`（按对象指针去重）+ 注册来源实体用 `il2cpp_class_get_name` 反推 hpk | `reg=17 hostile=0 item=33`（旧）→ 并集后同类场景敌人正常入框 |
| 6 | 叠加层坐标系（`Screen` 与 EGL surface 尺寸可能不同） | `eglQuerySurface` 取真实 surface + 着色器 `k` 缩放；`eglMakeCurrent(d,s,s,ctx)` + 绑定 `FB 0` | 局内实机 `surf=1440x810 k=1.000`（本机二者一致，属防御性正确）；菜单 `1920x1080` |

## 实机复验（2026-10-03 22:20 — 2026-10-04 00:37，MuMu 127.0.0.1:16384）

```
diag hpk=2 pitch=-0 wH=1.49 anim=0x… bonehead=1 headVsBone=0.00 boxMidX=961  skelX=961  dxMidSkel=-0  hh=24 dist=42  mz=0 rayhit=1 hd=39.6 maxD=39.9 vis=1
diag hpk=2 pitch=-0 wH=1.49 anim=0x… bonehead=1 headVsBone=0.00 boxMidX=1009 skelX=1009 dxMidSkel=-0  hh=14 dist=75  mz=0 rayhit=1 hd=72.5 maxD=72.9 vis=1
diag hpk=2 pitch=-0 wH=1.50 anim=0x… bonehead=1 headVsBone=0.00 boxMidX=894  skelX=894  dxMidSkel=0   hh=12 dist=81  mz=0 rayhit=1 hd=78.2 maxD=78.6 vis=1
frame 2308 reg=8 ent=9 (player=1 hostile=8 vis=6 dead=0 item=0) draw=117 drawn=166 cullZ=0 cullScr=1   ← 遮挡区分生效
frame 8950 reg=4 ent=31 (player=1 hostile=2 vis=0 dead=0 item=28) draw=38 drawn=52 cullZ=0 cullScr=0  ← 墙后 2 敌全灰
```

## 仍未闭环的一项（需要在你的屏幕上确认）

MuMu 的 `screencap` 在本机**看不到**我们的 GL 叠加层（局内 `glClear` 洋红探针：回读=洋红，但截图中 0 像素），
而菜单期能看到 → 判定为 **MuMu 截图/合成路径不包含 swap 前注入的绘制**，属截图工具限制，非算法问题；
真实显示路径（你的屏幕）此前能看到框与骨骼，说明叠加层本体是上屏的。已加防御：`makeCurrent(d,s,s,ctx)` + `FB0` 显式绑定（R18）。
另外 **mod 菜单里没有 `SUBR ESP` 分类**（只有 `player`，`Ascii.fixAll` 日志只收到 10 条原生特征；
`ModBridge.concat` 调用点在 smali 里存在，但菜单未呈现我们的 101–108 项），因此本轮把 **ESP Box / Skeleton 默认置为 ON**，
保证开箱可用；要恢复「菜单控制」需要修 `Menu` 的分类解析（下一轮）。

## 定版产物

- APK：`projects/SUBR/SUBR_esp.apk`（348,638,250 B，zipalign + apksigner v2/v3，已装机 16384）
- 补丁链（可复现）：`esp_mod/patch_r14_diag.py`（取证）→ `patch_r15_fix.py`（四项修复）→ `patch_r15e_scale.py`（坐标系）→ `patch_r18_bindsurface.py`（surface/FBO 绑定）→ `patch_r19_final.py`（拆脚手架）
- 证据：`logs/r14_diag.txt`（110 条实机 diag/dbg）

## 更正与端到端闭环（2026-10-04 01:10）

**更正**：我此前判定"菜单里没有 SUBR ESP 分类"是错的——分类在菜单列表里，**向下滑动**即可看到
（`SUBR ESP` 标题下：ESP Box / Skeleton / Item ESP 各带开关，Aim FOV / Aim Smooth / Max Dist 带滑块）。
据此已把 R16 的"ESP 默认 ON"改回**菜单控制（默认 OFF）**（R20），并实机验证菜单链路：

```
点 ESP Box 红点 + Skeleton 红点后：
hb src=1 ... tog(box=1 skel=1 item=0 aim=0 silent=0)      ← 菜单→JNI→原生开关 全通
```

**端到端局内复验（菜单开 ESP 后进局）**：
```
frame 41991 reg=0 ent=26 (player=1 hostile=2 vis=1 dead=0 item=23) draw=19 drawn=26 cullZ=0 cullScr=1
diag hpk=2 pitch=-0 wH=0.51 anim=0x… bonehead=1 headVsBone=0.00 boxMidX=858 skelX=858 dxMidSkel=-0
          hh=6 dist=105 mz=0 rayhit=1 hd=99.0 maxD=99.4 vis=1
```
→ 方框锚点=骨骼锚点（dxMidSkel=0）、头=自身头骨（headVsBone=0）、射线命中本体（hd≈maxD）、
遮挡分级生效（hostile=2 时 vis=1，另一个判为被挡）。

**产物**：`SUBR_esp.apk`（348,638,250 B，zipalign+apksigner，已装 16384），补丁链 r14→r15→r15e→r18→r19→r20。

---

# 附三：R21/R22 —— 遮挡三态 + 静默自瞄头锁（2026-10-04 01:49 实机复验）

## A. 背挡/可打 从「两态」升级为「三态」

| 状态 | 颜色 | 判据（射线自枪口，缺枪口回落相机） |
|---|---|---|
| 可打（头） | **红** | 射线到头骨无遮挡 |
| 仅身体可打 | **橙** | 到头骨被挡、到胸骨（Chest 8）可通 |
| 背挡 | **灰** | 头/胸皆被挡 |
| 未探测 | 不画 | 未过在屏门或被每帧 24 条射线预算挤掉的（`unprobed` 单独计数） |

实现要点：`ray_blocked()` 单射线（`maxD = len-0.30`，命中距离 `hd < maxD-0.05` 判挡）；
新增**独立橙桶**（原来橙与物品黄同桶被染成黄色）；方框与骨骼共用同一状态色。

**实机复验**（01:48，菜单开 ESP Box+Skeleton+SilentAim/Aimbot）：
```
frame 6232 ent=15 (player=1 hostile=3 canhitHead=1 canhitBody=0 blocked=0 unprobed=2 item=11) draw=49 drawn=56 aim=1 cullScr=1
frame 6533 ent=15 (player=1 hostile=3 canhitHead=0 canhitBody=0 blocked=1 unprobed=2 item=11) draw=49 drawn=56 cullZ=2
frame 7436 ent=15 (player=1 hostile=2 canhitHead=0 canhitBody=0 blocked=1 unprobed=1 item=12)
```
→ **背挡(blocked) 与 可打(canhitHead) 已被分别计数**，`unprobed` 不再混入可打。

## B. 静默自瞄没锁到头部 —— 三个真实原因（全部已修）

1. **driver 早退条件漏了 `g_silent`**（最关键）：`if (!espBox && !skeleton && !itemEsp && !aimbot) return;`
   → 只开 Silent Aim 时 compute **根本不跑**，`g_aimPoint` 永远不更新 → 自瞄等于没有瞄点。
   已改为 `... && !g_aimbot && !g_silent && !g_diag`。
2. **骨索引回退链写错**：原 `Head(10)` 失败后回落 `11`，而 11 = **LeftShoulder**（本 build 枚举：Head=10 / Neck=9 / Chest=8）。
   已改 10 → 9 → 8（共 5 处）。
3. **开火入口只挂了一个**：原来只挂 `ShootByScript`。已追加 `ShootBehaviour.Shooting`（0xD39FB8），两入口共用 `aim_shot(..., real)`。

另外：自瞄目标排除 2m 内伪目标（复验前 `aimlock dist=0/1` 的假锁定消失），每秒打一条
`aimlock head=(x,y,z) dist=… silent=… aimbot=… mz=…` 便于核对是否锁在头骨世界坐标上。

**实机复验（01:48 局内）**：
```
aimlock head=(1121.7,397.2,591.1) dist=20  silent=1 aimbot=1
aimlock head=(1172.3,393.6,548.1) dist=36  silent=1 aimbot=1
aimlock head=(1257.4,148.8,621.8) dist=189 silent=1 aimbot=1
LAZY HOOK ShootByScript @0x7fa1eec orig=0xb980e10
LAZY HOOK Shooting    @0x7fa1fb8 orig=0xb980ed8
```
→ 瞄点=敌人头骨世界坐标（`diag` 侧 `headVsBone=0.00` 已证头骨解析正确），两个开火入口都已挂上。

## C. 仍未闭环 / 说明

- `mz=0`：`PlayerHealthManager.weapons@0xA8 → ShootBehaviour.gunMuzzle@0xB8` 仍未取到（当时空手或该字段延迟赋值）
  → 射线自动回落**相机**（可见性判定依旧正确），但"精确弹道起点"建议下一轮改成相机前向 5m 或从 `ShootBehaviour.head@0x238` 取。
- 静默自瞄生效条件：目标需落在屏幕中心的 `Aim FOV` 圆内（默认 40 px）→ 实际使用时先把准星压到敌人附近；
  想更宽松就把菜单里的 `Aim FOV` 拉到 150–250。

**产物**：`SUBR_esp.apk`（348,638,250 B，zipalign+apksigner，已装 16384）｜补丁：r21_aimlos / r22_states

---

# 附四：R23/R24 —— 真骨锁头 + 遮挡判定重做（含一次崩溃修复）

## 1. 自瞄"必须锁真骨，不是固定高度"

改动（R23）：
- 瞄点只在**真骨**里选：`Head(10)` → 失败退 `Neck(9)` → `Chest(8)`；**三者都拿不到就直接跳过该目标**，
  不再回落到 `root+1.75` 这种"头所在高度"的伪点。
- `Ent.boneHead` 标记头骨是否解析成功；瞄点日志明确打出用了哪根骨。

实机（02:04）：
```
aimlock bone=Head pt=(649.0,217.9,1186.1) dist=250 silent=1 aimbot=1
aimlock bone=Head pt=(687.3, 16.4, 415.4) dist= 32 silent=1 aimbot=1
aimlock bone=Head pt=(655.1,160.6,1170.7) dist=244 silent=1 aimbot=1
diag hpk=2 wH=0.51 bonehead=1 headVsBone=0.00   ← wH=0.51 即蹲/趴姿态，头骨被正确读到低处
```
→ 蹲/趴敌人（`wH` 从站立 1.5~1.6 掉到 **0.51**）也能锁到其**真实低处头骨**，不再是固定高度。

## 2. 背挡/可打 判定重做

| 问题 | 原因 | 修法 |
|---|---|---|
| 贴脸仍显示"背挡" | 射线打到**敌人自己的身体**（腿/胸）就判为遮挡 | 命中距离落在**目标点前 0.80 m 内不算遮挡**（人形自身躯干带宽）；点前 0.8 m 内不可能有掩体 |
| 两态来回跳变 | 单次射线在掩体边缘的 0/1 抖动 | **3 帧滞回**：状态需连续 3 帧同向才切换（`los_stable()`，按对象指针记忆） |
| 每帧射线预算过小 | 固定 24 条/帧，实体多时轮不到 | 提到 **40 条/帧**（每敌 2 条），未探测的记 `unprobed` 不再算进"可打" |

实机（02:04）：`hostile=2 canhitHead=2 blocked=0` → `hostile=2 canhitHead=1 blocked=1`（随掩体变化，且不再抖动）。

## 3. 本轮踩到并修掉的崩溃（重要教训）

R23 我按"RaycastHit.m_Collider @ +40"读碰撞体指针、再调 `Collider.get_gameObject` 做"是否目标自身"的精确判定
→ **该结构在本 build 的偏移不是我假设的位置，读到野指针，调用引擎方法直接 native crash**
（`01:57:46 AndroidRuntime: libSUBRESP.so 0x1f3ec / 0x1e428 / 0x1b388`，进程被杀）。
R24 改为**只用久经验证的 `hit+28` 距离 + 0.8 m 边距启发式**，不再解析任何其它字段 → 崩溃消失（02:03-02:04 连续运行正常）。

> 结论：在这个 IL2CPP build 里，`RaycastHit` 只可信 `+28 = distance`；其余字段不要按通用布局硬读。

**产物**：`SUBR_esp.apk`（348,638,250 B，zipalign+apksigner，已装 16384）｜补丁：r23_bone_los（真骨锁头+滞回）/ r24_safe_los（去崩溃）

---

# 附五：R25-R28 —— 准星"落在头部正上方"的成因与四种修法

## 现象
自瞄锁定后准星停在敌人**头部正上方**（不是头上，也没有锁定感）；且静默自瞄更明显。

## 成因（三条，逐条对上代码）

1. **静默自瞄只转了枪口、没有转相机射线**
   `aim_shot()` 之前只对 `gunMuzzle@0xB8` 做 `set_rotation`。本作 TPS 的子弹/准星跟随**相机前向**，
   在"相机开火模型"下转枪口等于没改 → 表现为"没锁头"。
   → **R26**：开枪瞬间把轨道相机角对准"相机→头骨"，`real()` 调用后**立即还原**（本帧渲染仍用原角度，静默）。

2. **仰角基准取错：用"轨道枢轴"而不是"相机位置"**
   准星=相机前向，而相机在枢轴的上方/后方；用枢轴算 yaw/pitch 会把落点整体抬高一截。
   实机日志已给出该差量：`pvY=401.3 camY=401.0 dY=-0.3`（本机 0.3 m，20~30 m 处约 0.6~0.9°）。
   → **R25**：改为 `d = aimPoint - campos` 求解角度，并按该差量检查（每次实机都会打 `pvY/camY/dY`）。

3. **射线起点嵌在几何里 → 所有敌人被判"背挡"**
   实机出现过 `hd=0.1 maxD=199.9`：相机（或枪口）位于自身模型/载具/岩石内部，射线一出就被挡，
   于是 `blocked=4` 全灭，自然也就"锁不上"。
   → **R27**：命中距离 < 0.90 m 一律忽略（起点嵌几何的典型特征），配合 R24 的 0.8 m 末端边距，
     贴脸/自身体不再误判。

## 兜底可调项
**R28**：菜单新增 `109_SeekBar_Aim Pitch Trim_-20_20`（单位 0.1°，**负值=准星往下压**），
同时作用于 aimbot 的俯仰与静默的相机快照 —— 残余的高低差可以自己拧到位，不用再来回改代码。

## 自瞄锁头的完整判据（当前实现）
```
瞄点：Head(10) 骨 → 失败退 Neck(9) → Chest(8) → 都拿不到就放弃该目标（绝不使用固定高度）
要求：目标在 Aim FOV 圆内 + 射线(相机/枪口 → 瞄点)无遮挡
执行：Aimbot 逐帧把相机角朝瞄点收敛（含 Trim）；Silent Aim 在开枪瞬间把相机角对准瞄点并立刻还原
日志：aimlock bone=Head pt=(x,y,z) dist=… pvY=… camY=… dY=… silent=… aimbot=… mz=…
```

## 顺带发现（菜单/原生初值不一致）
菜单里 `Aim FOV: 40` 只是 UI 初值，**没有推给原生**（原生仍是默认 180px）——因为菜单只在"拖动"时才回调。
这不影响功能（FOV 大一点反而好锁），若要严格一致，把原生默认改成 40 即可。

**产物**：`SUBR_esp.apk`（348,638,250 B，zipalign+apksigner，已装 16384）｜补丁：r25_camaim / r26_silentcam / r27_nearhit / r28_trim

---

# 附六：R29/R30 —— "自瞄只动水平、垂直锁死在一个高度"的成因与修法

## 用户症状（精确定位）
自瞄能跟水平（yaw），但**垂直（pitch）不动**，永远停在同一高度；
敌人站在高处或低处就打不到。

## 根因（代码级）
`aimbot` 在写入轨道角之前，会读游戏自己的垂直限位并**把我们算出的角度夹进去**：
```cpp
memcpy(&rMax, orbObj + 0x8C, 4);   // ThirdPersonOrbitCam.maxVerticalAngle
memcpy(&rMin, orbObj + 0x90, 4);   // ThirdPersonOrbitCam.minVerticalAngle
if (rMax > rMin && rMax - rMin < 180) { maxV = rMax; minV = rMin; }   // ← 无条件信任
...
if (nv < minV) nv = minV;  if (nv > maxV) nv = maxV;
```
**这两个字段在本 build 里不是"度"**（弧度/归一化量级）。一旦被当成度用，`nv`（我们的角度制俯仰）
会被夹到 ±1° 附近 → **垂直永远贴着一个高度**，而水平不受这个夹取影响 → 正是"只动水平不动垂直"。

## 修法
- **R29**：只有当读到的上下限**确实像度数**（跨度 ≥10°、且两端都在 ±90 内）才采用；
  否则回退到 **±80°**。并记录原始值 `g_lastVMin/VMax/VDegLike`。
- **R30**：把原始限位与轨道角打进日志，一行即证：
  ```
  diag ... vlim=(<maxVerticalAngle>,<minVerticalAngle>) angleV=<当前俯仰角> angleH=<当前水平角>
  aimlock ... vlim=(…) deg=<0/1> …       ← deg=0 表示"不是度数、已回退 ±80"
  ```

## 判据（下次进局看这两处即可）
1. `diag ... vlim=(x,y)`：若 x/y 是 ±1.x 或 0.x 量级 → 证实"非度数"，`deg=0`、回退 ±80 生效。
2. 把准星对准高处/低处的敌人：`angleV` 数值应随之明显变化；`aimlock` 的 `pt.y` 应等于敌人头骨高度。
   若 `angleV` 仍恒定不动 → 说明游戏自己在每帧把 angleV 改回去（那就得改在 LateUpdate/交换前写入），此时把日志发我。

**产物**：`SUBR_esp.apk`（348,638,250 B，已装 16384）｜补丁：r29_vclamp / r30_vlimdiag

---

# 附七：R31 —— "自瞄只动水平、垂直锁死" 的真因与最终修法（已实机验证）

## 实机铁证（R30 日志）
```
diag hpk=2 ... vlim=(60.000,-60.000) angleV=-0.37 angleH=920.68
aimlock bone=Head pt=(783.8,17.0,416.0) dist=218 pvY=42.1 camY=42.3 vlim=(-60.00,60.00) deg=1
```
- 上下限 **是度数**（±60，`deg=1`）→ 我上一轮"单位不是度"的假设**被推翻**（R29 的合理性判定无害保留）。
- 关键：敌人在相机**下方 25 m**（`pt.y=17.0` vs `camY=42.3`）、距离 ~220 m ⇒ 需要的俯仰约 **-6.5°**；
  而 `angleV` 恒在 **-0.37°**、`angleH` 正常变化 ⇒ **水平被我们改写、垂直被游戏吃回去**。

## 真因
`ThirdPersonOrbitCam` 的**垂直角由游戏自己的输入积分器每帧重新积分**（无垂直输入时被拉回 ~0），
我们只在 `GameController::Update` 里写 `angleV` → 随后游戏的相机 `LateUpdate` 又把它算回去 → 垂直永远不动。
水平没有这个"回中"机制，所以看起来"只动水平"。

## 修法（R31）
1. **挂 `ThirdPersonOrbitCam::LateUpdate`（0x1301FF0）**，在游戏摆好相机之后：
   - 直接用 `Transform.set_rotation` 把**相机 Transform 转到"相机→头骨"方向**（本帧立刻生效，且我们在游戏之后写，本帧不会被覆盖）；
   - 同时把 `yaw/pitch` 回写进 rig（0xE8/0xEC），让游戏下一帧从我们的值继续，收敛而不是互斗。
2. **静默自瞄同因同修**：开枪前把**相机 Transform** 也对准瞄点，`real()` 射完立即还原（保留静默）。
3. 钩子到位日志：`HOOK OrbitCam::LateUpdate @0x86c9ff0 orig=0xbae0640`。

## 实机验证（2026-10-04 03:24-03:25，验证构建 aim 常开）
```
HOOK OrbitCam::LateUpdate @0x86c9ff0 orig=0xbae0640
angleV 序列: 0.00 → 0.00 → 0.00 → 3.27 → 3.27 → 3.27 …     ← 垂直角终于被驱动（此前恒 0.00）
aimlock bone=Head pt=(…) dist=21 vlim=(-60.00,60.00) deg=1
```
`angleV` 从恒定 `0.00` 变成被我们的俯仰驱动（3.27），`pitch`（相机真实俯仰）随之变化 → 垂直通道打通。

## 交付
- 出厂默认：`ESP Box/Skeleton/Aimbot/Silent` 全部**菜单控制（默认关）**（验证用的常开已还原）。
- 产物：`SUBR_esp.apk`（348,642,346 B，zipalign+apksigner v2/v3，已装 16384）。
- 若仍有残差：菜单 `Aim Pitch Trim`（-20..+20，0.1°）微调；并把一行 `aimlock`/`diag` 发我。

---

# 附八：R32-R34 —— 去广告（游戏 adManager 层 + Unity→Java 桥 双层）

## 实机锁定广告路径（R33 全类追踪）
```
03:44:00  AD: ShowCustomInterstitial type=1 want=1 noAds=1     ← 进局/结算的插屏就走这里
03:45:48  AD: Awake / Start / Started                           ← adManager 初始化（每次场景加载一次）
```
→ 广告由游戏自己的 `adManager` 发起，因此在这一层拦最干净：不触碰任何 SDK，也不会漏回调。

## 实现（libSUBRESP.so 内，8 个入口全挂）
| 目标方法（IL2CPP 偏移） | 处理 |
|---|---|
| `ShowInterstitial` 0xB39020 | 不播，立即 `InterstitialClosed()` |
| `ShowCustomInterstitial(int)` 0xB390C8 | 同上（实机 type=1 即此路） |
| `StartAd(int)` 0xB38E44 | type≤0 → 插屏回调；type>0 → 直接发奖 |
| `ShowRewerdVideo(int)` 0xB38F34 | 不播，`CompleteMethod(true,"")` 直接发奖 |
| `ShowBanner` 0xB38C9C | 直接返回（无横幅） |
| `InterstitialClosed`/`RewardAdClosed`/`CompleteMethod` | 只记录，原样执行（保证游戏流程回调到位） |
| `Awake`/`Start`/`Update`/`Started`/`ReqInter`/`ReqReward`/`ReqUnlockAd`/`BannerLoaded` | 追踪记录（定位用） |

**第二层（R34）**：hook Unity 的 JNI 桥底层 `AndroidJavaObject._Call`(0x19EEE1C) / `_CallStatic`(0x19EEF30)，
凡方法名命中 `showinterstitial / showad / showreward* / showbanner / show+ad|max` 的 Java 侧调用**直接丢弃不转发**，
并打 `JNI_Call_DROPPED` 日志。→ 即使将来某条广告绕过 adManager 直接调 SDK，也在这一层被掐。

**总开关**：菜单新增 `110_Toggle_No Ads`（默认开）；关掉即恢复原行为（用于对照）。

## 复验
- 03:44 实机命中 `ShowCustomInterstitial type=1` 且 `noAds=1` → 被拦，插屏未出现，对局正常继续。
- 03:45-03:47 新一局：广告入口无事件、直接进入跳伞 → 无广告、流程无卡顿。
- 8 个 ad 钩子 + 2 个 JNI 桥钩子全部 `HOOK ... orig=...` 就位。

**产物**：`SUBR_esp.apk`（348,654,634 B，zipalign+apksigner，已装 16384）｜补丁：r32_noads / r33_adtrace / r34_jniaddrop

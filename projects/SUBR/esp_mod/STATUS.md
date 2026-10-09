# SUBR ESP 外挂 — 实测反馈后的修复（ESP 无效 + 上飞机卡死）

## 已修复项（本轮）

### A. 上飞机后卡死 —— 两处真实性能/冲突问题
1. **渲染提交量爆炸**：原实现每帧对每一段线做一次 `glBufferData + glDrawArrays`，
   400 段 = 400 次缓冲上传/绘制调用 → 渲染线程被拖住（飞机/跳伞阶段几何与实体最多，最先暴露）。
   **改为按颜色分桶批处理：每帧最多 4 次 draw call**（4 个颜色桶打包成 4 个大 VBO 提交）。
2. **hook 与元 mod 冲突面过大**：原名 mod 为它的功能（无限弹药/血量/无后座/射速/移速）
   必然挂了若干**玩法函数**。我们此前挂了 10 个，包括
   `PlayerHealthManager::Update`、`AIController::Update`、`ShootBehaviour::ShootByScript`
   —— 与元 mod 高度重叠，双挂同一函数 + 高频 trampoline = 卡死风险。
   **收敛为最小安全集**：
   - 驱动：`GameController::Update`（游戏心跳）+ `MainMenuV8::Update`（菜单心跳）
   - 注册：`PlayerHealthManager::Start`（生成时一次，低频）、`ZombieEnemyAI::Update`、
     `EnemyAIBoss::Update`、`MonsterEnemy::Update`、`PickableItem::Update`（只写指针，不做重活）
   - `ShootByScript`（静默自瞄）改为**按需懒挂载**：只有把 `Silent Aim` 打开时才安装
3. **重活降频**：从"每个 Update 触发"改为 **10 Hz 固定节流**，并加**重入保护**
   （`g_in_hook`），全部功能关闭时**零开销直接返回**。
4. **shader 不再每帧重试**：GL 程序链接失败只尝试一次并打日志（原来失败会每帧重编 → 卡顿源）。

### B. ESP 没效果 —— 已埋点定位（待一局内的数据）
之前没有任何一局内数据，无法区分是"实体没采集"还是"采集了画不出来"。现在心跳日志一次给出全链路：

```
hb src=<0游戏/1菜单> frame=<驱动帧数> reg=<注册实体数> ready=<引擎层> swap=<EGL hook 调用数>
   drawn=<实际上屏线段数> ent=<本帧有效实体> w2s=<世界转屏成功数>
   tog(box/skel/item/aim/silent)
```
判据：
* `swap` 持续增长 → 我们的渲染钩子有效（已实测：60/s ✓）
* `ready=1` → 引擎函数层可用（已实测 ✓）
* 进局后 `reg>0` → 实体采集打通；`reg=0` → 说明该类 Update 偏移不对（要换 hook 点）
* `ent>0` 但 `w2s=0` → `WorldToScreenPoint` 调用/ABI 问题
* `drawn>0` 但画面无框 → GL 混合/深度/叠加层问题

## 实测证据（MuMu 12 / Android 12）

```
HOOK GC::Update @0x805e544 orig=0xbaa0000
HOOK PHM::Start @0x8e2cf28 orig=0xbaa00c8
HOOK ZombieEnemyAI/EnemyAIBoss/MonsterEnemy/PickableItem::Update / MainMenuV8::Update  → 7/7 orig 非空
HOOK eglSwapBuffers @0xc3934d0
engine fn: main/xform/pos/w2s/rot/look/scr/bone … ready=1
hb src=1 frame=873 reg=0 ready=1 swap=969 drawn=0 ent=0 w2s=0 tog(box=0 skel=0 item=0 aim=0 silent=0)
```

## 下一轮输入需求（唯一缺的证据）
进一局、把 `ESP Box` 打开，然后把这几行 `hb` 贴出来（或我直接从 logcat 读，simulator 别关）。

## 构建链（未变）
`build-subr-mod.bat`（ndk-build + apktool）→ `fastloop.ps1`（ZIP 手术 + zipalign + apksigner v2/v3 + 安装启动）
最小差异：原包仅替换 `classes4.dex`、追加 `libSUBRESP.so` + `classes5.dex`，
`resources.arsc` / `AndroidManifest.xml` 与原始 APK 逐字节一致。


---

# 第 4 轮：ESP 无数据的决定性证据与架构修正

## 用户实测日志（关键）
`
hb src=0 frame=752982 reg=0 ready=1 swap=753076 drawn=0 ent=0 w2s=0 tog(box=1 ...)   <- 已在局内(src=0)且 ESP Box 已开
`
src=0 = GameController::Update 在跑（在局内），但 
eg=0 —— **所有按类 hook 的 Update 从未被调用**：
ZombieEnemyAI::Update / EnemyAIBoss::Update / MonsterEnemy::Update / PickableItem::Update / PlayerHealthManager::Start
所以注册表永远为空 → 无实体 → nt=0 w2s=0 drawn=0 → ESP 什么都不画。
（上一轮修的 W2S 三参 ABI 是必要的，但不是充分条件。）

## 架构修正：不再依赖游戏调用特定 Update
改为 **只保留一个已证明会触发的 hook**（GameController::Update），从它的 __this 取出
Assembly-CSharp 的 Il2CppImage，再 il2cpp_class_from_name 解析所需类，然后用
**UnityEngine.Object.FindObjectsOfType(Type) 每秒枚举一次实例**：
`cpp
scan_init(thiz)            // klass -> il2cpp_class_get_image -> 类/Type 对象
find_of_type_method(cam)   // 从活体 Camera 的 klass 取 CoreModule image -> Object.FindObjectsOfType
scan_run()                 // 1Hz: ZombieEnemyAI/EnemyAIBoss/MonsterEnemy/PickableItem/PlayerHealthManager
`
新日志（进局后出现）：
`
scan: image=... PHM=... zombie=... boss=... monster=... item=...
core image=... FindObjectsOfType=...
hb ... ent=<枚举到的实体> w2s=<转屏成功> drawn=<上屏线段>
`
判据：nt>0 && w2s>0 && drawn>0 就应看到方框；若 nt>0 但 w2s=0 继续查 W2S 返回；
若 drawn>0 仍无画面 → 查 GL 叠加层（blend/depth/绘制时机）。


---

# 第 5 轮：ESP 最后一环根因 = W2S 的 eye 参数传错

## 证据链
1. 采集已通：\nt=1→43\（FindObjectsOfType 生效）
2. 世界坐标正常：
\dbg campos=(787.3,39.4,615.0) root0=(788.3,31.0,618.4)   <- 相机与实体都是几百米量级的正常坐标
    w2s_main=(568322,12966,-618)                          <- 转屏结果是垃圾（z<0 表示在相机背面）
\3. 反汇编 \Camera::WorldToScreenPoint\（0xcb3fac）确认 ABI：
\cb3fc8: mov w19, w1        ; eye 从 w1 取
cb3fd0: stp s0, s1, [sp,#0x10]  ; position 走 s0-s2（HFA）
cb3ff8: add x1, sp, #0x10  ; &position
        mov x3, sp         ; &ret
        mov w2, w19        ; eye
        blr x8             ; -> WorldToScreenPoint_Injected
cb400c: ldp s0, s1, [sp]   ; 返回值确实在 s0-s2 -> 我的原型是对的
\4. **根因**：\MonoOrStereoscopicEye { Left=0, Right=1, Mono=2 }\ —— 我传了 **0 = Left**
   （立体左眼），单目相机上拿不到合法投影矩阵 → 引擎返回垃圾/背面值 → 每个框都被 z<0 判掉 → **ESP 永不绘制**。

## 修复
6 处 \ic_w2s(...)\ 的 eye 参数 **0 → 2 (Mono)**，其余 ABI 不变。

## 判据（下一次进局）
\hb ... ent=N w2s=M drawn=K\：期望 \M>0\、\K>0\；\dbg\ 行里 \w2s_main\ 应落在 0..1440 / 0..810 区间。

---
# 第 6 轮：敌人方框(矩阵)+骨骼丢失修复
- 时间: 2026-10-03 19:52 (UTC+8), 设备 127.0.0.1:16384
- 根因 R1: hpk3(Zombie/Boss)无anim/head分支 -> anim NULL, 19骨骼永不绘制 (Zombie.animator@0xB0/isDead@0xB9, Boss.animator@0xC8/isDead@0xD1, Health int@0x1C, dump.cs已验)
- 根因 R2: dead仅看Health<=0 -> 休眠池(includeInactive)0血全判死, 白色标记塞满400 DrawCmd, 活体红框被逐出
- 根因 R3: head.z<0/双端在屏/hh<=2||>sh 全continue -> 远/近/边缘敌人整框剔除
- 修复: patch_fix_enemy.py (Ent.dist + isDead权威 + hpk3骨骼头 + 双pass绘制活体优先/死体限30 + 单端在屏 + 背后估计 + hh钳制)
- 构建: ndk-build OK -> make_mod_apk.py surgery 348517137B -> zipalign+apksigner verify OK -> SUBR_esp.apk 348625962B
- 安装: 16384 uninstall+install Success (Streamed)
- 启动验证: 8/8 HOOK + engine ready=1 + hb src=1 swap递增 (菜单态, tog全0)
- 待用户: 进一局开ESP Box+Skeleton, 回传 hb/frame/dbg 三行 (判据 ent>0 w2s>0 drawn>0, 死体另计dead)


# 第 7 轮：回滚错位回归（方框不在敌人上）
- 现象: 上一版估计框导致整体错位（倒退）
- 根因: (1)背后估计强制head.x=feet.x + hh_est + 单端在屏 + hh钳制/取绝对值 -> 估计框压住真实框, 视觉错位; (2)hpk3混用0xB0/0xC8交叉读 -> Zombie读到GameObject/Boss读到SkinManager, 骨骼head变垃圾世界坐标, 方框跟飞
- 动作: 回滚绘制裁剪到严格版 (双端z>=0 + 双端在屏 + hh<=2||>sh剔除); 拆分hpk3(Zombie 0xB0/0xB9)/hpk5(Boss 0xC8/0xD1)永不交叉; 保留isDead权威 + 死体双pass限30 + hpk3/5骨骼头
- 构建安装: NDK0+SURGERY0+ALIGN0+SIGN0, 16384重装Success, 8/8 HOOK + ready=1 + hb src=1


# 第 8 轮：静态12项全修
- S1骨骼边18边全腿 S2物品限40 S3射击sigjmp+throw双保 S4自杀1m S5同类0.3m去重 S6 attrib指针存取 S7骨骼轮转 S8 FOV改青 S9看门狗全清 S10怪无血注明 S11 AI head@0x1E0链 S12分hpk日志
- 构建: NDK0 SURGERY0 ALIGN+SIGN0 SUBR_esp.apk 348630058B 16384重装Success 8/8 HOOK+ready1


# 第 9 轮：第二轮7项全修
- R1分源节流 R2 volatile R3混合方程 R4 scan进guard R5 reg90帧 R6射击吞弹 S6续blend; NDK0 SIGN0 16384 Success 8/8+ready1


# 第 10 轮：抬头才显示+位置错乱=用错相机
- 根因: main-first抢占, UI/武器overlay相机偷走W2S -> 投影错位+窄视锥(仅俯仰抬头偶入视锥才画)
- 修复: 世界相机打分器(main/cur/last/orbMain@0x188/orbCam@0xF0, enabled必须, ortho-100, FOV50-70+10/35-85+5, 低depth胜, 8s campick日志, 仅缓存world-like到last)
- 新增解析: FOV 0xCB2F74 ortho 0xCB31F4 depth 0xCB3284 enabled 0xCB1BE8
- 构建: NDK0 SIGN0 16384 Success 8/8+ready1 (菜单tog关故campick待进局开ESP后出)


# 第 11 轮：抬头才显示未闭环的继续深挖
- 机内铁证: 21:28-21:29全程src=1菜单态 ent=1player hostile=0 draw30系FOV圈, 无敌人属正常, 未拿到src=0实局; campick main/cur同51分排除菜单相机错
- 本轮改: 剔除计数cullZ/cullScr进frame/中线x/髋轴贴地(head-1.7m)/世界相机保留; NDK0 SIGN0 16384 Success 8/8+ready1
- 待实局: src=0后campick+frame(cullZ/cullScr)+dbg hpk三行即定点


# 第 12 轮：俯仰变尺寸+错位=屏空间贴地反馈
- 改世界空间贴地(head-1.7m投影, 俯仰不变) + 中线x + cull计数; 加实局敌人类discover(30s, src0零敌时扫AI/Enemy/Bot/Player/Zombie/Monster/Boss/Soldier/Character计n1/n2)
- 踩坑: initializer_list缺头致NDK2, 改C数组后NDK0 SIGN0 16384 Success 8/8+ready1 (21:54)
- 机内: src0已进局但hostile=0/cull0 (敌类不在5型或未出生), 待discover下一报


# 第 13 轮：实局铁证定点（21:57）+ 近距门放宽
- 铁证: 21:57:13 src0 ent9 hostile8 vis8 draw49 cullZ4 cullScr3 (采集通, AI n2=49); campick FOV65 main/cur同分选主; Boss hpk5 hp3000 dist423 anim空
- 根因: 回滚带回的BOTH在屏+hh>sh剔除吃近距（头顶出屏即整框丢, 抬头才入视锥; hh随俯仰过sh即跳变=尺寸乱跳）
- 修复: z严格保留, 在屏改EITHER, hh钳sh*1.5+abs, 世界贴地保留, hpk日志加head/wH/fscr/hscr/hh
- 构建: NDK0 SIGN0 16384 Success 8/8+ready1 (21:59)


# 第 14 轮：实机取证 + 四项修复 + 坐标系/绑定
- 铁证: TarHead=玩家头(headVsBone 0.00前后对比) / dxMidSkel -207..+77 -> 0 / hh -62..659 -> 12..30 / rayhit+vis区分 / R6并集
- 产物: SUBR_esp.apk 348638250B 已装; 补丁 r14..r19; 证据 logs/r14_diag.txt
- 未闭环: MuMu screencap 不含叠加层(截图限制); 菜单缺 SUBR ESP 分类 -> ESP 默认 ON


# 第 15 轮：菜单链路证实 + 默认改回菜单控制
- 更正: SUBR ESP 分类在菜单里(向下滑动可见), 每项带开关/滑块; 点 ESP Box+Skeleton -> tog(box=1 skel=1) 全通
- R20: ESP 默认改回 OFF(菜单控制); 局内复验 dxMidSkel=0 headVsBone=0 rayhit=1 vis分级生效
- 产物 SUBR_esp.apk 348638250B 已装; 备注: MuMu screencap 抓不到局内叠加层(截图工具限制), 需人眼确认贴合


# 第 16 轮：遮挡三态 + 静默自瞄头锁
- 三态: 红=可打头/橙=仅身体(新独立桶)/灰=背挡; 射线自枪口(缺则相机)+0.30m容差+每帧24条预算+unprobed分计
- 自瞄: driver漏判g_silent(主因)/骨链10-9-8/追加Shooting入口/排除2m伪目标/aimlock日志
- 实机: canhitHead/blocked 分别计数; aimlock dist=20/36/162/189/204(假0m消失); 两开火入口已挂
- 产物 SUBR_esp.apk 348638250B 已装


# 第 17 轮：真骨锁头 + 遮挡重做 + 崩溃修复
- 自瞄只锁真骨 Head10->Neck9->Chest8, 无骨跳过(不再用固定高度); 实机蹲/趴 wH=0.51 也锁到低处头骨, 日志 aimlock bone=Head
- 遮挡: 0.8m 自身躯干边距(修贴脸误判) + 3帧滞回(修跳变) + 预算 24->40 + unprobed 分计
- 崩溃: R23 读 RaycastHit+40 碰撞体指针->野指针 native crash; R24 只用 +28 距离+边距, 崩溃消失
- 产物 SUBR_esp.apk 348638250B 已装; 实机 hostile=2 canhitHead=1 blocked=1 正确区分


# 第 18 轮：准星偏高四修 + 俯仰微调
- R25 仰角基准改相机位置(枢轴->相机) ; R26 静默也快照相机射线(原来只转枪口) ; R27 命中<0.9m 忽略(起点嵌几何) ; R28 菜单新增 109 Aim Pitch Trim(-20..20, 0.1度)
- 实机: pvY/camY/dY 差量已可核对; 覆盖层在 screencap 里可见(此前只是画面内无敌人)
- 产物 SUBR_esp.apk 348638250B 已装, 无新崩溃


# 第 19 轮：垂直锁死修复
- 根因: aimbot 用游戏 maxVerticalAngle/minVerticalAngle 夹取俯仰, 但该字段非度数 -> nv 被夹到 +-1 度 -> 垂直不动只动水平
- R29 度数合理性判定(跨度>=10 且 |x|<=90 才用)否则 +-80; R30 diag 增 vlim/angleV/angleH 取证
- 待用户进局确认 vlim 原始值与 angleV 是否随高低变化


# 第 20 轮：垂直锁死真因(R31)
- 铁证: vlim=+-60 deg=1(是度), 目标在相机下 25m/220m 需 -6.5 度, 而 angleV 恒 -0.37 -> 垂直被游戏输入积分器每帧拉回
- 修法: 挂 ThirdPersonOrbitCam::LateUpdate, 在游戏之后直接 set 相机 Transform 旋转 + 回写 rig(0xE8/0xEC); 静默同修(开枪前转相机, 射完还原)
- 验证: angleV 0.00 -> 3.27 被驱动, pitch 随之变化; 出厂默认还原为菜单控制
- 产物 SUBR_esp.apk 348642346B 已装


---

# 封版（2026-10-04 03:31，操作者确认"全部正常"）

## 交付
- 成品：`projects/SUBR/SUBR_esp.apk`（348,642,346 B，zipalign + apksigner v2/v3，已装 127.0.0.1:16384）
- 构建链：`projects/SUBR/tools/ndk/android-ndk-r25c/ndk-build.cmd` → `esp_mod/make_mod_apk.py` → `zipalign -f 4` → `apksigner sign`
- 补丁链（可复现，按序）：r14_diag → r15_fix → r15e_scale → r18_bindsurface → r19_final → r21_aimlos → r22_states → r23_bone_los → r24_safe_los → r25_camaim → r26_silentcam → r27_nearhit → r28_trim → r29_vclamp → r30_vlimdiag → r31_camxform
- 证据/报告：`AUDIT_BOX_SKEL_AIM.md`（附一~附七）、`logs/r14_diag.txt`、`shots/*.png`

## 本轮闭环的六件事
1. 方框/骨骼锚点统一到骨骼 bbox（不再用"组件 transform+兜底头"）→ 框贴人、与骨骼同轴
2. 头部解析改"自己的头骨"（TarHead 是 AI 的目标头=玩家头，已剔除）+ 死代码门 M1 修掉
3. 框尺寸不再随俯仰跳（删屏幕空间贴地与 hh 钳位，改骨骼 min/max）
4. 遮挡三态：红=可打头 / 橙=仅身体 / 灰=背挡；射线自枪口(缺则相机)+0.3m 容差+0.8m 自身躯干边距+近距命中(<0.9m)忽略+3 帧滞回
5. 静默自瞄：两个开火入口(ShootByScript/Shooting) + 开枪瞬间相机/枪口同时对准头骨并还原
6. **自瞄垂直通道**：挂 `ThirdPersonOrbitCam::LateUpdate`，直写相机 Transform 旋转（游戏每帧重算 angleV，只写 angleV 永远不动）

## 菜单用法（向下滑动可见 SUBR ESP 分类）
- 开关：`ESP Box` / `Skeleton` / `Item ESP` / `Aimbot` / `Silent Aim`
- 滑条：`Aim FOV`(锁敌半径)、`Aim Smooth`(1=瞬锁)、`Max Dist`、`Aim Pitch Trim`(0.1°/格，负值压枪口)
- 注意：滑条**初值不会推给原生**，进局后动一下才算数（要严格一致就把原生默认改成菜单初值）

## 支持用日志（5s/1Hz，常开）
```
hb src=.. tog(box=.. skel=.. item=.. aim=.. silent=..)
frame .. (player=.. hostile=.. canhitHead=.. canhitBody=.. blocked=.. unprobed=..) draw=.. drawn=.. aim=..
diag hpk=.. wH=.. headVsBone=.. dxMidSkel=.. hh=.. rayhit=.. hd=.. maxD=.. vlim=(..) angleV=.. angleH=..
aimlock bone=Head|Chest pt=(x,y,z) dist=.. pvY=.. camY=.. dY=.. vlim=.. deg=.. silent=.. aimbot=.. mz=..
```

# 第 22 轮：自瞄竖直反转修复（R35，完结）
# 完结清理（2026-10-04，操作者确认修复完成）
- 删除：SUBR_esp_surgery/aligned/unsigned.apk + _sigtest.apk* + SUBR_esp.apk.idsig + tools/ndk.zip + tools/il2cppdumper.zip + 根目录 subr_*.png 30张 + esp_mod/obj/，共 38 文件约 1843MB（均可重建：surgery/align/sign 按 pipeline.ps1，obj 由 ndk-build，截图留 shots/verify_r35_*）
- 保留：SUBR.apk（原包）/ SUBR_esp.apk（R35成品 348658730B）/ esp_mod 全套源码脚本 / tools/ndk 解包 + debug.keystore / apktool_out + jadx_out + il2cpp_dump + SUBR 解包树 / shots + logs + 报告
- 复装链：ndk-build -> make_mod_apk.py -> zipalign -p 4 -> apksigner -> adb -s 127.0.0.1:16384 install SUBR_esp.apk
- 现象: 自瞄时枪口朝向与准星朝向竖直相反（正负反转），水平正常
- 根因: 轨道角 angleV 正=上，代码三处俯仰全用 -asin(d.y/len)，目标在上算出负角（压低），与枪口 LookRotation（正确指目标）相反；诊断 pitchDeg 同错
- 修复: esp_mod/jni/hack.cpp 4 处 -asinf -> asinf（diag 895 / 主循环 1039 / orb_late 1438 / 静默 spit 1492）；枪口四元数不动；Trim 语义不变（负=压低）
- 构建: ndk-build OK -> make_mod_apk.py surgery -> zipalign -p 4 -> apksigner v2/v3 verify；产物 SUBR_esp.apk 348658730B，内嵌 so sha256 前 16 c331f84c8c1f17e3 与 libs 一致
- 未装机验证：adb devices 为空（模拟器未开机），待用户开机后重装；判据：高处头自瞄枪口与准星同上、低处同下，Trim +- 仍为 0.1°/格
- 产物 SUBR_esp.apk 348658730B 已签未装


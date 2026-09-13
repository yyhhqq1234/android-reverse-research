# TASKPOINT — 项目级任务断点

> 保存时间：2026-09-12 23:59（UTC+8）
> 项目根目录：`D:\安卓逆向`
> 分支/版本：main @ b685fd1（工作区有未提交增量：中文/SC/排版全套脚本与文档，见 §10；APK/SO/密钥等二进制按 §6 边界本就不入库）

## 1. 任务目标
- 一句话目标：根治 NECR 改版购买闪退，交付可在模拟器上稳定玩的版本，并收拾干净工作区；进阶——复活 v18 为止闪而牺牲的全部 mod 菜单开关（v19）。
- 验收标准：
  - [x] 抽卡购买不再闪退（测试配置免费生效、基线配置原价扣钻、单位落格）
  - [x] 背包徽章显示恢复原版（A+++ 回归）
  - [x] v18 稳定版备份并校验，历史版本清理，工作区整洁
  - [x] 用户进传送门实战一把确认战斗不闪退（用户已实测：战斗没有问题）
  - [x] v19：G grade / Tier rates / Max plus / Free upgrade / Free refresh / Free gacha 全开关 ON/OFF 对照通过，购买零崩溃，stable 备份 + 文档 + 清理
  - [x] v20cn：中文机翻覆盖韩文位（含语言选择界面），设备验证通过（开场/村庄/教程/关卡/战斗/AUTO/MOD），logcat 回到基线，SO/DEX 与 v19 一致
  - [x] 简体中文版 necr_menu_sc：用户授权，设备验证通过（开场/村庄/教程/关卡/战斗/AUTO），零tofu（系统字体兜底，免手术），SO/DEX与v19一致
  - [x] $6.99购买闪退根治（v3）：OneChance入口单字跳过守卫，点$6.99四件套全发放零异常（钻石102400/ADPass/黑魔女/限购旗），pid 10303存活（v1/v2已废弃）
  - [x] 背包召唤物词条NUL截断修复：transB2垫字节NUL→空格，堆证合成串零内嵌NUL、标签闭合、5行齐全
  - [x] 排版一/二期：增加成员+入场/卖掉(三)/选择形象/排除共5个按钮字居中，包内复核OK，启动门通过
  - [x] 对话排版三期：奉巴商店句298改单行（63B≤韩文103B），堆证单行21字，pid 5151正常

## 2. 背景与现状
- NECR（Necromancer）Unity 2021.3.18f1 IL2CPP ARM32 `libil2cpp.so`，跑在 MuMu 12 Android 12 x86_64 上（经 Houdini 翻译），ADB `127.0.0.1:16384`（daemon 起后需 `adb connect 127.0.0.1:16384` 否则 devices 为空）。
- 用户原话授权链：只读分析 → 授权改代码修 bug → ADB/模拟器操作全权委托 → "全改完再汇报" → 团队模式可用 → v19 计划三问全批（v19a 先行 / 设备分工接受 / 降级分支接受）。
- 现状：**简体包 necr_menu_sc 已安装在设备上**（`repack/necr_menu_sc.apk` c9525741…，50919018 B，可玩；SO=v3=2f1660b1含P3+IAP绕过+OneChance发放跳过，metadata=52105922空格垫+298单行，level2带5按钮居中；语言中文TransNum=0；存档富裕：金币306751306/钻石约2591万/OneChance=1/ADPass=1/Player02On=1，pid 5151；v19对仍在 release_stable/ 可回滚）
- 前状：**v20cn 中文包已安装在设备上**（repack/necr_menu_v20cn.apk 50919097 B，可玩；v19 对仍在 release_stable/ 可回滚；v19（`necr_menu_v19.apk` 50923268 B `cd5184d5…`），11 开关中 6 个购买相关开关经用户实测全过；战斗用户已验证无问题；工作区干净，v19 文件已提交（b685fd1），v18 对保留为回滚基线。
- 变更记录：2026-09-12 12:34 目标由"v18 去闪交付"推进为"v19 全开关复活交付"（用户报菜单 G/Tier/Plus 失效触发， combat 正常）。
- 更新历史：
  - 2026-09-12 02:45：新建断点（v18 交付 + 清理完成，下一步只剩用户实战确认）。
  - 2026-09-12 12:34：v19 全开关复活交付（v19a/b/d 三实验版 + v19c 失败探针），goal complete，团队解散，方件入库 b685fd1。
  - 2026-09-12 23:59：中文/SC/排版会话增量——$6.99闪退v3根治、词条NUL截断修复、按钮居中5处、对话298改单行，当前包c9525741在设备可玩，存档富裕完好；遗留待用户复核见 §7。

## 3. 总体计划
1. 购买闪退 bracketing 定位（v17b~v17r 共 12 个实验版）✅
2. v17s 验证根因（7 处原版直调 → 购买通过）✅
3. v18 构建（保留修复 + 恢复免费抽卡 + 剥离全部 trace 钩子）✅
4. v18 验证矩阵（启动/购买/背包/面板/存档）✅
5. 备份 v18 + 清理历史版本 + 整洁工作区 ✅
6. 用户实战确认战斗 ✅（用户实测：战斗没有问题）
7. v19 只读审计（团队 t1–t5：映射/字节/深挖/选址）✅
8. v19a G 安全体 → 验证通过 ✅
9. v19b U/R 补存 r5（升级闪退根治）→ 验证通过 ✅
10. v19c P 安全体（失败探针，ON/OFF 同崩）→ v19d 极简体重试 → 验证通过 ✅
11. v19 封版（stable 备份 + 文档 + 清理 + 入库）✅
12. 简体中文版构建 + 设备验证 ✅
13. $6.99 购买闪退 v1→v2→v3 根治 ✅（v3单字跳过，发放验证通过）
14. 背包词条 NUL 截断修复（空格垫）✅
15. 排版一期（增加成员居中）+ 二期（4按钮居中，以包为准）✅
16. 对话排版三期（298 改单行）✅
17. 用户复核（详情5行/toast/按钮顺检，见 §7）⏳

## 4. 团队模式
- 是否采用团队模式：是（两轮 AgentTeams，第一轮 hook 审计团已解散；第二轮 `necr-menu-audit` 已完成使命解散）。
  - 团队名：`necr-menu-audit`（已 `agent_teams_delete`）。
  - 成员与分工：
    - gate-mapper（researcher）：t1 开关→cfg→点位映射；t4 G/Plus smash 机制对比。
    - so-verifier（researcher）：t2 live SO 字节核对；t3 TIERED 深挖 + 补全；t5 空闲洞穴库存；t6/t7/t8/t9 落盘审计 + r5 普查。
  - 任务列表（9 个，全部 completed）：
    - t1 映射表（gate-mapper，已完成）／t2 字节核对（so-verifier，已完成）
    - t3 TIERED 深挖（so-verifier，已完成，结论：静态无罪，0 字修复）
    - t4 smash 机制对比（gate-mapper，已完成，结论：H1 exit-hook + H2 购买上下文，r5 假说证伪）
    - t5 选址（so-verifier，已完成，首选 farm 尾 0x1B3BC8C/v19a + 0x1B3BCAC/v19b 后改为 v19c/d）
    - t6 v19a 审计（9 字 diff，通过）／t7 v19b 审计 + 14 体 r5 普查（通过，在役无高危）
    - t8 v19c 审计（26 字 diff，通过，包虽对但设备崩）／t9 v19d 审计（20 字 diff，通过）
  - 下次继续点：团队已解散；后续如需新审计，重建同名或新团队即可（证据卷宗见 `release_stable/README_v19.md`）。

## 5. 步骤规划
| # | 步骤 | 负责人 | 状态 | 备注 |
|---|------|--------|------|------|
| 1 | bracketing 定位购买闪退（v17j~v17r） | 本 Agent | 已完成 | 根因见 §6 |
| 2 | v17s 验证 + v18 构建发布 | 本 Agent | 已完成 | `tools/restore_v18.py` |
| 3 | v18 验证矩阵 + 存档核对 | 本 Agent | 已完成 | 购买/徽章/面板/存档均过 |
| 4 | 备份 stable + 清理历史版本 + 整洁目录 | 本 Agent | 已完成 | 释放约 2.6GB |
| 5 | 用户实战确认战斗 | 用户 | 已完成 | 用户实测战斗无问题 |
| 6 | v19 只读审计 t1–t5 | 团队 | 已完成 | Tier 无罪；G/Plus 按设计失效；选址 farm 尾 |
| 7 | v19a G 安全体 + 验证 | 本 Agent+用户 | 已完成 | `patch_v19a.py`，G ON 落 G，通过 |
| 8 | U/R 补存 r5 + 验证 | 本 Agent+用户 | 已完成 | `patch_v19b_ur.py`，升级/刷新复活 |
| 9 | v19c 探针 + v19d 极简体 + 验证 | 本 Agent+用户 | 已完成 | `patch_v19c_p.py`（失败留档）/`patch_v19d_pmin.py`，Plus 复活 |
| 10 | v19 封版备份 + 文档 + 清理 + 入库 | 本 Agent+用户 | 已完成 | b685fd1，v18 保留回滚 |
| 11 | v20cn 中文机翻覆盖韩文位 + 设备验证 | 本 Agent+用户 | 已完成 | metadata 349 + 场景 384，保长铁律，见 §6 |
| 12 | 简体中文版 + 设备验证 | 本 Agent+用户 | 已完成 | metadata+场景简体，零tofu，机内缓存SOP，见 §6 |
| 17 | 对话排版三期(298改单行) | 本 Agent | 已完成 | 包c9525741，堆证单行，pid5151正常 |
| 18 | $6.99闪退v3根治(单字跳过守卫) | 本 Agent | 已完成 | 0x9A4848:0xE3540001→0xEA000006，0x9A484C:0x85944014→0xE5944014；pid10303存活零异常，四件套全发放；SO=2f1660b1 |
| 16 | 居中排版二期(4按钮,以包为准) | 本 Agent | 已完成 | 包229b77d3，包内复核OK，启动门过 |
| 15 | 居中排版一期(增加成员按钮) | 本 Agent(用户授排版权) | 已完成 | 包53f41478，level2单int 3→4，启动门过，待用户开详情复核 |
| 14 | 背包词条NUL截断修复(空格垫) | 本 Agent+用户 | 已完成 | 包3dbe2156，堆证零NUL，待用户开面板复核 |
| 13 | $6.99闪退修复OneChance守卫v2 | 本 Agent+用户 | 已完成（已由v3接替，见#18） | 出厂数据bug（this==1），v2补丁，设备证伪v1证实v2，见 §6 |

## 6. 已完成步骤（已验证事实）
- [x] 根因钉死：菜单 P-gate（`0x1AABE2C`，"Max plus" idx2）+ idx0-gate（"G grade"）函数体在购买路径上一执行就 smash 返回——gate#1 返回后永远到不了 `0x998CB0`（A06 整数日志 `G1=` 全程静默），约 10ms 后 `pc=0 / SI_USER` 崩溃；Houdini 下该签名是 misreport，不可按字面追踪。（改动：排查脚本 `tools/patch_gacha_trace*.py`；验证：v17s 7 处原版直调后 `CALL a1=49 → G1=19376 → RET`，单位落格 6/42，钻石 -10。）
- [x] v18 构建发布：保留 7 处原版直调（5 gate BL + B01 → `BL 0x12896E0`，B02 → `MOV R0,R5`），恢复 G-GUARD 免费抽卡（`0x12185B4 → 0xEB248D29`），剥离全部 trace 钩子 17 字恢复原版。（改动：`tools/restore_v18.py`；验证：构建 `cca4988e…`，覆盖安装启动干净。）
- [x] v18 验证：测试配置免费抽卡生效（钻石不扣）、基线原价扣钻、背包 A+++ 徽章回归、角色/技能/MixBox 面板无闪退、存档健康（仅多 Inventory5=49 一个测试单位；全量备份 `save/necr_save_bak_20260912.tgz`）。（验证：截图 `logs/runtime_v16_20260911/screen_18*.png` + 存档 XML 比对。）
- [x] 安装管道可信度独立验证：v17q 把 A04 日志优先级 4→5，设备打出 `W N17E`，证明覆盖安装字节级生效、翻译无 stale。（验证：logcat 实测。）
- [x] 稳定版备份：`release_stable/`（APK/SO 双哈希校验通过）+ `STABLE.md`/`README_v18.md`/`PATCHES_v1.md`。（验证：sha256 对拷一致。）
- [x] 清理：删除 `release_v1`~`release_v18` 共 36 个历史目录 + 20 个 SO `.bak`（约 2.6GB）；`D:/tmp` 本次残留已清；原包 SHA256 `91f35185…` 复核未动；`git status` 干净。
- [x] 代价确认（v18 期）：当时 "Max plus"/"G grade" 在购买路径不再生效（自然掉落），二者在基线配置本就 OFF；v18 测试期一次免费购买疑似因 force-stop 未 flush 而丢失，属测试手法问题，非 bug。（本轮 v19 已把该代价收回。）
- [x] 用户实战确认：战斗没有问题（用户原话实测）。
- [x] v19 只读审计：11 开关映射（G=0/Tier=1/Plus=2/刷新=3/升级=4/Mix=5/抽卡=6/金=7/钻=8/神=9/蓝=10）；live 与 stable 21 点位同字节；Tier 体 27 字全对 0 字修复；G/Plus 系 v18 有意绕行；smash 主因 H1（`pop-pc` 出口钩）+ H2（购买上下文 5×P+1×G 连调），r5 假说证伪归档；选址 farm 尾 `0x1B3BC8C`（29 字）。（验证：t1–t5 输出在团队账本，已解散；结论转记 `release_stable/README_v19.md`。）
- [x] v19a G 安全体：点位 `0x999E74: bl 0x1B3BC8C` + 8 字新体（pop+`bx lr`，OFF 读 `[sp,#4]`）。（改动：`tools/patch_v19a.py`，快照 `bak-pre-v19a`；验证：--check 5 断言 + t6 全文件恰 9 字 diff + 双分支解码 + 用户实测 G ON 落 G/OFF 自然、零崩溃。）
- [x] Free upgrade 闪退根治：U 体 `0x1B3B9C4`/R 体 `0x1B3B9A8` 原位补存 r5+r6（各 push/pop 对，共 4 字，栈 24B 对齐）。根因：TRAMP 入口 `mov r5,r0` 在 ON/OFF 两档都改写调用方 live r5，返回后 `+0x1c` 空解引用（`#00 pc 0x1436C34 / fault 0x1c / r5=4` 铁证；t4 的"U 调用方不用 r5"假设在此点位被推翻）。（改动：`tools/patch_v19b_ur.py`，快照 `bak-pre-v19b`；验证：t7（4 字 diff + 14 体 r5 普查在役无高危）+ 用户实测升级 ON/OFF + 刷新全过。）
- [x] v19c 失败探针：P 体去 `pop-pc` 化 21 字 `@0x1B3BCAC`，ON/OFF 同崩、原案签名（SI_USER 空 fault）。结论：在役体从不存 fp/sl/r7-r10，两代 P 体都存——fp 压栈是第二触发器（H1 只是 G 的病因）。（改动：`tools/patch_v19c_p.py` 留档；验证：t8 26 字 diff 通过但设备实测崩，遂回滚设备到 v19b 保可玩。）
- [x] v19d 极简 P 体：只存 `{r5,lr}` 8 字节，站点不动（单变量），槽内 15 字 + 6 零尾。（改动：`tools/patch_v19d_pmin.py`；验证：t9 20 字 diff + 3 分支解码 + 用户实测 Plus ON 5 围全顶/OFF 自然、零崩溃。fp 假说动态证实。）
- [x] Tier rates / Free gacha 结案：Tier ON 实测有效（t3 判决兑现）；Free gacha ON 免钻实测通过。
- [x] v20cn 中文包：repack/necr_menu_v20cn.apk（158 entries 零杂散，v1+v2签名对齐；metadata 349条+场景384条，字形门0 bad；崩溃根因=场景重写长度字段，改保长[CN+空格]后解决；对照实验B1纯metadata版不崩/no-level2版不崩/v19韩文位不崩/英文位不崩，中文位原崩溃2/2；设备链：语言选择[中文版]→开场中文→村庄/罗伊/传送→教程链→STAGE全中文→进图战斗→AUTO 35s+→MOD完好；logcat仅剩原生160/164一条；SO 30543200/DEX 648052与v19一致，购买代码零触碰）。
- [x] v19 封版：`release_stable/necr_menu_v19.apk`（`cd5184d5…`）+ `libil2cpp_v19.so`（`2916c4f2…`，与包内 SO 同字节）+ `README_v19.md` + `STABLE.md` 更新；删 v19a/b/c 实验包（6 文件）；v18 对保留；中间 SO 快照 `bak-pre-v19{a,b,c}` 留档；v19 文件入库 b685fd1。（验证：包内 SO/dex 一致性校验 + apksigner verify + 设备覆盖安装 Success + 全开关用户实测。）

- [x] 简体中文版：repack/necr_menu_sc.apk（50919093 B，cd317adc；metadata 349+场景384简体，0超长；双Nanum各缺165字形但设备零tofu故免字体手术；机内files/il2cpp缓存SOP：push+force-stop或卸载重装，包内=机内=7e18e26e；越权子代理三点失实已打回；trad包pid5533闲置死亡1例留档观察）。
- [x] $6.99闪退修复：repack/necr_menu_sc.apk（95e80d06；SO=ac4c1a5a，meta=7e18e26e）已装机，商店确认打开后点$6.99存活，仅托管NRE一行。v1/v2已废弃，被v3单字跳接替：点$6.99四件套全到（钻石102400/ADPass/黑魔女/限购旗，零异常）。模拟器=白嫖，真机扣费一致性待验。
- [x] $6.99闪退v3根治：守卫`cmp r4,#1@0x9A4848`→`b @0x9A4868`（0xE3540001→0xEA000006），`ldrhi r4,[r4,#0x14]@0x9A484C`→`ldr`（0x85944014→0xE5944014），断言0x9A4850=0x1A000000/0x9A4854=0xEBE5E40C；文件偏移==VA（首LOAD段），尺寸30543200不变。（改动：`NECR/work_necr/tools/patch_onechance.py`打`src/lib/armeabi-v7a/libil2cpp.so`；验证：pid 10303点$6.99存活，logcat零FATAL/signal/NRE，钻石0→102400，OneChance/ADPass/diacost/Player02On四prefs齐，SO哈希2f1660b1。副作用：按钮不置灰可重复领，用户已刷至2591万钻，属MOD接受行为。）
- [x] 背包词条NUL截断修复：怪物详情`<color=#FFFB69FF>额外属性`裸奔+5行全空，frida堆证合成串=`<color>额外属性\0\0\0\0</color>\n额外攻击力\0\n1372…`——transB2.py:56用NUL垫短替换，Unity原生富文本扫描遇NUL即停→标签原文渲染+NUL后全截。（改动：垫字节`\x00`→空格+注释；pristine重打metadata 349/0，6032980 B不变，md5 7e18e26e→6d41efd8，3611字节差异全垫字节；验证：堆上合成串零内嵌NUL、标签闭合、5行齐全；包3dbe2156 install -r，存档完好。）
- [x] 排版一/二期（用户授排版权）：自研Text组件指纹（FontSize…11字段+1.0f行距+len）普查level2共341个Text；中英逐像素审计确认背包/商店/气泡与原版对齐一致。一期`增加成员`@0x59D30:3→4；二期`入场`@0x6DDC8:0→1、`卖掉`(三)@0x7CBD8:3→4、`选择形象`@0x73C60:3→4、`排除`@0x88D38:3→4；src/build两树齐改，606228不变。（验证：包内level2逐值复核OK；包229b77d3/53f41478 install -r启动门过。列表行/气泡刻意不动。）
- [x] 对话排版三期：NPC气泡59文件+全堆双证为代码动态创建（右对齐原版设计，无场景组件可改）；298句5字+15字瘸腿断句改单行`在奉巴商店能买到怪物，有时还有稀有怪物。`（63B≤韩文103B），双TSV齐改，pristine重打349/0（md5=52105922）。（验证：堆证单行21字+空格垫，旧双行消失；包c9525741 install -r+清缓存，pid 5151村庄正常。256条莉莉13/11均衡故意不动。）
## 7. 进行中 / 下一步（新对话先干这个）
- 当前卡点：无阻塞，简体包c9525741在设备可玩（pid 5151，中文，存档富裕：金306751306/钻约2591万）。待用户复核（均非阻塞）：
  1. 打开怪物详情：黄标题`额外属性`无标签裸奔、5行属性全显示（NUL修复的视觉验收；用户进详情页比Agent熟）。
  2. `奉巴锁了。`toast：数据文件/TSV双无此串，疑NUL截断合成残段或UI重叠，修后应恢复全串或消失——复现时整屏截图。
  3. 莉莉256句（`用那邪恶…/去拯救…`）若整屏仍见错位，发整屏原图（别裁），按真bug查NPCManager代码路径。
  4. 5个居中按钮（增加成员/入场/卖掉三/选择形象/排除）随玩顺检，不顺眼报名字单点回滚。
- 下一步动作（可直接执行）：无强制动作；用户报新问题先要整屏原图（裁图曾两次误导：裁剪线切掉行首字貌似缺字），再按 §11 取证。
- 待验证假设：无。真机扣费一致性（$6.99）待有Play环境验证；Mix真执行自v18未测（低风险）。
- v19遗留观察项（保留，均非阻塞）：1. 单次冷启动闪退1例（SkillCreate协程后pc=0/lr=0，重进自愈）；2. `PATCHES_v1.md:7`史前明文口令清理待用户定夺；3. 本TASKPOINT入库去留待确认（b685fd1用户主动提交，与§6原定冲突）；4. 存档新备份缺失（scoped直pull拒收，基线仍是v18 tgz）。

## 8. 待办步骤
- [ ] （可选）`logs/`（243MB）、`trans/`（404MB）、`save/`（304MB）瘦身（两轮均未动，按用户范围要求）
- [ ] （可选）若用户不要 v19 测试单位，从 `save/necr_save_bak_20260912.tgz` 恢复（丢其间进度，需确认；且注意 scoped storage pull 限制）
- [ ] （可选）GOLD bonus / Diamond x2M（idx7/8）在役但用户从未 ON 测——r5 普查无高危，行为待用户随玩随验
- [ ] （待确认）`PATCHES_v1.md:7` 明文口令与 `TASKPOINT.md` 入库去留（见 §7）

## 9. 雷区（进行时必须避开）
- 现象/坑：Houdini 下 `pc=0 / SI_USER / fault addr --------` 是翻译器 misreport（附带寄存器 `r4=+0x998CB0`、`lr=libunity+const` 四连稳定全是翻译残留）；原因：真因是普通 guest  fault 被误报；正确做法：永远以"最后一条 hook 日志之后到哪里" bracketing，不按字面追 pc=0。
- 现象/坑：PowerShell 无 `head`/`&&`，`adb shell` 里也没有 `grep`；原因：Windows pwsh + 精简 shell；正确做法：用 `Select-String`/`Select-Object`，adb 输出先 pull 回 PC 再过滤，重定向进设备文件要加引号（`adb shell "cmd > /sdcard/x"`）。
- 现象/坑：覆盖安装后必须以"行为"验新鲜度，不能信 `Success`；原因：曾误判 v17l 跑了 stale（后证伪是误读日志，但谨慎无错）；正确做法：v17q 式代码级标记（改立即数换日志优先级），看到新行为才算数。
- 现象/坑：`force-stop` 可能丢 PlayerPrefs 未 flush 的写入（v18 免费购买疑似因此丢失）；原因：Unity 非干净退出；正确做法：涉及存档的测试用干净退出（回主界面/正常关），删档级操作前必做全量备份（`save/necr_save_bak_20260912.tgz`）。
- 现象/坑：grep 日志漏 tag 会误判（如漏 `N17H` 导致"门控没跑"误判）；原因：tag 太多；正确做法：每次先 `Select-String 'N17|NECR|Addthis'` 全量看一遍再收窄。
- 现象/坑：门控/hook 洞里插帧会改变栈布局，resolved 方法可能是栈布局敏感的；原因：踩过 B03 洞帧、B04 返回桩两连坑；正确做法：PRE-only 钩子只许 B 跳转 + 全寄存器恢复，tail-jump 站点必须从 `[SP,#-4]` 取回地址，NULL 路径用 `bx lr`。
- 现象/坑：只读红线——`NECR/Necromancer.apk`、`BREM/`、`platform-tools/`、`build-tools-win/`、`jadx/`、`jre/`、MuMu 目录只读，动前备份、完事复核原包 SHA；签名口令只走 `NECR_KEYSTORE_PASS` 环境变量，禁写脚本/文档（本轮用户曾在聊天发出过口令，仅用作构建进程 env，未落盘）。
- 现象/坑：公开仓库边界（AGENTS.md §6）——`release_v*/`、`*.apk/*.so/*.dex`、本 TASKPOINT 等不进仓库；提交前 `git status --short` + `git grep -n "ks-pass"` 全是占位。（注意：本轮用户主动把 TASKPOINT.md 提交入库 b685fd1，与 §6 原定冲突，见 §7 待确认。）
- 现象/坑：v19 新增铁律——`0x1B3B7F4/8` TRAMP 头两字永不碰（v18 的 VANILLA 条目是恒等 no-op，真写入会杀死全部 8 个在役门控）；`pop {…,pc}` 禁止出现在购买路径任何体（H1）；fp/sl/r7-r10 禁止进入购买路径体的压栈集（H2/v19c 证实）；TRAMP 调用者若 r5 live 必须自存（U 案）；patch 脚本注释算术也必须用断言锁死（v19c 的 beq 偏移笔误被自带断言在落盘前拦下）。
- 现象/坑：adb daemon 起后 devices 为空不代表没开机；原因：MuMu 需显式 `adb connect 127.0.0.1:16384`；正确做法：先 connect 再 devices。
- 现象/坑：构建要 `NECR_KEYSTORE_PASS` 用户级 env，缺失构建直接拒绝；原因：build_menu.py 硬门槛；正确做法：用户自设 `[Environment]::SetEnvironmentVariable(...,'User')`，口令禁发聊天禁写文件。
- 现象/坑：`/data/tombstone/` 在此模拟器不存在、`tombstone_00` 外部路径 pull 遭 scoped storage 拒绝；原因：权限；正确做法：logcat 的 CRASH 块（寄存器 + backtrace）已足够定罪，不死磕 pull。
- 现象/坑：单变量纪律——v19c  sites 已验证时，v19d 只换体字节不动点位；回滚先保可玩（设备回 v19b），再做法医。v19c 教训：静态审计通过 ≠ 设备通过。
- 现象/坑：metadata短替换禁止NUL垫！嵌入C#串的`\0`会让Unity原生富文本扫描提前终止→标签原文泄漏+后半截断；原因：transB2旧逻辑`b'\x00'`垫片；正确做法：空格垫（transB3场景早如此），重打后堆上复核零内嵌NUL。
- 现象/坑：frida-server重启/模拟器重启后先`adb root`再起server（shell身份ptrace报PermissionDenied），且ARM钩子Houdini下不可靠、只读内存扫描可用；frida脚本必须先挂`on('message')`再load。
- 现象/坑：换metadata必须清机内运行时缓存（`/sdcard/Android/data/com.PrismaThunder.Necromancer/files/il2cpp`）+force-stop或重装，否则跑stale；但更新包一律`install -r`保档，禁uninstall（用户富存档）。
- 现象/坑：场景Text对齐是组件int属性（m_Text前28字节处），改值不改尺寸故无序列化错位风险；但运行时合成串/代码动态创建UI（如NPC气泡）在场景文件里找不到，只能改串内容不能改对齐。
- 现象/坑：用户裁图会误导（裁剪线切掉行首字貌似缺字/错位，两次实例）；原因：短行幸存+长行被切；正确做法：坚持要整屏原图再定罪，数据grep与堆扫描先行。
- 现象/坑：语言切换走prefs（TransNum 1↔0）+push+force-stop+relaunch即可，不必重装；切前备份当时prefs，完事切回中文。
- 现象/坑：往机内il2cpp缓存push metadata不用`adb root`会静默失败（显示pushed但文件未动）；原因：secure_mkdirs权限墙；正确做法：先`adb root`再push，push完立刻pull回验哈希（f6/f7/f8三轮metadata改动因此从未真正进过内存，场景/int改动因住APK内才生效；此为"NPC依旧断行"的真因，非译文问题）。
- 现象/坑：level*场景文件头32字节被脱壳重组污染（尺寸全零/version字节 swapped，`2021.3.18f1`串在@48才出现）；原因：assemble_unshelled重写头；正确做法：永不信头（data_off=0是假的），对象定位走内容硬锚点（`1.0f+len+content`三联体、script PPtr `(1,320)`=UnityEngine.UI.Text、GameObject名表、12字节GO指针精确匹配+四元数模校验；注意锚点`(0.5×4)`模恰为1会冒充四元数，必须再验pos/scale/rect全向量）。
- 现象/坑：免责条"偏左"是原厂设计（韩文原包同偏移同值4同渲染），其Text框体经祖先链缩放后落在屏幕左部；原因：对齐4=MiddleCenter是相对框体，框体渲染后偏左；正确做法：单变量探针f7将该实例idx22改4→5（MiddleRight），标题屏截图验证文本中心落50.0%（`logs/f7_t7.png`），字符串冻结故无复发风险；框体手术（RectTransform浮点）风险更高，未采用。

## 10. 关键文件与修改
- `NECR/work_necr/release_stable/necr_menu_v19.apk` + `libil2cpp_v19.so`：新建，v19 成品对（= v19d）。
- `NECR/work_necr/release_stable/README_v19.md`：新建，v19 增量/根因/验证/回滚。
- `NECR/work_necr/release_stable/STABLE.md`：更新，v19 接替说明（v18 保留）。
- `NECR/work_necr/tools/patch_v19a.py`：新建，G 安全体（8 字，`bx lr` + `[sp,#4]`）。
- `NECR/work_necr/tools/patch_v19b_ur.py`：新建，U/R 补存 r5（原位 4 字）。
- `NECR/work_necr/tools/patch_v19c_p.py`：新建，失败探针（留档，勿用）。
- `NECR/work_necr/tools/patch_v19d_pmin.py`：新建，极简 P 体（15 字，只存 `{r5,lr}`）。
- `NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so`：live 即 v19 状态（勿动）。
- `NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so.bak-pre-v19{a,b,c}`：新建，各阶段手术快照。
- `NECR/work_necr/repack/necr_menu_v19d.apk`：保留（已装机版本溯源）；v19a/b/c 实验包已删。
- 旧版条目保留：`release_stable/`（v18 对）、`restore_v18.py`、`patch_gacha_trace*.py`、`save/necr_save_bak_20260912.tgz`、`playerprefs_*.xml`、截图链（见旧版记录）。
- `NECR/work_necr/tools/patch_onechance.py`：新建，OneChance v3单字跳过（断言锁三处字）。
- `NECR/work_necr/tools/patch_iap.py`：P3 trampoline生成器（v19已在役，勿回归）。
- `NECR/work_necr/tools/transB2.py`：垫字节`\x00`→空格（词条NUL根治，只此一处逻辑改动）。
- `NECR/work_necr/trans/work/tsv_full_sc.tsv` + `tsv_scene_sc.tsv`：298条改单行（对话排版）。
- `NECR/work_necr/src/assets/bin/Data/level2` + `build/menuapk/.../level2`：5按钮对齐int（0x59D30/0x6DDC8/0x7CBD8/0x73C60/0x88D38），两树齐改。
- `NECR/work_necr/src/assets/bin/Data/Managed/Metadata/global-metadata.dat`（+build树同位）：当前=52105922（空格垫+298单行）。
- `NECR/work_necr/src/assets/bin/Data/Managed/Metadata/pre-cn.bak.global-metadata.dat`：原厂metadata，只读重打源。
- `NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so`：当前=v3（2f1660b1，P3+OneChance跳过）；`logs/libil2cpp_so_{pre-onechance,v1-onechance,v2-onechance}.bak`为各阶段快照。
- `NECR/work_necr/repack/necr_menu_sc.apk`：当前=c9525741（50919018 B，已装机）；旧包`necr_menu_v20cn.apk`、3b31f3ba等中间包已超期。
- f7（2026-09-13，当前装机）：`repack/necr_menu_f7.apk`（50919018 B，`9f928e92…f98147343f1`，158 entries，v1+v2，payload SO 30543200/DEX 648052）= f6全部（8处重断行）+ level1免责条对齐int 4→5（src/build两树@10048，`logs/f7_t7.png`标题屏验证居中50.0%）；回滚=`repack/necr_menu_f4.apk`或`necr_menu_sc.apk`（`install -r`保档）。附带结论：MonoScript(1,320)=UnityEngine.UI.Text（标准TextAnchor枚举，5按钮3→4/0→1方向正确）；level1五Text↔框体5/5硬关联；标题屏须启动后7秒抓（15秒已进村庄）。
- f9/终版（2026-09-13，用户拍板初版底+只修词条，现已改名）：`repack/necr_menu_cn_final.apk`（原名necr_chuban_summonfix.apk，50919018 B，SHA256前缀`A11A1758`，v1+v2+v3，直版初版APK外科手术，未经tree/build_menu；与初版差异仅签名+metadata 14字节：idx 11593–11600八个"额外*"条目NUL垫片→空格）。病因：背包词条面板=idx1117`<color=#FFFB69FF>`+idx11596`额外属性`(4×NUL)+idx1057`</color>`+5行词条逐行组装，原生富文本扫描遇`\0` abort→tag原文泄漏+后半截断（英文Add Stats精确贴合故正常）。机内缓存须`adb root`+push+pull回验哈希（`148953263502`）+force-stop冷启动（游戏只读files/il2cpp副本，APK内metadata被无视）。用户背包截图验收通过。遗留：16384机存档/语言曾在f8周期环境变化（与手术无关，待用户确认富存档下落）；用户不再信任menu_f系列，后续一律直版手术。
- 终版定稿（2026-09-13）：`repack/necr_menu_cn_final.apk`即最终版。清理：删repack门f4/f6/f7/f8/sc五包（243MB）、D:/tmp会话文件57个（114MB）+tsv_bak两目录（t3期审计资产保留）；src/build两树已同步终版状态（metadata 148953263502、level1 6a1641f726c2、level2 6201542cdb76，两树一致）。保留：初版底包、去壳底包、keystore、release_stable、logs证据链。
- 彻底清理（2026-09-13）：终版改名`necr_chuban_summonfix.apk`→`necr_menu_cn_final.apk`（改名验哈希一致）；repack删24个过期APK（含v19d，已验与release_stable/necr_menu_v19.apk同哈希`cd5184d5`）+全部孤立idsig，现仅剩keystore/终版/去壳底包；logs删8张会话截图；D:/tmp删中文线文件233个（frida/tombstone/prefs/存档/SO他线保留，余102个）。
- `NECR/work_necr/TRANS_NOTES.md`：中文/SC/排版战报区（词条NUL/居中一二期/对话三期/$6.99 v1→v3）。
- 本轮新增未入库脚本/文本（`tools/{report_b3,trans_cmap_report,trans_fix_trad,trans_join}.py`、`trans/work/cn_batch*_sc.txt`等）：翻译管线资产，按§6白名单仅`.py`+小体积文本可收。
- 已废弃（已删除）：`release_v1`~`release_v18/`（36 目录）、SO `.bak-*` ×20（v18 期清理）；本轮删除：`repack/necr_menu_v19{a,b,c}.apk*`（6 文件）。

## 11. 验证方式
- 版本回滚：`adb -s 127.0.0.1:16384 install -r NECR/work_necr/release_stable/necr_menu_v19.apk`（v19）；回 v18 同理换包名（同密钥覆盖）。
- 购买验证：走近 Bongba → 点身体开抽卡页 → 点 10 钻槽位 → 进程存活 + 单位落格 + 钻石按配置扣除；G ON 落 G / Plus ON 5 围全顶 / OFF 自然。
- 升级/刷新验证：升级 ON/OFF 各点一次 + 刷新一次 → 无崩 + 扣费符合开关。
- 崩溃复现：`adb logcat -d -v threadtime | Select-String 'signal 11|FATAL'` 看签名（SI_USER 空 fault = Houdini 类；真 fault 地址 + `#00 pc` = 真空解引用类，如 U 案 `0x1436C34/0x1c`）。
- 存档核对：行为证据（落格/扣费/无 corruption 弹窗）；直 pull 受 scoped storage 限制。
- 仓库卫生：`git status --short`；`git grep -n "ks-pass"` 全占位；`git grep -n "necr1234"` 仅史前 PATCHES_v1 一行（待确认）；原包 `sha256(NECR/Necromancer.apk)` 前缀 `91f35185`。
- 中文/排版验证：①包内取证（`zipfile`读APK内level2/metadata直验哈希与对齐值）；②堆取证（frida UTF-16LE扫描，root身份server，读composed串看NUL/标签/行全）；③Text普查（11字段指纹扫场景，列对齐/字号/内容）；④语言切换（prefs TransNum+push+force-stop+relaunch）；⑤更新包`install -r`+清il2cpp缓存+冷启动截图门。

## 12. 恢复指令
- 新对话打开本项目后执行 `/resume`，Agent 将读取本文件并从"§7 下一步"继续。

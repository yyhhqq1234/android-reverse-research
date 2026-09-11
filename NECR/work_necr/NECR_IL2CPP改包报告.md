# NECR IL2CPP 改包报告（路线二：放弃真 dex，主攻 IL2CPP＋资源）

> 结论先行：这是**纯离线单机放置游戏**（无自建服务器，只有 Unity 遥测/商店链接），Java 层只是薄胶水。
> 真逻辑 100% 在 `libil2cpp.so`＋metadata，已还原 `dump.cs`（369121 行 / 5896 类，其中游戏自有 160 类）。
> 真 dex 取不到不影响改包：改数值走 **GG 动态值 / 存档 XML / 资源表 / SO 补丁** 四条路即可。

## 1. dump.cs 导读（游戏自有 160 类，TypeDefIndex 5945–6104）

- **单例管理器群**（全 `public static instance`，GG/补丁锚点好找）：
  `MainManager`（主角养成＋转生）、`CostManager`（金币/钻石唯一出入口）、`Inventory`（背包＋存档）、
  `GambleManager`（抽卡）、`SkillCreate`（技能）、`QuestManager`（任务）、`CashShopManager`（钻石包/广告奖励）、
  `UnitManager`（召唤）、`StageManager`/`BossLevelManager`（关卡）、`UpgradeManager`、`CollectionManager`、`SoundManager`、`UIManager`、`ADManager`、`Rewarded`（Unity 广告）
- **战斗双 FSM**：`PlayerFSM`（主角＋召唤单位共用 `PlayerParams`）＋ `UnitFSM`（怪物，`enemy=true` 区分敌我）；
  伤害结算集中在 `PlayerFSM.AttackCalculate` / `UnitFSM.AttackCalculate`，随机攻击 `GetRandomAttack()->int`
- **数值模型**：`PlayerParams`（level/maxHp/curHp/attackMin/attackMax/defense/money/exp 全 int，偏移见下）、
  `MainData`（主角升级面板）、`Item/Skill/Upgrade/Main/StageData/GambleData` 六张 ScriptableObject 表
- **存取档**：`Inventory.SaveInventory/LoadInventory`＋`LateSaveItem` 协程 → PlayerPrefs 本地键（见 §2.5），无服务端校验
- **内购**：`InAppPurchaser` 几乎是空壳（Codeless IAP），`CashShopManager.Dia100/1000/4000/20000` 是钻石包按钮；
  字符串里有 `ThisIsFakeReceiptData`（Unity IAP 本地收据特征）→ 离线收据校验可绕
- **广告**：`Rewarded.GetReward`＋`OnUnityAdsShowComplete`，`adRemove` 字段预留了去广告开关位

## 2. 可改点清单（按动手成本排序）

### L0 — GG 直接搜数（进游戏 5 分钟见效）
| 目标 | 锚点 |
|---|---|
| 钻石/金币 | `CostManager.AddToDia/SubToDia/AddToGold/SubToGold` 经手的 int，dword 精确＋变化搜索 |
| 主角攻/血 | `PlayerParams` 字段偏移：`attackMin +0x18`，`attackMax +0x1C`，`maxHp +0x10`，`curHp +0x14`，`defense +0x20`，`money +0x70` |
| 抽卡权重 | `GambleManager` 字段 `grade01…grade10`（+0x68…+0x44，10 档概率表，常驻内存）直接改 dword |
| 冷却 | `gambleCoolCount +0x3C` / `gambleCoolCountMax +0x30`，`CashShopManager.curSummonSec +0x4C` |

### L1 — 存档 XML 直改（root，游戏关掉改）
`/data/data/com.PrismaThunder.Necromancer/shared_prefs/*.xml`，键名：
`Gamble / Inventory / MainLevel / Skill_Level / Upgrade_Level / StageGrade / StageLimit / QuestCount / SummonLevel / Plus_Level / CurSummonSec / GambleCoolTime / BossLevelCoolTime / MainDataTable`
（JSON/拼接串：先 pull 备份再改，错了回滚）

### L2 — 资源表改数值（不动代码，最稳的重打包）
`assets/bin/Data/globalgamemanagers.assets`（127KB）内含六表：
`ItemDatabase / SkillDatabase / UpgradeDatabase / MainList / StageData / GambleData`
→ `AssetStudioMod`（`work_necr/tools/ASModGUI.zip` 已备）导出改 MonoBehaviour 数值再封回。
`StageManager.StageClass.Monster`（关卡怪表）同理。

### L3 — libil2cpp.so 补丁（永久生效，需测壳校验）
ARM32 函数地址＝RVA（dump.cs 直接给）：
| 效果 | 函数 | RVA |
|---|---|---|
| 伤害拉满 | `PlayerFSM.AttackCalculate` | `0x122B1A0` |
| 怪物打人如刮痧 | `UnitFSM.AttackCalculate` | `0x1429414` |
| 技能无冷却 | `SkillCreate.ActiveSkillCoolTime`（协程等待） | `0x13D2520` |
| 抽卡必 10 档 | `GambleManager.RandomGrade()->int` | `0x1219FFC` |
| 免费转生 | `MainManager.AddToSoltRebirth`（public） | `0x1220FB0` |
| 钻石包白嫖 | `CashShopManager.Dia100/1000/4000/20000` | `0x9A4928/90/A64/B90` |
| 看广告跳过 | `Rewarded.GetReward` | `0x13D1098` |
| 满血 | `PlayerParams.HPFullRecovery` | `0x122E2B0` |
补丁手法：`GetRandomAttack/RandomGrade` 类 `->int` 直接 `MOV R0, #大数; BX LR`；
`SubToDia/SubToGold (0x9A1EF0/0x9A7B8C)` 直接 `BX LR`（扣费变空函数）。
工具：IDA/Ghidra/hex 定位 → 改内存验证（GG 写内存先行）→ 落盘。

## 3. 重打包路线（保壳不动，只动资源/SO）

1. `apktool d Necromancer.apk`（3.0.3 已备；注意中文路径坑，用英文暂存路径中转）
2. **只改**：`assets/bin/Data/*`（数值表）、`assets/sharedassets*`（美术/文本），可选 `lib/armeabi-v7a/libil2cpp.so`（L3 补丁）；
   **绝不动**：`classes.dex`（壳 stub）、`assets/libjiagu.so`、`assets/.jgapp*`、`lib/arm/libjgdtc.so`、`AndroidManifest.xml` 包名/activity
3. `apktool b` → 自签名（v1＋v2，新 keystore）→ 对齐安装到 MuMu 验证
4. 壳自校验风险（已知信息）：反编译显示壳只校验**包名**（`getPackageName`），未见签名 pin；但企业版可能隐含校验。
   若闪退/弹错：回退到 L2 纯资源改（壳一般不校验资源），或对 stub smali 做最小 nop（stub 源码已在 `work_necr/stub/`）
5. 全程原包只读：改完用 SHA256 对原包复核（`91F35185…24029896`）

## 4. 产物索引
- `work_necr/trial/out_vanilla/dump.cs`（30 万行 C# 还原）＋ `il2cpp.h / script.json / stringliteral.json`
- `work_necr/prod/libil2cpp.so.memdump.bin`（G1 PASS）＋ `maps_snapshot.txt`
- `work_necr/stub/`（壳 dex 反编译，XOR16 已破）
- `work_necr/tools/`：apktool 3.0.3 / Il2CppDumper 6.7.46 / AssetStudioMod / BlackDex32 / frida 17.18.0 / GG 手工＋内存脚本全套
- 未竟：真 dex（诱饵分析见 `prod/dexdump/`，`real_0.dex` 787KB 表损坏，可作反取证样本）

## 5. 补丁战报（E1–E20）：壳绑定签名，全灭但定位精确
- E1 apktool空包：死 JNI_OnLoad/JNI_ERR（验 stub dex 内容哈希）
- E2/Hybrid/E6/E9/E12/E14/E18/E19：换签后全部死解密期 memset(SIGSEGV @0xf4740000, len=0x0FF00000垃圾值)
- 排除项：内容/zip偏移/证书文件名/原证书文件共存/文件大小(52336519精确)/EOCD注释位
- tombstone：解密代码 memset(dest,0,2.5亿) 写穿页崩；原包同位置为正常小值
- 结论：360企业版 DynCryptor 用运行期签名派生密钥，静态无钥匙孔（无AES/SHA常量、无内嵌证书/哈希/公钥）
- 副产物：stale-v1+有效v2 可安装；v2不覆盖EOCD注释（64KB自由空间）；v1-only不可安装(targetSdk31)

## 6. 活体取证（进行中）
- .bss RX 889KB = 已解密载荷(ELF头在，phdr被抹，x86)
- 明文串：getPackageInfo/GET_SIGNATURES/sourceDir/samsung/QHDialog + RePlugin(com.playgame.havefun)
- 堆内诱饵dex复现(real_0 787208B/real_1 93316B, sha1非法)
- 内嵌284B LEmpty;占位dex；61个哈希资源=头被抹的SerializedFile(贴图)
- 找真dex：全内存描述符扫描 + dalvik堆384MB分块扫描（进行中）

## 7. 脱壳路线（去360化，拼图差真dex）
- Manifest审计：零自研Java（UnityPlayerActivity/UnityAds/计费存量+StubApp）；C#只碰标准Unity/Billing/Ads类
- 配方：apktool改manifest(去StubApp)+原assets/libs+真dex+自签=干净包（tools/assemble_unshelled.py已备）
- 真dex源：内存雕刻（首选）/ Unity 2021.3.18f1官方模块(changeset 3129e69bc0c7，备用)

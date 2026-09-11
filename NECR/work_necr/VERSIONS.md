# NECR 版本备份总表（`work_necr/release_v*`）

> 每个版本 = 可安装 APK + 对应 `libil2cpp.so`（重装/回滚二选一：装 APK 整包回滚，或把 so 拷回 `src/lib/armeabi-v7a/` 重走 `build_menu.py`）。
> 签名统一用本地 `repack/necr.keystore`（密钥仅保存在本机，未随仓库发布），v1+v2，zipalign 过。原包 `NECR/Necromancer.apk` 只读未动（SHA256 前缀 `91F35185…`）。

| 版本 | APK | SO | 内容 | 状态 |
|---|---|---|---|---|
| v1 | `necr_unshelled.apk`（无菜单） | `libil2cpp_patched.so` | 去壳＋P1–P4（金币/钻石/IAP/文本），`PATCHES.md` 活文档也在此目录 | 基线，可用 |
| v2 | `necr_unshelled.apk`（无菜单） | `libil2cpp_patched.so` | v1＋P5–P8（合成/抽卡/等级/词缀 — 含已撤回的 P9） | 召唤必崩（P9），勿用 |
| v3 | `necr_unshelled.apk`（无菜单） | `libil2cpp_patched.so` | v2＋P10–P11（plus/三档概率）＋`BACKUP.md` | 召唤必崩（P9），勿用 |
| v4 | `necr_menu_v4.apk`（9 开关菜单） | `libil2cpp_gated.so` | M6 环境变量桥＋M7 门控收编（开关真生效） | 召唤必崩（P9），勿用 |
| v5 | `necr_menu_v5.apk`（11 开关菜单） | `libil2cpp_gated.so` | v4＋M8 God/MP（M8b 调用点落位） | 召唤必崩（P9），勿用 |
| v6 | `necr_menu_v6.apk`（11 开关菜单） | `libil2cpp_gated.so` | v5＋P9 revert＋MIX4 槽位门控；用户实测：墓碑召唤OK/合成必成功OK/God无敌OK | 历史版（被 v7 取代，召唤已修，可用） |
| v7 | `necr_menu_v7.apk`（11 开关菜单） | `libil2cpp_gated.so` | v6 减 M12/Affix 整组；残留差 878B（nop 区 48B 所致，无其他）；校验全绿 | 历史版（被 v8 取代；充钻闪退，未修勿用） |
| v8（当前） | `necr_menu_v8.apk`（11 开关菜单） | `libil2cpp_gated.so` | v7＋P3f IAP 修复（删 CS_TARGET 野指针死加载）＋D8x 钻石改 x1024；充钻不再闪退 | ✅ 在用 |

补丁明细见 `release_v1/PATCHES.md`（M1–M11、P1–P11、P9x、P3f、D8x 行）。
| v9 current | necr_menu_v9.apk (11 switches) | libil2cpp_gated.so (07932c29) | v8 + M13 TIERED stack fix + M14 GRADE-OFF; boot/gacha/diamond crash fixed | IN USE |
| v10 current | necr_menu_v10.apk (11 switches) | libil2cpp_gated.so (3334823d) | v9 + M15 farm relocation; diamond+gacha crash fixed | IN USE |
| v11 current | necr_menu_v11.apk (11 switches) | libil2cpp_gated.so (7cfe76a8) | v10 + M16 split-push gates; diamond final fix | IN USE |
| v12 current | necr_menu_v12.apk (11 switches) | libil2cpp_gated.so (see apk) | v11 + M17 GOD redesign; battle fix | IN USE |
| v13 current | necr_menu_v13.apk (11 switches) | libil2cpp_gated.so (450f4383) | v12 + M18 audit + GRADE fix; save restored | IN USE |
| v14 pending | necr_menu_v14.apk (11 switches) | libil2cpp_gated.so (see apk) | v13 + M19 MIX4-ON minimal; awaiting test | PENDING |
| v15 pending | necr_menu_v15.apk (11 switches) | libil2cpp_gated.so (see apk) | v14 + M20 player-only GOD; awaiting test | PENDING |
| v16 pending | necr_menu_v16.apk (11 switches) | libil2cpp_gated.so (see apk) | v15 + M21 dual-flag GOD; awaiting test | PENDING |

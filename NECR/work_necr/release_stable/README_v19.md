# v19 — mod 菜单全开关复活版 (2026-09-12)

成品: `release_stable/necr_menu_v19.apk` (50923268 B, sha256 `cd5184d5…01f0`,
同密钥覆盖安装, v1+v2签名, zipalign 4)，对应 SO `release_stable/libil2cpp_v19.so`
(30543200 B, sha256 `2916c4f2…5a1b`)。设备验证机型：MuMu 12 / Android 12。

## 相对 v18 的增量（7 处购买直调全部恢复为门控，购买零闪退）
- **v19a（G grade 复活）**：点位 `0x999E74: bl 0x1B3BC8C` + 新体 8 字。旧 G 体死因
  H1：`pop {…,pc}` 出口钩在 Houdini 下 mistranslate；新体改 pop+`bx lr`，
  OFF 经 `[sp,#4]` 取调用方 grade（M14 形态）。脚本 `tools/patch_v19a.py`。
- **v19b（Free upgrade / Free refresh 复活）**：U 体 `0x1B3B9C4`、R 体 `0x1B3B9A8`
  的 push/pop 集补存 r5+r6（`E92D4013→E92D4073`，原位 4 字）。根因：TRAMP 入口
  `mov r5,r0` 在 ON/OFF 两档都改写调用方 r5，升级调用点 r5 是 live 指针，
  返回后 `+0x1c` 空解引用（`#00 pc 0x1436C34 / fault 0x1c / r5=4` 铁证）。
  14 体 r5 普查：在役体已无高危（旧 G 体除外，已退役）。脚本 `tools/patch_v19b_ur.py`。
- **v19c（失败探针）**：P 体按旧逻辑去 `pop-pc` 化（19 字→21 字），ON/OFF 同崩，
  原案签名（SI_USER/空 fault）。教训：在役体从不存 fp/sl/r7-r10，两代 P 体都存。
- **v19d（Max plus 复活）**：极简体 15 字 `@0x1B3BCAC`（站点不动，只存 `{r5,lr}`），
  fp 压栈假说动态证实。脚本 `tools/patch_v19d_pmin.py`；探针脚本保留
  `tools/patch_v19c_p.py`（失败证据链）。
- **Tier rates**：0 字改动——t3 逐字审计静态无罪，用户 ON 实测有效结案。
- v19 铁律（新增）：`0x1B3B7F4/8` TRAMP 头两字永不碰；`pop-pc` 禁入购买路径体；
  fp/sl/r7-r10 禁入购买路径体压栈集；`bl` 点位之后禁借 r2/r3（沿用 M10）。

## 验证矩阵（MuMu 12 / Android 12, `127.0.0.1:16384`）
- G ON 落袋恒 G / OFF 自然品阶；Plus ON 5 围全顶 / OFF 自然；购买全程无崩溃。
- Tier ON 三档概率生效；Free gacha ON 免钻；升级 ON/OFF + 刷新均无崩且扣费符合开关。
- 徽章/面板沿用 v18 结论（本轮未动显示与面板代码）；战斗 v18 期用户已验证，v19 购买路径之外无改动。
- 单次冷启动空指针崩溃 1 次（`SkillCreate` 协程后 pc=0/lr=0，重进自愈， TaskPOINT 雷区已记；复现则查存档/原生）。
- 存档：行为证据健康（购买落格、扣费正常、无 corruption 弹窗）；v18 全量备份
  `save/necr_save_bak_20260912.tgz` 仍为回滚基线（scoped storage 拒收直 pull，新测单位未另备）。

## 回滚
- 回 v18（购买去闪版，开关部分失效）：`adb install -r release_stable/necr_menu_v18.apk`。
- 回 v19b（G+升级/刷新活，Plus 死）：`src/lib/armeabi-v7a/libil2cpp.so.bak-pre-v19c` + 重编
  （或留档包缺失时用此 SO 重走 `build_menu.py`）。
- 本轮中间快照：`libil2cpp.so.bak-pre-v19{a,b,c}`（各 30MB，手术级回滚用）。

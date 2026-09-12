# 稳定版备份 (2026-09-12 v19 接替 v18)

- v19: `necr_menu_v19.apk`（全开关复活版，详见 `README_v19.md`）
- v19 SO: `libil2cpp_v19.so`（与 v19 APK 内 SO 同字节）
- v18（回滚基线，保留）: `necr_menu_v18.apk` + `libil2cpp_v18.so`
  （购买去闪版，G/Plus 开关失效；回滚 `adb install -r necr_menu_v18.apk`，同密钥）
- 设备状态：已覆盖安装 v19d（= v19），存档行为健康；
  全量存档基线仍为 `save/necr_save_bak_20260912.tgz`（v18 期）。
- 历史版本目录清理沿用 v18 结论；本轮新增：`tools/patch_v19a.py`、
  `tools/patch_v19b_ur.py`、`tools/patch_v19c_p.py`（探针）、
  `tools/patch_v19d_pmin.py`；v18 文档保留为 `PATCHES_v1.md`/`README_v18.md`，
  干净存档样例为 `playerprefs_clean.xml`。

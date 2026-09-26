# 04 开发 — 流程/分支/命名/约束

## 开发流程

1. 按 `AGENTS.md §4` 任务路由确认 BREM / NECR / DWRG / 工具链哪一类。
2. BREM：读 `projects/BREM/说明.txt`，小步改 + 回装验证，禁止覆盖最终版 APK。
3. NECR：按 `projects/NECR/work_necr/00_准备状态_必读.md` → `NECR_IL2CPP改包报告.md` → `release_stable/PATCHES_v1.md` 顺序读，优先复用 `tools/` 现有脚本（`g1_gate.py`、`assemble_unshelled.py`、`patch_iap.py`），不要重造轮子。
4. DWRG：读 `projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md`，产物只写 `projects/DWRG/work_dwrg/`，动态前先 `adb devices`。
5. 汇报按 DoD：成品（文件名/大小/签名/对齐/验证机型/回滚路径）或分析产物（路径/校验/下一步），失败给日志路径与复现步骤。

## 分支/构建/测试

- 分支：`main`（PUBLIC）；本地改动先 `git status --short` 留证，不擅自 stash。
- 构建：NECR 走 `assemble_unshelled.py` / `build_menu.py`；BREM 走 apktool 小步；DWRG 走 raw 直解 + jadx `--no-res`。
- 测试：`python -m py_compile <script>`（退出 0）；`apktool --version`（3.0.3）；`adb --version`（1.0.41）；G1 门对 `prod/` 落盘跑对照。
- Java：优先 `tools/jre/` 或 `projects/NECR/work_necr/toolchain/jdk-17.0.11+9`，不要乱升级。

## 命名规范（kebab-case 铁律）

- 新目录/文件一律小写 kebab-case（`user-center` 不用 `UserCenter/user_center/用户中心`）。
- 测试 `*.test.*` / `test_*`；文档 `NN-name.md`（`01-overview.md`）；脚本 `verb-object.py/ps1`（`patch-gacha.py`）；配置 `*.example.*` 留样。
- 禁止：`tmp/temp/bak/old/new/final/misc/other/stuff/新建文件夹` 及单复数混用（`test/tests` 只留 `tests/`）。
- 例外（保留大写，见 02 对照表）：`projects/BREM/`、`projects/NECR/`、`projects/DWRG/` 为已发布名，改名 churn > 收益，保持不动；`work_*`（`work_brem/work_necr/work_dwrg`）为三项目统一工作区约定，保持下划线。

## 项目特有约束

- 只读红线：`projects/BREM/别惹恶魔.apk`、`projects/NECR/Necromancer.apk`、`projects/DWRG/第五人格（测试版）.apk`、`projects/BREM/backup_original/`、`tools/platform-tools/`、`tools/build-tools-win/`、`tools/jadx/`、`tools/jre/` 一律只读；改前备份，改后复核原包 SHA256。
- 中文路径坑：apktool/Il2CppDumper/部分签名用英文暂存路径中转，成品再拷回；`projects/DWRG/` 已去括号，仍需双引号包裹。
- 模拟器分工：开机、点进主界面、装 GG 跑 dump 由用户做；Agent 只做 adb + `prod/` 落盘 + G1 门 + 对照。
- 密钥：本地 keystore/jks 与口令仅本机，走 `NECR_KEYSTORE_PASS`（默认 `CHANGE_ME` 占位），禁止写回真实口令；公开仓库已 `.gitignore` 排除。
- 产物归位：NECR 只写 `projects/NECR/work_necr/`，DWRG 只写 `projects/DWRG/work_dwrg/`，BREM 新改先备份写明 smali 点位；报告进子目录 md，不散落根目录。

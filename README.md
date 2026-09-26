# 安卓逆向项目集

这是一个 Android 逆向分析与改包研究工作区，包含三个独立项目：

- **BREM（别惹恶魔）**：smali 层改包研究记录与说明。
- **NECR（Necromancer）**：Unity IL2CPP / Android 壳分析、去壳实验记录（已完结封存，稳定版 v19 在用）。
- **DWRG（第五人格测试版）**：NeoX 非 Unity 包解包与动态分析记录。

## 仓库边界

本公开仓库只保存研究文档、可复用脚本和必要的文本配置。以下内容明确不上传：

- 原版或修改版 APK、DEX、SO、Unity 资源和其他二进制产物
- 签名密钥、密码、证书和本地凭据
- 反编译完整目录、内存 dump、构建/发布目录、日志和存档
- Android SDK、JADX、JRE、模拟器及第三方 APK

详见 [`.gitignore`](.gitignore)。

## 免责声明

本仓库用于合法授权的软件安全研究、互操作性研究和个人学习。请勿将其中的方法用于未经授权的篡改、绕过付费机制、侵犯版权或违反目标软件服务条款的行为。仓库不包含第三方应用的可发布副本。

## 项目说明

- BREM 说明：[`projects/BREM/说明.txt`](projects/BREM/说明.txt)
- NECR 准备状态：[`projects/NECR/work_necr/00_准备状态_必读.md`](projects/NECR/work_necr/00_准备状态_必读.md)
- NECR 分析报告：[`projects/NECR/work_necr/NECR_IL2CPP改包报告.md`](projects/NECR/work_necr/NECR_IL2CPP改包报告.md)
- NECR 工具脚本：[`projects/NECR/work_necr/tools/`](projects/NECR/work_necr/tools/)
- DWRG 分析报告：[`projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md`](projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md)

## 许可

仓库中由本项目作者编写的文档和脚本按 MIT License 发布。第三方工具、样本、商标和目标应用内容不在本许可授予范围内，并且未随仓库发布。

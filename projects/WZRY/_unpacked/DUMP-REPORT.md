# WZRY完全性DUMP报告
- 原包：`wzry.apk` 2140869415B SHA256 `57848e691c5decb3e460f349d749f23d54ee2c3abcf0a27b42ce456cbec8c56f`，374条：res236/assets82/lib50(25种×2ABI)/dex1
- Java：smali7449=类数，jadx-java4611（内部类合并+7错，见`jadx.log`），`jadx-dex/`全
- C#：3566类/38036方法/31277字段，`Assembly-CSharp.dll`10113024B+firstpass+UnityEngine，`csharp-*.txt`全
- Unity：`data.unity3d`107MB，`unity-out`380 TextAsset/Shader，`skill.bytes`1333140B/`hero.bytes`137132B/`HeroBuff.bytes`11144B
- 表：528个.bytes（包内1+Databin527），熵3.46~7.92，低熵191个XOR壳，高熵337个加密；`ResourcePackerInfoSet.bytes`1888003B熵3.46明文索引=解密钥
- SO：50个全EM_ARM，GameCore43MB引用仅10（加固），`so-inventory.txt`全；APK无arm64/x86-GameCore，houdini转译跑
- 产物：`dump-full/{inventory.txt,sha256.txt,so-inventory.txt,bytes-catalog.txt}`+本报告；缺口：jadx7错/unity18文本修正待验（`ux2-ux6.py`链）

# BC汇合收口终报（B静态改包 × C native动态dump）

- 目标：DWRG B静态smali改包 + C native动态dump，不碰Java桥不拿真机
- 对象（自有包，只读未动，复核一致）：
  - 测试版 `projects/DWRG/第五人格（测试版）.apk` 687172784B `d1b3f51f…55dfb`（已封存，未装机）
  - 正式版 `projects/DWRG/第五人格（官服正式版）.apk` 2012889355B `0683dd40…71a5c3`（设备已装同版本262401653，不动原签名包）

## 1 装机对照
- 设备 `127.0.0.1:16384` SDK32在线；`com.netease.dwrg` 262401653/2026.0828.1653已装；`com.identityv.shrek156`未安装（测试版封存不装机，避免2GB双包冲突）
- B包 `b_static/dwrg_B1_signed.apk` 2012815017B：`apksigner verify` v1 true/v2 true，`aapt`包名版本与原包一致，`zipalign -c`绿
- 未覆盖安装原因：同包名不同签名（原NetEase vs debug.jks），强行`-r`必`UPDATE_INCOMPATIBLE`；等价判据=verify+aapt+dex三证，卸载重装2GB待操作者确认
- logcat现网：`ProtocolLauncher START` + `init_unisdk mode=1/result=success code=0`×2 + `OrbitSDK 3.10.0`，UniSDK链活；Hall（WorldCityHall）尚未触发，待主门

## 2 dump对照（B×C无交集，符合不碰Java桥）
| 面 | B静态 | C动态 | 对照结论 |
|---|---|---|---|
| 层 | classes5.dex PluginUniSDK Java桥7布尔回真 | libclient.so native文件/网络/订单+script1解密出口 | 分层零重叠，C无`Java.perform/use`复验0命中 |
| B dex | 原4631676→补丁4594884，dex035，checksum `59222b06`→`598b2306`，jadx L1-L7全`return true` | — | 补丁唯一变量 |
| C钩 | — | c1_file(路径+loader/crypt)/c1_net(收发+SSL+Mercury/Nub/Filter)/c1_order(JNI OrderCheckDone+解密出口script1双落盘)，node--check全0/py_compile 0 | 未live（pidof双包空/dump dir absent），判据已备：`script1_*.bin`见NXPK/NXS/marshal-c/zlib即解密体 |
| 交叉 | B改登录门（hasLogin/isInit），C抓登录后script1远端 | B为C铺路：回真后进Hall才有script1下载可dump | 联调顺序=B装机→C三条互斥跑→pull out/ |

## 3 离线Hall判据（T5沿用，B回真后可用）
- 链：`hasLogin/isInit true` → `loginDone(0)` → `NativeOnLogin` → `WorldManager release_logic be=HallEvent` → `WorldCityHall init_scene_ex 78` → `after_loading 125` → `WorldCityBase after_loading 462` → `EXP loading_finish_city`
- logcat grep：`WorldCityHall|HallEvent|loading_finish_city|LoginUI|init_unisdk`；现网已见`init_unisdk success`，缺Hall段即未进主门
- C dump命中Hall后应出：`FileLoader res.npk→Documents/script.npk→script.npk` + `script1_*.bin`（NXPK 4B50584E / marshal 0x63 / zlib 78xx）

## 4 终报增补
- B：`B1_Static_Patch.md` + `b_static/dwrg_B1_signed.apk`（L1-L7点位/字节/签名/对齐/安装门详见B1）
- C：`c1_native/C1_NATIVE_REPORT.md` + `c1_file/net/order.js` + `c1_run.py`（跑法三条+判据+回滚详见C1）
- 本文件：`BC_FINAL_REPORT.md`（汇合对照+Hall判据+回滚）

## 5 回滚删包（已执行）
- 删中间包：`b_static/dwrg_B1_unaligned.apk`、`dwrg_B1_aligned.apk`、`mini5.apk`、`dwrg_B1_signed.apk.idsig`（保留signed成品+smali+dex+报告）
- 设备：`/data/local/tmp/dwrg_dump`不存在无需清；`c1_native/out/`空无需清；未卸载用户已装`com.netease.dwrg`原包
- 工作区回滚：删`b_static/`+`c1_native/out/`即回原包态；原包+raw/jadx_out/src未动
- git边界：新增仅`work_dwrg/B1*+b_static/c1_native/BC_*`（本地产物，不提交）；`git ls-tree HEAD`无二进制；无口令写入

## DoD
- [x] 装机：已装版本核对+verify/aapt/dex三证+logcat UniSDK链（直装冲突已记录等价路径）
- [x] dump对照：B×C分层无交集，C语法门全绿，live待主门（pidof空已记录，不伪造）
- [x] Hall判据：T5链+grep+dump魔数已给出
- [x] 终报：B1+C1+本BC三件齐；回滚删中间包已执行，原包未动

当前:BC汇合 / 结果:projects/DWRG/work_dwrg/BC_FINAL_REPORT.md / 下一步:操作者进主门→B装机确认→C三条取script1

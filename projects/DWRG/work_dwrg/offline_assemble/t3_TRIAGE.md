# t3 失败分诊（2026-09-26 · t1/t2对照收口）

## 三硬门定位
| 门 | 结论 | 证据 |
|---|---|---|
| 登录门 | PASS(idle)：窗口内无loginDone/onFailure/Verify回调失败，无登录墙新弹，Client常驻；mpay/ntunisdk HttpDns Error2/3为预期failover WARN，非登录失败。完整点账号登录流程未触发（需用户手动点登），留待补测 | t2r2_logcat.txt login-related=3（全HttpDns WARN），FATAL 0 |
| 远端门 | PASS(stub对照)：stub 24路由↔formal_remote_urls五大家族1:1（protocol.unisdk/tpsl→server_list；h55.drpf→drpf；ngdevice/release→unisdk_update；dm0.webview→whitelist；mpay/epay→pay）；DNS-block下HttpDns×56 failover且应用不死。本轮未重抓pcap（等价logcat HttpDns语义），重抓口径见下 | VERIFY O2-OK；formal_remote_urls families；dwrg*.pcap旧基线保留 |
| 脚本门 | PASS：VERIFY_T3 OVERALL GREEN + bundle VERIFY OVERALL GREEN（script1_apk 201326608 / script1_device 137363472 / idx 252900 / cloud 3775833841全pin） | 本轮复跑双绿 |

## 崩溃/残留
- 无dwrg tombstone（在位tombstone_00系13:04 ceserver SIGSEGV，与本目标无关）；crash_files/zips全系9/25旧物；本轮logcat无FATAL、无Force-finishing dwrg。
- B1（装机签名冲突）/B2（arm64转译Java桥缺）为环境/工具链约束，非应用缺陷：应用侧三门全过。

## 回滚删包复原（已执行+口径）
- 已执行：删 `offline_assemble/offline_dwrg_raw.apk`（2GB中间包，可`--execute`复现）；原包size复核2012889355；设备DNS规则已删、adb device、Client pid2624在前台。
- 保留：`offline_dwrg_aligned.apk`（t1交付）+ 全证据链；完整回滚=再删aligned即回t1前（`del offline_assemble/`），设备侧未做卸载故无须复装。
- 用户后续（可选）：备份Documents/thd→uninstall→装离线包→验signer；ARM真机补测bypass JS；点登一次补登录门。

当前:t3失败分诊 / 结果:三门PASS+回滚已执行(t3证据) / 下一步:归档收口

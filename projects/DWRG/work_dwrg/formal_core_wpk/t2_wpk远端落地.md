# T2 wpk远端落地（2026-09-26实测，依赖T1 pid4345/4.8G pcap）

- 对象：首包`assets/res/script1.wpk` 201326608（stored，CRC 3683027537，sha256 d5662a3d…803c0）→ 云端`Documents/res/script1.wpk` 137363472 md5 89ffc145c07f0226384375e851a20126（瘦身46M，2.104.125221.3034860增量）；`script.idx` 252900；`script/`云目录空（NXCloud script待下发，loader已建）；测试版封存（pm双包，测试pid空）
- 提取：apk只读`zipfile.read`落地`formal_core_wpk/script1_apk.wpk` 201M + `apk_preload.json`1727/`apk_pkgmapping.json`803/`apk_cloud.json`380/`apk_neox3.xml`3178；设备端pull `script1_device.wpk` 137M + `script_device.idx`（后台回拉）；原包未改
- thd校验链：`Documents/thd/` 81文件 51MB全pull（.thh/.thy成对：chr_player 1.7/7.8M、chr_boss、fx 0.9/4.4M、chr_guanjia/painter/prop/creature/guajian、material/nxparticle/lut/mont/common/camera_lens、builtin/ar_confs…）；preload_device 2928B全[0,15]（与F4 assets 50包一致）；pkgmapping_device 912B（chr_*10 + release_2026_0421 3 + script 1）；cloud_device 408B base h55.gsf/nx3_release_ios_ad + version listsvr.x:6678（assets版h55.update/pl漂移已记，running_num 64 vs 20）
- res远端增量：`t2_res_list.txt` 92项（.idx + *2.wpk + chr_boss3/wwise3；含script1.wpk/script.idx/script0.wpk/device侧）；temp_cache_dl 6空hash dirs（32/55/67/ac/d1/e2，combo res.zip分片位）；`t2_script_list.txt` 8B空目录实证
- pcap SLL对照（`t2_pcap_sll.py` stdlib struct，global 0xa1b2c3d4 network113 SLL16B snaplen262144；采样30万/总数1109053；过滤dport!=5555）：
  - dport 443×16705 + 高位数据口56402×89881/60364×10894/43304×8581（cloud 3.7GB分流）+ 27042×140 frida；TLS 3.1×65/3.3×33
  - SNI 30去重：h55.gsf 6x + h55.update 4x + drpf-h55 2x + g0.gsf 2x + mgbsdk 3x + protocol.unisdk 2x + analytics.mpay 1x + mpay-translation 1x + service.mkey 1x + h55.appdump 1x + unifix/apmplus/data-detect/mumu/sentry/whoami/dns/security/mssdk/impression/fcount/sigma（Cloud/download/order三流同包：gsf/update云、mpay/mkey订单、appdump/drpf埋点）
  - HTTP-Host 0（全TLS，continuing-anyway仍TLS，Host走SNI）；4.8G含2GB流式安装adb bulk已注
- 路径记录：apk中文路径坑沿用zipfile直读（不解包覆盖）；4.8G全解析改30万采样+计数（F4 tshark缺失沿用stdlib）；device cloud.json version_url漂移记双份对照；script云空目录如实记空（非失败）

## 产物（仅formal_core_wpk）

`script1_apk.wpk`201M + `script1_device.wpk`137M + `script_device.idx` + `thd/`81 + `preload_device.json` + `pkgmapping_device.json` + `cloud_device.json` + `apk_preload/pkgmapping/cloud/neox3` + `t2_res_list.txt` + `t2_temp_list.txt` + `t2_script_list.txt` + `t2_pcap_sll.txt` + `t2_pcap_sll.py` + `t2_extract_script1.py` + 本文件

## 校验回滚

- 原包2012889355B只读，测试版未卸载未启动；回滚删formal_core_wpk即回滚
- 下游：script1双版（首包201M + 云137M）+ thd81 + preload/pkgmapping/cloud链可直入NXS3/opcode新表/dump

当前:wpk远端落地 / 结果:work_dwrg/formal_core_wpk（script1双版+thd81+pcapSLL） / 下一步:NXS3+opcode新表+dump

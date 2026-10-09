# T5 测试版雕刻敏感点（2026-09-26复核）

- 对象: `projects/DWRG/第五人格（测试版）.apk` 自有测试包，只读未动（T1哈希沿用）；基线/T3/T4输入见依赖
- 雕刻管线复跑（`work_dwrg/`）:
  - `h*.bin×3=8134656B（h1 4980736/h2 1843200/h3 1310720） + g*.bin×6=1605632B + j*.bin×2=532480B + s*.bin×2=262144B`
  - `sweep*.sh×9 + gensweep*.py×8`齐；`mapsG.txt 3163行/299569B + maps4156.txt 3553行`为 sweep8/9底料
  - `extract_reports.py h2@335884/h3@1248374/h1@2118862各3000B→reports.txt 5284B`复跑有效：三窗口`WorldManager`均命中（h2-3/h3-3/h1-2），与落盘一致
  - Python file/func/line链（`reports.txt` 19帧，正则`file_name/func_name/line_no`全提）:
    - `worlds\WorldManager.py release_logic 228（be=HallEvent）/239（preload_world=WorldDeduce）`
    - `worlds\WorldBase.py loading_tick 394 / worlds\WorldCityBase.py ming_finish 505 scene_id=10001 / wom\WorldCityBase.py load_city_info 512 / worlds\WorldCityHall.py init_scene_ex 78 / worlds\WorldCityBase.py init_scene_ex 165 / init_main_unit 249 pid=7 unit_type=100 move_speed=12 cloth_id=701`
    - `ui\ui_manager.py tick 402 UILoading / ui\UILoading.py tick 108 / worlds\WorldCityHall.py after_loading 125 / worlds\WorldCityBase.py after_loading 462 _after_loading 436`
    - `worlds\WorldArticle.py show 438 / ui\ui_manager.py show_ui 329 UIArticle / ui\UIArticle.py show 712 set_ui_mode 749 ARTICLE pose_ending / update_char_article 1069 role_id_str=14`
  - `glog.txt 94817B 1255行 FileLoader res.npk→Documents/script.npk→script.npk`（T3已定）+`reload_mgr start→success + EXP116_BEFORE_HIDE_HALL/EXP93_AA_HALL_HIDDEN/EXP08T loading_finish_city`；`sweep8 TEXTS=WorldManager/HookUnit/co_filename/WorldDeduce/NpkImporter PATS=hookfn:ca71f114/killcivil:ca745ae4/hanguid:ca6fe514`，`sweep9 HookUnit.py/0x04f5fb40+kill_civil/hang_uid VA`；`carve*.py/memcarve.py/npk_carveall`为同管线旧轮
- 登录/Token/GM桥（Java薄胶水，真逻辑在`libclient.so`）:
  - `jadx_out/sources/com/netease/dwrg/Channel.java:75 initialize→77-83 setPropStr SDK_NAME/APP_NAME/ENABLE_EXLOGIN_GUEST/JF_*→84 ntInit→89 NativeOnInitSdk→93-102 setLogin/Logout/Order/Continue/Exit/WebView/Share/CodeScanner/QueryFriendListener→103 loginDone(0)`
  - `:178 login（m_is_init+1000ms节流→loginDone(0)） :200 hasLogin→SdkMgr.hasLogin :329 loginDone(int)→332 NativeOnLogin :461 DRPF(json)→SdkMgr.DRPF :481 gameLoginSuccess→ntGameLoginSuccess :434 antiAddiction :307 OnWebViewNativeCall→NativeOnWebViewCallback`
  - `jadx_out/sources/com/netease/dwrg/Client.java:880 openGMWebView(uid)→888 ntInit+890 getToken→894 NativeOnGMBridgeTokenOverdue→898 ntOpenGMPage；:901 showGMFloatButton(uid,message)(String,String)→909 NativeOnGMBridgeTokenOverdue；:917 setGMBridgeToken(token)→919 m_gmbridge_tokenSetter.setToken；:150 ITokenSetter m_gmbridge_tokenSetter；:450 envManager_initSDK(game_id,key,url) :1111 getPushToken→PushManager.getDevId`
  - `jadx_out/sources/com/netease/neox/NativeInterface.java:35 NativeOnLogin(int) :21 NativeOnGMBridgeTokenOverdue() :25 NativeOnInitSdk(int) :69 NativeOnWebViewCallback(String,String) :45 NativeOnOrderCheckDone + static{lib fmodex/fmodevent/client}`
  - `hook_login.js 109行T4加固版`：Channel.login/loginDone(int)/gameLoginSuccess/hasLogin/initialize/getPropStr(UID/UIN/TOKEN/USERINFO放行) + NI decl枚举 + Client.openGMWebView(String)/showGMFloatButton(String,String)/setGMBridgeToken(String)+decl枚举 + SdkMgr guard；`dynamic_T4/frida_T4.txt 1824B`实挂`java.perform start + 4×Native decl(NativeOnGMBridgeTokenOverdue/NativeOnInitSdk/NativeOnLogin/NativeOnWebViewCallback)+4×Client decl(getPushToken/openGMWebView/setGMBridgeToken/showGMFloatButton)+ready`，`SdkMgr overload mismatch`留精化（Channel链已确认，不阻塞）
  - `dynamic_T4/logcat_T4_b.txt（UTF-16解码 665833字/7541行）`：`Channel.initialize(Channel.java:73)` + `Client.envManager_initSDK(Client.java:669)` + `LogMgr send to drpf type=LoginUI udid=04dc2b5379533dd6 device=2206122SC`；本次attach时login早触发故无调用回包，decl+ready即判据（T4结论沿用）
- SSL pinning弱点（候选，需动态确认，T4 pcap已备）:
  - `libclient_strings.txt`：`SSL: Certificate issuer check failed(%s)×1 / issuer check ok×1 / verify ok×1 / verify result:%s continuing anyway×1 / error setting verify locations continuing anyway×1 / X509_verify_cert×1 / issuer×51`，`SSL_CTX_set_verify=0`，`pinning=2`均为`Spinning`误命中（无pin字面）
  - 判读：`verify fail→continuing anyway`两处=弱校验候选；`issuer check failed/ok`对=自实现issuer比对点；未见硬编码pin/sha256指纹
  - `logcat_T4_b` `SSL×6`为`conscrypt OpenSSLEvpCipherAES`栈（`Channel.initialize:73`上游），非pinning逻辑；`pcap D:\APK-Reverse\projects\DWRG\work_dwrg\dynamic_T4\pcap\dwrg_T4_20260926.pcap 631579147B 头d4c3b2a1`自安装起全程，含DRPF/LoginUI明文JSON段，可做pinning bypass前后对照（mitm+`continuing anyway`断点）
- 支付分支定位（Java全栈可读，下单/回调分支已定位到SdkMgr边界）:
  - `Channel.java:158 regProduct(id,name,price,ratio)→OrderInfo.regProduct；:162 regProduct(+pids)→map_pids；:174 hasProduct→OrderInfo.hasProduct；:216 orderProduct(id,order_id,count,desc,order_etc)→218 new OrderInfo→223 ntCheckOrder；:230 orderProductEx同；:322 orderCheckDone→323 NativeOnOrderCheckDone(orderId,status,errReason)；:465 getAvailablePayChannels→466 getPayChannel/null→getName兜底；:477 getPayChannelByPid→478 SdkMgr；:485 getSDKVersion/490 getUdid/494 getPlatform`
  - `jadx pay文件42`：`com/alipay/sdk/app/H5PayActivity/H5PayCallback/PayTask + auth/AlipaySDK + epay/sdk/base/.../EpayNetRequest/EpayWebView/BankPayGateInfo/PayGateInfo`，`OrderInfo/SdkMgr.java`在`jadx_out`无源文件（`import com.netease.ntunisdk.base.OrderInfo/SdkMgr`，运行时`DexHack /data/user/0/.../unisdk_base.dex`加载，`unisdk_base.dex Bad checksum`致jadx跳过，T1结论沿用；等价路径=Channel调用点行号+frida decl+`ntCheckOrder/DRPF`动态）
- 路径记录：`logcat_T4*.txt UTF-16LE(FF FE)→utf-16解码替代utf8直读（0命中→Channel.initialize:73/LoginUI/envManager_initSDK:669/SSL×6）`；`OrderInfo/SdkMgr.java缺失→Channel行号+hook decl替代，不谎称已反编`；`head/grep shell不可用→pwsh+python替代`
- 产物：本文件 `projects/DWRG/work_dwrg/T5_Sensitive_Points.md`；只写`work_dwrg`，零越界；原包+`raw/jadx_out/npk2_out/dynamic_T4`未动
- 下游：T6正式版差分可用`Channel:75/178/329 + Client:880/901/917/450 + NativeOnLogin/GMBridgeTokenOverdue + issuer/continuing anyway + orderProduct:216/230/orderCheckDone:322 + pcap绝对路径`做符号迁移锚点

当前:测试版敏感点 / 结果:projects/DWRG/work_dwrg/T5_Sensitive_Points.md / 下一步:T6正式版差分

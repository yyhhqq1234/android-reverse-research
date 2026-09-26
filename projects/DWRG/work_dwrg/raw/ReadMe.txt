version=2.14.1

#2017-12-06
升级至2.14.1
1. 需要的母包版本：1.2.5
2. 无新增接口
3. 原生changelog：
	1. 修复游戏的Activity使用SingleTask模式，使用支付宝支付时，如果应用从后台返回前台，SDK请求可能被阻塞的问题。

#2017-11-17
升级至2.14.0
1. 需要的母包版本：1.2.5
2. 无新增接口
3. 原生changelog：
	1. 二维码扫码支持手势变焦。
	2. 升级扫码SDK到1.0.4版本，升级zxing库到3.3.0版本。
	3. 更新混淆脚本 混淆规则
	
#2017-10-30
升级至2.13.0
1. 需要的母包版本：1.2.5
2. 无新增接口
3. 原生changelog：
	1. 升级QQ登录SDK到3.3.0版本open_sdk_r5886_lite.jar。
	2. 升级微信SDK到1.4.0版本wechat-sdk-android-without-mta-1.4.0.jar。

#2017-10-16
升级至2.12.0
1. 需要的母包版本：1.2.5
2. 无新增接口
3. 原生changelog：
	1. 增加 移除SDK申请权限 接口，针对某些对权限特别敏感的游戏，SDK支持移除部分权限的功能， 注意 ：移除权限前，请务必和SDK开发人员确认。
	2. 增加 设置欢迎回来浮窗组件 接口，解决某些游戏中使用的DialogFragment会遮挡住欢迎回来界面的问题。
	3. 增加 欢迎回来浮窗样式 。
	4. 扫码接口 增加一个回调参数，游戏可以注册该回调接口，用来接收外部二维码数据。
	5. 修复游客绑定手机帐号后，没有回调onGuestBindSuccess，而是回调了onLoginSuccess的问题。

#2017-09-25
升级至2.11.0(1)
1. 需要的母包版本：1.2.5
2. 无新增接口

#2017-09-07
升级至2.11.0
1. 需要的母包版本：1.2.5
2. 无新增接口
3. 原生changelog：
	1. 增加 设置语言setLanguage 接口，目前SDK支持简体中文和繁体中文两种语言。 增加多语言资源 NeteaseMobileGameSDK/extra-res ，需要支持多语言的游戏，请将该目录下的资源文件拷贝到SDK的 res 目录下。 注意 ： 如果游戏不需要支持多语言，请务必不要拷贝该资源文件。
	2. 增加了 用户快速认证 接口，如果是首次登录，并且游戏开启了游客登录方式，则SDK将为玩家 自动创建一个游客帐号 ，建议使用该方式登录的游戏，在游戏中提供 游客绑定帐号 入口，并引导游客帐号尽快绑定一个正式帐号。
	3. 增加了 实名认证 接口，游戏可以调用该接口，打开SDK的实名认证界面，SDK将引导玩家完成实名认证，并将认证结果 回调 通知游戏。
	4. 增加了 实名认证回调类SetRealnameCallback ，用于接收实名认证的结果。
	5. 增加了 设置关联手机 接口，游戏调用该接口后，打开SDK界面，SDK引导玩家验证手机号码，并将该手机号同当前登录的帐号关联，玩家返回游戏时，SDK将设置的结果 回调 通知游戏。
	6. 增加了 关联手机回调类MobileBindCallback ，用于通知游戏设置关联手机的结果。
	7. 用户信息类User 中增加了成员 public boolean realnameSet; 用于返回当前帐号的实名认证状态。
	8. 用户信息类User 中增加了成员 public int mobileBindStatus; 用于返回当前帐号设置关联手机的状态。
	9. 支付回调通知类 中， public void onFinish(int status, PaymentResult result) 增加了 支付错误信息PaymentResult ， 通常游戏不需要处理该值 ，如果游戏需要监控SDK的支付错误，可以读取该值。
	10. 修复 客户端禁用登录方式 接口后，SDK Crash的问题；
	11. 升级支付宝SDK到 alipaySdk-20170725.jar :
	12. 升级网易支付SDK到 4.4.1-f2fe18f3 ，升级android-support-v4.jar包到23.0.0版本 support-v4-23.0.0.aar ， support-annotations-23.0.0.jar ；
	13. 升级论坛SDK到1.0.4版本
	14. SDK 支持的CPU架构 : armeabi 、armeabi-v7a 、 arm64-v8a 、 x86
	15. 修复在部分设备上，帐号申述页面无法上传本地图片的问题

#2017-07-04
升级至2.9.0
1. 需要的母包版本：1.1.8
2. 无新增接口
3. 原生changelog：
	1. 增加了 客户端禁用登录方式 接口，支持游戏客户端配置禁用某个登录方式（通常游戏不需要调用该接口）
	2. 升级论坛SDK
	3. 升级网易支付SDK
	4. 支持游客帐号绑定到手机帐号
	5. 增加QQ钱包支付
	6. 更新银联支付渠道

#2017-06-14
升级至2.8.1(1)
1. 需要的母包版本：1.1.8
2. 无新增接口，支付回调加入取消支付的状态:orderInfo.getOrderStatus==11
3. 原生changelog：无

#2017-05-16
升级至2.8.1
1. 需要的母包版本：1.1.8
2. 无新增接口
3. 原生changelog：
	1. 解决在某些模拟器上，使用帐号密码登录网易邮箱帐号时，应用可能重启的问题
	2. 修复了在某些设备上的界面显示问题
	3. 解决了在某些模拟器上，登录成功后SDK可能抛出异常的问题
	4. 升级了网易支付SDK的依赖库mobsecLib-3.0.8.jar和libnetsecsdk-3.0.8.so，解决了在某些arm64-v8a设备上，打开网易支付可能抛出异常的问题

#2017-04-11
升级至2.8.0
1. 需要的母包版本：1.1.8
2. 新增接口
	1. 获取设备信息凭证接口json = {"methodId":"getDeviceTicket"}  SdkMgr.getInst().ntExtendFunc(json) 回调json {"methodId":"getDeviceTicket", "result": ticket的值}；如果失败的，该json是没有result这个key
3. 原生changelog：
	1. 设置玩家角色信息接口 增加了 uid 字段，游戏需确保传入的角色信息属于 uid 对应的帐号
	2. 升级网易宝SDK到3.1.2版本，网易宝SDK的AndroidManifest.xml配置 中删除了 com.netease.epay.sdk.ui.activity.BankScanActivity 的声明，增加了 com.netease.epay.sdk.ui.activity.WebActivity 的声明
	3. 增加 获取设备信息凭证接口 ，游戏调用该接口，并向SDK注册一个 获取设备信息凭证的回调通知类 ，获取设备信息凭证
	4. 删除了绑定/验证手机号接口
	5. 增加支付宝和微信的扫码支付方式
	6. 支持游戏将targetSdkVersion指定为23及以上版本
	7. 支持玩家通过在游戏内绑定的手机号登录邮箱帐号
	8. 移除了 android.permission.WRITE_SMS 权限
	9. 移除了SDK的jar包中的com.netease.mpay.BuildConfig类

#2017-03-10
升级至2.6.1
1. 需要的母包版本：1.1.8
2. 无新增接口
3. 原生changelog：
	1. 优化 Google登录 ，游戏需要根据最新的 Google登录 接入指引进行配置；

#2016-12-23
升级至2.6.0
1. 需要的母包版本：1.1.8
2. 无新增接口
3. 原生changelog：
	1. 增加了 MpayApp 类，游戏需要在Application的 attachBaseContext 和 onCreate 方法调用时 通知SDK，完成SDK的初始化和检查工作。
	2. assets目录下增加了 mpay-rocoofix.dex 文件；
	3. 修复了网络检测工具无法使用的问题；
	4. 修复游客绑定Google和Facebook帐号时，SDK返回的帐号类型字段错误的问题；
	5. 升级了Facebook SDK到4.13.1版本；
	6. 将 NeteaseMCount-0.9.6.jar 升级为 NeteaseMCount-0.9.7.jar ；
	7. 升级论坛SDK forum-android-sdk-1.0.2 ；
	8. 微信支付渠道升级；
	9. 支持游戏配置SDK的第三方依赖库；
	10. 优化第三方帐号授权登录的流程；
	11. 优化输入操作；

#2016-09-20
升级至2.5.0
1. 需要的母包版本：1.1.8
2. 无新增接口
3. 原生changelog：
	1. 增加了 扫码回调接口 ， 如果在调用 Web SDK 的 打开支付界面接口 时，传入的是订单索引，则游戏客户端应该注册该接口，获取支付二维码的订单索引信息。
	2. 增加了 通知SDK扫码支付结果 接口，游戏引导玩家完成Web订单的支付后，调用该接口将支付结果通知给SDK，SDK更新二维码的状态。
	3. 更新了 二维码登录或支付接口 ，支持官方支付二维码中返回订单索引信息。
	4. 升级了支付宝SDK
	5. 升级了依赖包 android-support-v13.jar
	6. 升级了论坛SDK forum-android-sdk-1.0.1

#2016-08-24
更新2.4.0(1)
1. 需要的母包版本：1.1.5
2. 无新增接口，加入上传用户信息中的帮派名称

#2016-06-29
更新2.4.0
1. 需要的母包版本：1.1.5
2. 无新增接口
3. 原生changelog：
		1. 增加设置 SDK主题接口
		2. MpayApi构造方法 中增加了 deviceUniqueId 参数，需要传入设备唯一标识
		3. 接入网易宝SDK 3.1.0版本
		4. 支持替换SDK中”游戏”字样
		5. 修复了开启实名认证后，新登录的游客帐号在删除后无法找回的问题
		6. 修复了assets下资源过多可能导致支付页面加载缓慢的问题

#2016-06-23
更新2.3.0
1. 需要的母包版本：1.1.5
2. 无新增接口
3. 原生changelog：
		1. 增加实名认证功能；
		2. 新增微信支付方式；
		3. 微博SDK升级到3.1.4版本；
		4. 优化 外部应用跳转到游戏 的流程， 注册外部应用调用操作列表 接口可以统一放到游戏登录首页Activity的onCreate方法中调用；
		5. 修复部分设备上“欢迎回来”提示没有弹出的问题；
		
#2016-04-22
更新2.0.0
1. 需要的母包版本：1.1.5
2. 新增接口：
		1. 增加打开论坛接口ntShowConversation()
		2. OnReceiveMsgListener监听里面增加onEnterGame接口，弃用onReceivedNotification接口
3. 原生changelog：
		1. 支持 外部应用跳转到游戏
		2. 接入 游戏论坛功能
		3. 用户中心新增网易邮箱帐号修改密码功能
		4. 修复在小米部分开发版系统上不能安装的问题；
		5. 优化了游戏论坛的交互体验，支持网易邮箱帐号和手机帐号自动登录论坛；
		6. 优化了二维码扫描库，解决了部分设备上扫码困难的问题；
		7. 升级了Google和Facebook的SDK；
		8. 修复了手机帐号换号后，SDK没有更新手机号码的问题；
		9. 修复了一些界面显示以及错误提示的问题；

#2016-03-28
更新1.14.7(2)
1. 需要的母包版本：1.1.3
2. 无新增接口
3. 原生changelog：
		1. 修复在小米部分开发版系统上不能安装的问题

#2016-02-26
更新1.14.7(1)
1. 需要的母包版本：1.1.3
2. 无新增接口
3. 原生changelog：
		1. 修复bug

#2016-02-17
更新1.14.7
1. 需要的母包版本：1.1.3
2. 增加了绑定手机号接口ntVerifyMobile
3. 原生changelog：
		1. MpayApi构造方法 中增加了 appChannel 参数，需要传入营销分配的appChannel。
		2. 支付宝SDK升级到v15.0.1版本
		3. 开启调试模式接口迁移至MpayConfig类中 配置调试模式 ，MpayApi类中不再提供此接口。
		4. MpayConfig类中增加了 设置TV模式 接口，TV版游戏 必须 调用该接口。
		5. MpayApi中增加了 绑定/验证手机号 接口，游戏可调用该接口，打开SDK的界面，引导玩家为当前登录的帐号绑定一个手机号。
		6. 增加了 绑定/验证手机号回调通知类 ，游戏实现该类接收 绑定/验证手机号 的结果。

#2015-10-08
更新1.14.6
1. 需要的母包版本：1.1.0
2. 原生changelog：
		1. 更新了 用户信息类 ，新增返回用户昵称和头像信息。
		2. 获取当前登录用户的昵称接口 将不再维护，建议游戏直接在 用户信息 中获取用户的昵称。
		3. 修复了在部分设备上，如果没有安装银联支付控件，使用网易宝的银联移动支付，应用可能崩溃的问题。
		4. 登录方式增加了 Facebook登录 和 Google登录

#2015-09-21
更新1.14.5
1. 需要的母包版本：1.1.0
2. 原生changelog：
		1. 银联支付SDK升级到3.1.0版本 :
			删除 NeteaseMobileGameSDK/src/res/drawable/data.bin ，游戏需将最新的 NeteaseMobileGameSDK/src/assets/data.bin 拷贝到自己的项目的assets目录下。
			银联支付SDK依赖jar包及so库更新：
				libentryex.so -> libentryexstd.so
				UPPayAssistEx-NoCard-2.1.4.jar -> UPPayAssistEx-3.1.0.jar
				UPPayPluginEx-NoCard-2.1.4.jar -> UPPayPluginExStd-3.1.0.jar
		
		2. 升级NeteaseMCount库到 NeteaseMCount-0.9.4.jar


#2015-08-03
更新1.14.3
1. 需要的母包版本：1.0.8
2. 修改ntLogout接口为空实现，只能通过用户中心ntOpenManager接口打开用户中心后选择登出
3. 原生changelog：
		1. 增加了角色信息的回显。游戏如果 开启了调试模式 ，在调用 设置角色接口 后，SDK会弹窗显示游戏传入的角色信息，方便游戏检查设置的角色信息是否正确。
		2. 删除了 主动为已经登录的用户注销 接口；游戏可通过接入 用户中心 为用户提供切换帐号及注销帐号功能。
		3. 适配了平板设备。
		4. 修复了游戏将SDK屏幕方向设置为 可180度旋转横屏 或 反向横屏 时，调用 二维码登录或支付接口 后 ，SDK崩溃的问题。
		5. 优化了手机帐号安全中心的交互体验。

#2015-07-03
更新1.14.2
1. 需要的母包版本：1.0.8
2. 增加实现上传用户信息接口ntUpLoadUserInfo
3. 增加二维码扫描登陆和支付接口ntPresentQRCodeScanner

#2015-06-12
更新1.14.1，无新增接口

#2015-05-20
更新1.14.0，增加接口：
	①增加用户中心更新通知 的回调OnReceiveMsgListener

version=1.13.5

#changeLog
#2015-04-09
更新1.13.5，增加接口：
	①loginDone后可以通过getPropStr(ConstProp.USR_NAME)获取用户昵称
	②如果当前用户是通过微博账号登录，可以通过ntQueryMyAccount()查询微博信息
	③如果当前用户是通过微博账号登录，可以通过ntQueryFriendList()查询好友列表

2015-02-13
更新1.13.4
1. 新增手机号登录，如需开启：
	(1)发邮件给mpay同事申请开启
	(2)客户端设置SdkMgr.getInst().setPropInt(ConstProp.ENABLE_EXLOGIN_MOBILE, 1);
	(3)在AndroidManifest.xml中打开<uses-permission android:name="android.permission.WRITE_SMS" />
2. 支持跳转到微博客户端授权，如需开启：
	SdkMgr.getInst().setPropStr(ConstProp.WEIBO_SSO_APP_KEY, "游戏自行向微博申请的appkey");
	SdkMgr.getInst().setPropStr(ConstProp.WEIBO_SSO_URL, "游戏自行向微博申请的redirectUrl");
3. 屏幕方向不再支持横竖屏旋转，即ConstProp.E_SO_AUTO
4. 原生changelog: http://mpay.netease.com/Android/changes.html#v1-13-4-2015-02-11

2015-02-02
更新1.13.3(1)
1. 小米手机登陆成功提示问题修复

2015-01-28
更新1.13.3
1. 增加分享接口，删除显示达人接口
2. 官方Log：将原来的 手游达人功能界面 整合到 帐号管理界面 中，整合后界面统一为 用户中心 。

2015-01-15
更新1.13.1(1)
1. 修复在UniPack里添加闪屏后会crash的问题

2014-12-30
更新1.13.1
1. 新增匿名支付接口
2. 新增退出页
3. 新增两种方向：
	(1)反向横屏：E_SO_LANDSCAPE_REVERSE
	(2)双向横屏：E_SO_LANDSCAPE_SENSOR
4. 新增平台币充值接口：ntPrePay
5. 新增闪屏，默认关闭，如需开启
	(1)在assets/netease_data里添加"SPLASH":"1"（如果使用UniPack，则直接在打包配置页面上勾选“开启闪屏”）
	(2)再参考UniSDK主页的“闪屏相关”说明

2014-11-14
修复达人接口

2014-11-05
更新1.12.1，无新增接口

2014-11-03
更新1.12，无新增接口

2014-08-01
更新1.10

2014-07-07
更新1.9.1

2014-06-24
①增加设置SDK界面屏幕方向的接口，游戏可以配置SDK界面始终以横屏/竖屏方式显示。
②新增支付宝支付渠道
③在游戏的MainActivity增加andriod:configChanges="orientation|screenSize"，防止屏幕切换导致MainActivity销毁重建出现问题

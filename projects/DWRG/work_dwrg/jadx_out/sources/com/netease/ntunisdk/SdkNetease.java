package com.netease.ntunisdk;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import com.alipay.sdk.sys.a;
import com.alipay.sdk.util.k;
import com.netease.download.util.HashUtil;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.BackgroundAuthenticationCallback;
import com.netease.mpay.DeviceTicketCallback;
import com.netease.mpay.ExitCallback;
import com.netease.mpay.MobileBindCallback;
import com.netease.mpay.MpayApi;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.PaymentCallback;
import com.netease.mpay.PaymentResult;
import com.netease.mpay.QrCodeScannerCallback;
import com.netease.mpay.RoleInfoKeys;
import com.netease.mpay.SetRealnameCallback;
import com.netease.mpay.User;
import com.netease.mpay.codescanner.QrScannerOptions;
import com.netease.mpay.sharer.ShareContent;
import com.netease.mpay.skin.SkinManager;
import com.netease.mpay.social.Friend;
import com.netease.mpay.social.GetFriendsCallback;
import com.netease.ntunisdk.base.AccountInfo;
import com.netease.ntunisdk.base.OnFinishInitListener;
import com.netease.ntunisdk.base.OnOrderCheckListener;
import com.netease.ntunisdk.base.OrderInfo;
import com.netease.ntunisdk.base.SdkBase;
import com.netease.ntunisdk.base.SdkMgr;
import com.netease.ntunisdk.base.ShareInfo;
import com.netease.ntunisdk.base.StartupDialog;
import com.netease.ntunisdk.base.UniSdkUtils;
import com.netease.ntunisdk.base.utils.NetUtil;
import com.netease.ntunisdk.base.utils.StrUtil;
import com.netease.ntunisdk.base.utils.WgetDoneCallback;
import com.sina.weibo.sdk.constant.WBPageConstants;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SdkNetease extends SdkBase implements StartupDialog.StartupFinishListener {
    private static final String TAG = "UniSDK netease";
    private boolean debugMode;
    private OnFinishInitListener initListener;
    private MpayApi sdkInstance;

    public SdkNetease(Context ctx) {
        super(ctx);
        this.debugMode = false;
        this.initListener = null;
    }

    public void finishListener() {
        if (this.initListener != null) {
            this.initListener.finishInit(0);
        } else {
            this.initListener.finishInit(1);
        }
    }

    /* loaded from: classes.dex */
    private class AnonymousLoginCallback implements BackgroundAuthenticationCallback {
        private AnonymousLoginCallback() {
        }

        @Override // com.netease.mpay.BackgroundAuthenticationCallback
        public void onLoginSuccess(User user) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease anonymous login succ, thread=%d, uid=%s, token=%s", Long.valueOf(Thread.currentThread().getId()), user.uid, user.token));
        }

        @Override // com.netease.mpay.BackgroundAuthenticationCallback
        public void onLoginFail(String errMsg) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease anonymous login fail, thread=%d, errMsg=%s", Long.valueOf(Thread.currentThread().getId()), errMsg));
        }
    }

    /* loaded from: classes.dex */
    private class LoginCallback implements AuthenticationCallback {
        private LoginCallback() {
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onLoginSuccess(User user) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease login succ, thread=%d, uid=%s, token=%s", Long.valueOf(Thread.currentThread().getId()), user.uid, user.token));
            SdkNetease.this.setPropStr("UIN", user.uid);
            SdkNetease.this.setPropStr("SESSION", user.token);
            SdkNetease.this.setPropStr("USR_NAME", user.nickname);
            SdkNetease.this.setPropStr("DEVICE_ID", user.devId);
            SdkNetease.this.setPropStr("FORUM_URL", user.avatarUrl);
            SdkNetease.this.setPropStr("ORIGIN_GUEST_UID", user.originGuestUid);
            UniSdkUtils.d(SdkNetease.TAG, "LoginCallback realname res:" + user.realnameSet);
            if (user.realnameSet) {
                SdkNetease.this.setPropInt("REAL_NAME_VERIFIED", 2);
            } else {
                SdkNetease.this.setPropInt("REAL_NAME_VERIFIED", 0);
            }
            SdkNetease.this.setPropInt("VERIFY_TYPE", user.mobileBindStatus);
            SdkNetease.this.setPropInt("LOGIN_STAT", 1);
            SdkNetease.this.setJFSauth("deviceid", user.devId, false);
            SdkNetease.this.loginDone(0);
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onLogout(String uid) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease logout succ, thread=%d, uid=%s", Long.valueOf(Thread.currentThread().getId()), uid));
            SdkNetease.this.setPropStr("UIN", "");
            SdkNetease.this.setPropStr("SESSION", "not_login");
            SdkNetease.this.setPropStr("DEVICE_ID", SdkNetease.this.getDeviceId());
            SdkNetease.this.setPropStr("ORIGIN_GUEST_UID", null);
            SdkNetease.this.setPropInt("LOGIN_STAT", 0);
            SdkNetease.this.logoutDone(0);
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onDialogFinish() {
            UniSdkUtils.d(SdkNetease.TAG, "onDialogFinish");
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onGuestBindSuccess(User user) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease guest bind succ, thread=%d, uid=%s, guest=%s", Long.valueOf(Thread.currentThread().getId()), user.uid, user.originGuestUid));
            String originGuestUid = user.originGuestUid;
            SdkNetease.this.setPropStr("ORIGIN_GUEST_UID", originGuestUid);
            onLoginSuccess(user);
        }

        @Override // com.netease.mpay.AuthenticationCallback
        public void onEnterGame(String op, String jsonParams) {
            SdkNetease.this.onEnterGameDone(op, jsonParams);
        }
    }

    /* loaded from: classes.dex */
    private class payCallback implements PaymentCallback {
        private OrderInfo order;

        public payCallback(OrderInfo oi) {
            this.order = oi;
        }

        @Override // com.netease.mpay.PaymentCallback
        public void onFinish(int status, PaymentResult result) {
            UniSdkUtils.i(SdkNetease.TAG, String.format("netease checkOrder finish, orderId=%s, status=%d, PaymentResult code:%d, PaymentResult msg:%s", this.order.getOrderId(), Integer.valueOf(status), Integer.valueOf(result.getCode()), result.getMessage()));
            if (status == 0) {
                this.order.setOrderStatus(2);
            } else if (status == 1) {
                this.order.setOrderStatus(3);
                this.order.setOrderErrReason(result.getMessage());
            } else if (status == 2) {
                this.order.setOrderStatus(1);
                this.order.setOrderErrReason(result.getMessage());
            } else if (status == 3) {
                this.order.setOrderStatus(3);
                this.order.setOrderErrReason(result.getMessage());
                SdkNetease.this.resetCommonProp();
                SdkNetease.this.loginDone(12);
            } else if (status == 4) {
                this.order.setOrderStatus(11);
                this.order.setOrderErrReason(result.getMessage());
            } else {
                this.order.setOrderStatus(3);
                this.order.setOrderErrReason(result.getMessage());
            }
            SdkNetease.this.checkOrderDone(this.order);
        }
    }

    public void init(OnFinishInitListener initListener) {
        if (!TextUtils.isEmpty(getPropStr("APP_KEY")) && !getPropStr("APPID").contains("unisdk") && !getPropStr("APPID").contains("-dm0")) {
            UniSdkUtils.e(TAG, "do not set APP_KEY in netease_data, " + getPropStr("APP_KEY"));
            initListener.finishInit(1);
            this.hasInit = false;
        }
        UniSdkUtils.i(TAG, "try netease init current thread:" + Thread.currentThread().getId() + " debugMode:" + this.debugMode);
        setPropInt("FEATURE_HAS_MANAGER", 1);
        setPropInt("FEATURE_HAS_GUEST", 1);
        setPropInt("FEATURE_HAS_GUEST_BIND", 1);
        setPropInt("FEATURE_EXIT_VIEW", 1);
        setPropInt("FEATURE_HAS_SHARE", 1);
        setPropInt("FEATURE_HAS_FRIEND", 1);
        setPropInt("FEATURE_HAS_CONVERSATION", 1);
        setPropInt("FEATURE_HAS_VERIFYMOBILE", 1);
        MpayConfig exConfig = new MpayConfig();
        exConfig.setDebugMode(this.debugMode);
        exConfig.setTVMode(getPropInt("ENABLE_TV", 0) == 1);
        String skinType = getPropStr("SKIN_TYPE");
        UniSdkUtils.d(TAG, "SKIN_TYPE" + skinType);
        if (!TextUtils.isEmpty(skinType)) {
            if ("SKIN_BLACK".equalsIgnoreCase(skinType)) {
                exConfig.setSkin(SkinManager.MPAY_SKIN_BLACK);
            } else if ("SKIN_DEFAULT".equalsIgnoreCase(skinType)) {
                exConfig.setSkin(SkinManager.MPAY_SKIN_DEFAULT);
            } else if ("SKIN_CHINESE_WHITE".equalsIgnoreCase(skinType)) {
                exConfig.setSkin(SkinManager.MPAY_SKINE_CHINESE_WHITE);
            } else if ("SKIN_CHINESE_BLACK".equalsIgnoreCase(skinType)) {
                exConfig.setSkin(SkinManager.MPAY_SKINE_CHINESE_BLACK);
            } else {
                exConfig.setSkin(skinType);
            }
        }
        int scr = getPropInt("SCR_ORIENTATION", 1);
        UniSdkUtils.d(TAG, "ConstProp.SCR_ORIENTATION:" + scr);
        if (scr == 2) {
            exConfig.setScreenOrientation(2);
        } else if (scr == 1) {
            exConfig.setScreenOrientation(1);
        } else if (scr == 3) {
            exConfig.setScreenOrientation(4);
        } else if (scr == 5) {
            exConfig.setScreenOrientation(3);
        } else {
            exConfig.setScreenOrientation(1);
        }
        try {
            ApplicationInfo appInfo = this.myCtx.getPackageManager().getApplicationInfo(this.myCtx.getPackageName(), 128);
            String removePermissionList = appInfo.metaData.getString("netease_mpay_remove_permission_list");
            UniSdkUtils.d(TAG, "removePermissionList:" + removePermissionList);
            if (!TextUtils.isEmpty(removePermissionList)) {
                String[] list = removePermissionList.split("-");
                for (String permission : list) {
                    exConfig.removePermission(permission);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            UniSdkUtils.d(TAG, "get remove permission list exception:" + e.getMessage());
        }
        exConfig.setWelcomeWindow(getPropInt("WELCOME_WINDOW_TYPE", 0));
        String gameId = getPropStr("APPID");
        this.sdkInstance = new MpayApi((Activity) this.myCtx, gameId, MpayApi.PRODUCTION_ENVIRONMENT, getUdid(), getAppChannel(), exConfig);
        setPropStr("DEVICE_ID", null);
        if (initListener != null) {
            if (this.sdkInstance == null) {
                initListener.finishInit(1);
                this.hasInit = false;
                return;
            }
            ArrayList<String> supportOpList = new ArrayList<>();
            String opList = getPropStr("EXTERNAL_OP_LIST");
            if (!TextUtils.isEmpty(opList)) {
                UniSdkUtils.d(TAG, "opList:" + opList);
                String[] opes = opList.split(",");
                for (String op : opes) {
                    supportOpList.add(op);
                }
            }
            this.sdkInstance.registEnterGame(supportOpList, new LoginCallback());
            this.sdkInstance.setAuthenticationCallback(new LoginCallback());
            this.sdkInstance.setBackgroundAuthenticationCallback(new AnonymousLoginCallback());
            this.sdkInstance.enableSinaWeiboSSO(getPropStr("WEIBO_SSO_APP_KEY"), getPropStr("WEIBO_SSO_URL", "http://www.sina.com"));
            HashMap<String, String> keys = new HashMap<>();
            String yinxinApi = getPropStr("SHARE_YIXIN_API");
            String weixinApi = getPropStr("SHARE_WEIXIN_API");
            UniSdkUtils.d(TAG, "weixinApi:" + weixinApi);
            String weiboApi = getPropStr("SHARE_WEIBO_API");
            String qqApi = getPropStr("SHARE_QQ_API");
            if (!TextUtils.isEmpty(yinxinApi)) {
                keys.put(MpayApi.YIXIN_API, yinxinApi);
            }
            if (!TextUtils.isEmpty(weixinApi)) {
                keys.put(MpayApi.WEIXIN_API, weixinApi);
                UniSdkUtils.d(TAG, "sdkInstance.enableWeixinSSO");
                this.sdkInstance.enableWeixinSSO(weixinApi);
            }
            if (!TextUtils.isEmpty(weiboApi)) {
                keys.put(MpayApi.WEIBO_API, weiboApi);
            }
            if (!TextUtils.isEmpty(qqApi)) {
                keys.put(MpayApi.QQ_API, qqApi);
                UniSdkUtils.d(TAG, "sdkInstance.enableQQSSO");
                this.sdkInstance.enableQQSSO(qqApi);
            }
            this.sdkInstance.initThirdApiKeys(keys);
            disableLogin();
            initLanguage();
            if (getPropInt("SPLASH", 0) == 1) {
                this.initListener = initListener;
                StartupDialog.popStartup(this.myCtx, this, getPropInt("SPLASH_COLOR", -1));
            } else {
                initListener.finishInit(0);
            }
        }
    }

    private void disableLogin() {
        int enableNative = getPropInt("ENABLE_EXLOGIN_NATIVE", 1);
        int enableGuest = getPropInt("ENABLE_EXLOGIN_GUEST_NEW", 1);
        int enableWeibo = getPropInt("ENABLE_EXLOGIN_WEIBO_NEW", 1);
        int enableFacebook = getPropInt("ENABLE_EXLOGIN_FACEBOOK", 1);
        int enableGoogle = getPropInt("ENABLE_EXLOGIN_GOOGL", 1);
        int enableMobile = getPropInt("ENABLE_EXLOGIN_MOBILE_NEW", 1);
        int enableWechat = getPropInt("ENABLE_EXLOGIN_WECHAT", 1);
        int enableQQ = getPropInt("ENABLE_EXLOGIN_QQ", 1);
        if (enableNative == 0) {
            this.sdkInstance.disableLogin(1);
        }
        if (enableGuest == 0) {
            this.sdkInstance.disableLogin(2);
        }
        if (enableWeibo == 0) {
            this.sdkInstance.disableLogin(3);
        }
        if (enableFacebook == 0) {
            this.sdkInstance.disableLogin(4);
        }
        if (enableGoogle == 0) {
            this.sdkInstance.disableLogin(5);
        }
        if (enableMobile == 0) {
            this.sdkInstance.disableLogin(7);
        }
        if (enableWechat == 0) {
            this.sdkInstance.disableLogin(9);
        }
        if (enableQQ == 0) {
            this.sdkInstance.disableLogin(10);
        }
    }

    private void initLanguage() {
        String languageCode = getPropStr("LANGUAGE_CODE");
        UniSdkUtils.d(TAG, "LANGUAGE_CODE:" + languageCode);
        if ("ZH_CN".equalsIgnoreCase(languageCode)) {
            this.sdkInstance.setLanguage(1);
        } else if ("ZH_HK".equalsIgnoreCase(languageCode)) {
            this.sdkInstance.setLanguage(2);
        } else if ("ZH_TW".equalsIgnoreCase(languageCode)) {
            this.sdkInstance.setLanguage(3);
        }
    }

    public void setDebugMode(boolean v) {
        UniSdkUtils.i(TAG, "setDebugMode to " + v);
        this.debugMode = v;
    }

    public String getLoginSession() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return "not_login";
        }
        if (hasLogin()) {
            return getPropStr("SESSION");
        }
        return "not_login";
    }

    public String getDeviceId() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return "";
        }
        if (hasLogin()) {
            return getPropStr("DEVICE_ID");
        }
        return "";
    }

    public void share(ShareInfo shareInfo) {
        ShareContent content = new ShareContent();
        content.setImage(shareInfo.getShareBitmap()).setThumb(shareInfo.getShareBitmap());
        content.setText(shareInfo.getText());
        content.setTitle(shareInfo.getTitle());
        content.setDesc(shareInfo.getDesc());
        content.setWebUrl(shareInfo.getLink());
        if ("TYPE_TEXT_ONLY".equals(shareInfo.getType())) {
            content.contentType = 0;
        } else if ("TYPE_LINK".equals(shareInfo.getType())) {
            content.contentType = 2;
        } else {
            content.contentType = 1;
        }
        int shareChannel = shareInfo.getShareChannel();
        if (105 == shareChannel || 106 == shareChannel || 100 == shareChannel || 101 == shareChannel || 102 == shareChannel || 103 == shareChannel || 104 == shareChannel) {
            boolean res = this.sdkInstance.shareTo(content, shareChannel);
            shareFinished(res);
        } else {
            boolean res2 = this.sdkInstance.share(content);
            shareFinished(res2);
        }
    }

    public String getLoginUid() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return "";
        }
        if (hasLogin()) {
            return getPropStr("UIN");
        }
        return "";
    }

    public void anonymousLogin() {
        String externalChannel = SdkMgr.getInst().getPropStr("EXTERNAL_CHANNEL");
        if (isLoginInst() && TextUtils.isEmpty(externalChannel)) {
            UniSdkUtils.i(TAG, "miss anonymousLogin");
            return;
        }
        if (TextUtils.isEmpty(externalChannel)) {
            externalChannel = SdkMgr.getInst().getChannel();
        } else {
            UniSdkUtils.e(TAG, "WTF!!!!!!!!!! game set EXTERNAL_CHANNEL to: " + externalChannel);
        }
        UniSdkUtils.i(TAG, String.format("try netease anonymous login, externalUid=%s, userName=%s, channel=%s", SdkMgr.getInst().getPropStr("UIN"), SdkMgr.getInst().getPropStr("USERINFO_NAME"), externalChannel));
        this.sdkInstance.backgroundAuthenticateExternalUser(SdkMgr.getInst().getPropStr("UIN"), SdkMgr.getInst().getPropStr("USERINFO_NAME"), externalChannel);
    }

    public void checkOrder(OrderInfo order) {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return;
        }
        if (!hasLogin()) {
            UniSdkUtils.e(TAG, "try checkOrder but has not login");
            order.setOrderStatus(3);
            checkOrderDone(order);
            resetCommonProp();
            loginDone(12);
            return;
        }
        String productName = order.getProductName();
        String price = Float.valueOf(order.getProductCurrentPrice() * order.getCount()).toString();
        if ("anonymous_pay".equals(order.getOrderEtc())) {
            String externalChannel = SdkMgr.getInst().getPropStr("EXTERNAL_CHANNEL");
            if (TextUtils.isEmpty(externalChannel)) {
                externalChannel = SdkMgr.getInst().getChannel();
            } else {
                UniSdkUtils.e(TAG, "WTF!!!!!!!!!! game set EXTERNAL_CHANNEL to: " + externalChannel);
            }
            UniSdkUtils.i(TAG, String.format("try netease anonymous checkOrder, orderId=%s, externalUid=%s, externalChannel=%s, productName=%s, price=%s", order.getOrderId(), SdkMgr.getInst().getPropStr("UIN"), externalChannel, productName, price));
            this.sdkInstance.externalUserPay(order.getOrderId(), SdkMgr.getInst().getPropStr("UIN"), externalChannel, 0, new payCallback(order));
            return;
        }
        UniSdkUtils.i(TAG, String.format("try netease checkOrder, orderId=%s", order.getOrderId()));
        String uid = getLoginUid();
        this.sdkInstance.pay(order.getOrderId(), uid, 1, new payCallback(order));
    }

    public void exit() {
        this.sdkInstance.unregistEnterGame();
        Activity activity = (Activity) this.myCtx;
        if (activity.isFinishing()) {
            UniSdkUtils.i(TAG, "netease exit current thread:" + Thread.currentThread().getId());
            super.exit();
        }
    }

    public void login() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
        } else {
            this.sdkInstance.authenticateUser(0);
        }
    }

    public void openManager() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
        } else {
            this.sdkInstance.showUserDialog(null);
        }
    }

    public void logout() {
    }

    public String getChannel() {
        return getChannelSts();
    }

    public static String getChannelSts() {
        return "netease";
    }

    public void upLoadUserInfo() {
        UniSdkUtils.d(TAG, "call upLoadUserInfo...");
        Map<String, String> roleInfo = new HashMap<>();
        roleInfo.put(RoleInfoKeys.KEY_ROLE_ID, getPropStr("USERINFO_UID"));
        roleInfo.put("nickname", getPropStr("USERINFO_NAME"));
        roleInfo.put(RoleInfoKeys.KEY_ROLE_GRADE, getPropStr("USERINFO_GRADE"));
        roleInfo.put(RoleInfoKeys.KEY_HOST_ID, getPropStr("USERINFO_HOSTID"));
        roleInfo.put(RoleInfoKeys.KEY_HOST_NAME, getPropStr("USERINFO_HOSTNAME"));
        roleInfo.put(RoleInfoKeys.KEY_ROLE_TYPE_ID, getPropStr("USERINFO_ROLE_TYPE_ID"));
        roleInfo.put(RoleInfoKeys.KEY_ROLE_TYPE_NAME, getPropStr("USERINFO_ROLE_TYPE_NAME"));
        roleInfo.put(RoleInfoKeys.KEY_MENPAI_ID, getPropStr("USERINFO_MENPAI_ID"));
        roleInfo.put(RoleInfoKeys.KEY_MENPAI_NAME, getPropStr("USERINFO_MENPAI_NAME"));
        roleInfo.put(RoleInfoKeys.KEY_CAPABILITY, getPropStr("USERINFO_CAPABILITY"));
        roleInfo.put(RoleInfoKeys.KEY_VIP, getPropStr("USERINFO_VIP"));
        roleInfo.put(RoleInfoKeys.KEY_GANG_ID, getPropStr("USERINFO_GANG_ID"));
        roleInfo.put(RoleInfoKeys.KEY_GANG_NAME, getPropStr("USERINFO_ORG"));
        roleInfo.put(RoleInfoKeys.KEY_REGION_ID, getPropStr(RoleInfoKeys.KEY_REGION_ID));
        roleInfo.put(RoleInfoKeys.KEY_REGION_NAME, getPropStr(RoleInfoKeys.KEY_REGION_NAME));
        boolean res = this.sdkInstance.setRoleInfo(getPropStr("UIN"), roleInfo);
        UniSdkUtils.d(TAG, "upLoadUserInfo res:" + res);
    }

    public void isDarenUpdated() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return;
        }
        boolean rlt = this.sdkInstance.hasNotification();
        UniSdkUtils.d(TAG, "hasNotification:" + rlt);
        isDarenUpdatedFinished(rlt);
    }

    public boolean hasNotification() {
        UniSdkUtils.d(TAG, "call hasNotification");
        boolean rlt = this.sdkInstance.hasNotification();
        UniSdkUtils.d(TAG, "hasNotification:" + rlt);
        return rlt;
    }

    public boolean hasLogin() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return false;
        }
        User user = this.sdkInstance.getAuthenticatedUser();
        return user != null && super.hasLogin();
    }

    public void guestBind() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
        } else {
            this.sdkInstance.bindGuestUser();
        }
    }

    public int getAuthType() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return 0;
        }
        User user = this.sdkInstance.getAuthenticatedUser();
        if (user == null) {
            return 0;
        }
        int type = user.type;
        UniSdkUtils.i(TAG, "getAuthType: " + type);
        if (type == 1) {
            return 1;
        }
        if (type == 2) {
            return 2;
        }
        if (type == 3) {
            return 3;
        }
        if (type == 4) {
            return 4;
        }
        if (type == 5) {
            return 5;
        }
        if (type == 7) {
            return 6;
        }
        if (type == 9) {
            return 8;
        }
        return type == 10 ? 7 : 0;
    }

    public String getAuthTypeName() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return "unlogin";
        }
        User user = this.sdkInstance.getAuthenticatedUser();
        if (user == null) {
            return "unlogin";
        }
        int type = user.type;
        UniSdkUtils.i(TAG, "getAuthType: " + type);
        if (type == 1) {
            return "native";
        }
        if (type == 2) {
            return "guest";
        }
        if (type == 3) {
            return MpayApi.WEIBO_API;
        }
        if (type == 4) {
            return "facebook";
        }
        if (type == 5) {
            return "google";
        }
        if (type == 7) {
            return BaseConstants.NET_KEY_mobile;
        }
        if (type == 9) {
            return ConstantsAPI.Token.WX_TOKEN_PLATFORMID_VALUE;
        }
        if (type == 10) {
            return MpayApi.QQ_API;
        }
        return "unlogin";
    }

    public String getSDKVersion() {
        return MpayApi.getVersion();
    }

    public String getUniSDKVersion() {
        return "2.14.1";
    }

    public boolean openExitView() {
        UniSdkUtils.d(TAG, "call openExitView");
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            return false;
        }
        boolean succ = this.sdkInstance.exitGame(new ExitCallback() { // from class: com.netease.ntunisdk.SdkNetease.1
            @Override // com.netease.mpay.ExitCallback
            public void onExit() {
                SdkNetease.this.exitDone();
            }

            @Override // com.netease.mpay.ExitCallback
            public void onCancel() {
            }
        });
        if (!succ) {
            openExitViewFailed();
            return false;
        }
        return true;
    }

    public void prePay() {
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
        } else if (!this.sdkInstance.prepayNeteaseCoin() && this.myCtx != null) {
            Toast.makeText(this.myCtx, "使用网易通行证登录的玩家才能够使用平台币充值功能", 1).show();
        }
    }

    public void presentQRCodeScanner() {
        HashMap<String, String> sdkData = new HashMap<>();
        sdkData.put(MpayApi.QR_LOGIN_EXTRA_KEY_JF_GAME_ID, SdkMgr.getInst().getPropStr("JF_GAMEID"));
        String payChannel = SdkMgr.getInst().getChannel();
        Hashtable<String, OrderInfo.ProductInfo> productList = OrderInfo.getProductList();
        if (!productList.isEmpty()) {
            String pId = productList.keySet().iterator().next();
            payChannel = SdkMgr.getInst().getPayChannelByPid(pId);
            UniSdkUtils.d(TAG, "pId:" + pId);
        }
        UniSdkUtils.d(TAG, "payChannel:" + payChannel);
        sdkData.put(MpayApi.QR_LOGIN_EXTRA_KEY_PAY_CHANNEL, payChannel);
        this.sdkInstance.presentQRCodeScanner(sdkData, new QrCodeScannerCallback() { // from class: com.netease.ntunisdk.SdkNetease.2
            @Override // com.netease.mpay.QrCodeScannerCallback
            public void onFetchOrder(String uid, String dataId) {
                UniSdkUtils.d(SdkNetease.TAG, "获取" + uid + "的信息： " + dataId);
                SdkNetease.this.codeScannerDone(0, "");
                String jfGas3Url = SdkMgr.getInst().getPropStr("UNISDK_JF_GAS3_URL");
                if (TextUtils.isEmpty(jfGas3Url)) {
                    jfGas3Url = SdkNetease.this.getPropStr("UNISDK_JF_GAS3_URL");
                }
                if (!TextUtils.isEmpty(jfGas3Url)) {
                    JSONObject indexJson = new JSONObject();
                    try {
                        indexJson.put("index", dataId);
                    } catch (JSONException e) {
                        UniSdkUtils.e(SdkNetease.TAG, "indexJson JSONException:" + e.getMessage());
                        e.printStackTrace();
                    }
                    StringBuilder sb = new StringBuilder(jfGas3Url);
                    if (jfGas3Url.endsWith("/")) {
                        sb.append("query_index");
                    } else {
                        sb.append("/query_index");
                    }
                    UniSdkUtils.d(SdkNetease.TAG, "post json index, queryIndexUrl:" + sb.toString());
                    NetUtil.wpost(sb.toString(), indexJson.toString(), new IndexCallback(uid, dataId));
                    return;
                }
                String queryIndexUrl = SdkMgr.getInst().getPropStr("CODE_SCANNER_PAY_URL");
                if (TextUtils.isEmpty(queryIndexUrl)) {
                    queryIndexUrl = SdkNetease.this.getPropStr("CODE_SCANNER_PAY_URL");
                }
                StringBuilder sb2 = new StringBuilder(queryIndexUrl);
                if (queryIndexUrl.endsWith("/")) {
                    sb2.append(String.format("queryindex?index=%s", dataId));
                } else {
                    sb2.append(String.format("/queryindex?index=%s", dataId));
                }
                UniSdkUtils.d(SdkNetease.TAG, "get index,queryIndexUrl:" + sb2.toString());
                NetUtil.wget(sb2.toString(), new IndexCallback(uid, dataId));
            }
        }, new QrScannerOptions.Builder().addQrExtCallback(new QrScannerOptions.QrCodeScannerExtCallback() { // from class: com.netease.ntunisdk.SdkNetease.4
            @Override // com.netease.mpay.codescanner.QrScannerOptions.QrCodeScannerExtCallback
            public void onFetchQrCode(String qrCoce) {
                UniSdkUtils.d(SdkNetease.TAG, "QrCodeScannerExtCallback onFetchQrCode:" + qrCoce);
                SdkNetease.this.codeScannerDone(21, qrCoce);
            }
        }).addLoginCallback(new QrScannerOptions.QrCodeScannerLoginCallback() { // from class: com.netease.ntunisdk.SdkNetease.3
            @Override // com.netease.mpay.codescanner.QrScannerOptions.QrCodeScannerLoginCallback
            public void onLoginSuccess(User user) {
                UniSdkUtils.i(SdkNetease.TAG, String.format("QrCodeScannerLoginCallback onLoginSuccess, uid=%s, token=%s, userName=%s, deviceId=%s", user.uid, user.token, user.nickname, user.devId));
                SdkNetease.this.setPropStr("WEB_UID", user.uid);
                SdkNetease.this.setPropStr("WEB_SESSION", user.token);
                SdkNetease.this.webLoginByCodeScannerDone(0);
            }
        }).build());
    }

    public void queryMyAccount() {
        final AccountInfo account = new AccountInfo();
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            queryMyAccountFinished(account);
        }
        if (getAuthType() == 3) {
            this.sdkInstance.getUserWeiboInfo(new GetFriendsCallback() { // from class: com.netease.ntunisdk.SdkNetease.5
                @Override // com.netease.mpay.social.GetFriendsCallback
                public void onSuccessed(Friend[] friends) {
                    UniSdkUtils.i(SdkNetease.TAG, "获取微博账号信息成功");
                    account.setAccountId(friends[0].mUid);
                    account.setNickname(friends[0].mNickName);
                    account.setIdType(friends[0].mUserType + "");
                    account.setIcon(friends[0].mAvatarUrl);
                    account.setRelationType(friends[0].mRelationType + "");
                    SdkNetease.this.queryMyAccountFinished(account);
                }

                @Override // com.netease.mpay.social.GetFriendsCallback
                public void onFailed(int code) {
                    UniSdkUtils.e(SdkNetease.TAG, "获取微博账号信息失败,code=" + code);
                    SdkNetease.this.queryMyAccountFinished(account);
                }
            });
        } else {
            UniSdkUtils.w(TAG, "非微博账号登录，无法获取微博信息");
            queryMyAccountFinished(account);
        }
    }

    public void queryFriendList() {
        final List<AccountInfo> friendList = new ArrayList<>();
        if (this.sdkInstance == null) {
            UniSdkUtils.e(TAG, "SDK is uninitialized!");
            queryFriendListFinished(friendList);
        }
        this.sdkInstance.getUserFriends(new GetFriendsCallback() { // from class: com.netease.ntunisdk.SdkNetease.6
            @Override // com.netease.mpay.social.GetFriendsCallback
            public void onSuccessed(Friend[] friends) {
                if (friends != null && friends.length > 0) {
                    UniSdkUtils.i(SdkNetease.TAG, "获取好友列表成功");
                    for (int i = 0; i < friends.length; i++) {
                        AccountInfo account = new AccountInfo();
                        account.setAccountId(friends[i].mUid);
                        account.setNickname(friends[i].mNickName);
                        account.setIdType(friends[i].mUserType + "");
                        account.setIcon(friends[i].mAvatarUrl);
                        account.setRelationType(friends[i].mRelationType + "");
                        account.setInGame(true);
                        friendList.add(account);
                    }
                } else {
                    UniSdkUtils.i(SdkNetease.TAG, "好友列表为空");
                }
                SdkNetease.this.queryFriendListFinished(friendList);
            }

            @Override // com.netease.mpay.social.GetFriendsCallback
            public void onFailed(int code) {
                UniSdkUtils.e(SdkNetease.TAG, "获取好友列表失败,code=" + code);
                SdkNetease.this.queryFriendListFinished(friendList);
            }
        });
    }

    public void showConversation() {
        this.sdkInstance.showForumDialog();
    }

    public void extendFunc(String json) {
        try {
            JSONObject obj = new JSONObject(json);
            String method = obj.optString("methodId");
            UniSdkUtils.d(TAG, "extendFunc:" + method);
            if ("getDeviceTicket".equals(method)) {
                getDeviceTicket(obj);
            } else if ("quickAuthenticateUser".equalsIgnoreCase(method)) {
                this.sdkInstance.quickAuthenticateUser(null);
            } else if ("showRealnameDialog".equalsIgnoreCase(method)) {
                showRealnameDialog(obj);
            }
        } catch (JSONException e) {
            UniSdkUtils.d(TAG, "extendFunc JSONException:" + e.getMessage());
        }
    }

    private void getDeviceTicket(final JSONObject obj) {
        this.sdkInstance.getDeviceTicket(new DeviceTicketCallback() { // from class: com.netease.ntunisdk.SdkNetease.7
            @Override // com.netease.mpay.DeviceTicketCallback
            public void onSuccess(String ticket) {
                try {
                    UniSdkUtils.d(SdkNetease.TAG, "getDeviceTicket onSuccess:" + ticket);
                    obj.put(k.c, ticket);
                    SdkNetease.this.extendFuncCall(obj.toString());
                } catch (JSONException e) {
                    UniSdkUtils.d(SdkNetease.TAG, "getDeviceTicket JSONException:" + e.getMessage());
                }
            }

            @Override // com.netease.mpay.DeviceTicketCallback
            public void onFailure(int code, String msg) {
                UniSdkUtils.d(SdkNetease.TAG, "getDeviceTicket onFailure code:" + code + ",msg:" + msg);
                SdkNetease.this.extendFuncCall(obj.toString());
            }
        });
    }

    private void showRealnameDialog(final JSONObject obj) {
        this.sdkInstance.showRealnameDialog(new SetRealnameCallback() { // from class: com.netease.ntunisdk.SdkNetease.8
            @Override // com.netease.mpay.SetRealnameCallback
            public void onFinish(User user) {
                if (user == null) {
                    UniSdkUtils.d(SdkNetease.TAG, "showRealnameDialog, not login");
                    SdkNetease.this.resetCommonProp();
                    SdkNetease.this.loginDone(12);
                } else {
                    UniSdkUtils.d(SdkNetease.TAG, "showRealnameDialog res:" + user.realnameSet);
                    if (user.realnameSet) {
                        SdkNetease.this.setPropInt("REAL_NAME_VERIFIED", 2);
                    } else {
                        SdkNetease.this.setPropInt("REAL_NAME_VERIFIED", 0);
                    }
                    SdkNetease.this.extendFuncCall(obj.toString());
                }
            }
        }, null);
    }

    public void verifyMobile(int requestCode) {
        this.sdkInstance.showMobileBindDialog(new MobileBindCallback() { // from class: com.netease.ntunisdk.SdkNetease.9
            @Override // com.netease.mpay.MobileBindCallback
            public void onFinish(User user) {
                if (user == null) {
                    UniSdkUtils.d(SdkNetease.TAG, "showMobileBindDialog, not login");
                    SdkNetease.this.resetCommonProp();
                    SdkNetease.this.loginDone(12);
                } else {
                    SdkNetease.this.setPropInt("VERIFY_TYPE", user.mobileBindStatus);
                    SdkNetease.this.verifyDone(true, user.mobileBindStatus, "");
                }
            }
        }, null);
    }

    /* loaded from: classes.dex */
    class IndexCallback implements WgetDoneCallback {
        private String dataId;
        private String uid;

        public IndexCallback(String uid, String dataId) {
            this.uid = uid;
            this.dataId = dataId;
        }

        public void ProcessResult(String result) {
            UniSdkUtils.d(SdkNetease.TAG, "queryIndexUrl res:" + result);
            if (TextUtils.isEmpty(result)) {
                UniSdkUtils.d(SdkNetease.TAG, "获取index失败");
                OrderInfo order = new OrderInfo("-1");
                order.setOrderStatus(3);
                order.setOrderErrReason("获取index失败");
                order.setIsWebPayment(true);
                SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order);
                return;
            }
            try {
                JSONObject jsonRes = new JSONObject(result);
                int code = jsonRes.optInt("code");
                if (200 == code) {
                    String data = jsonRes.optString("data", "");
                    String checkIndex = SdkNetease.stringMD5(data.getBytes());
                    if (checkIndex.equalsIgnoreCase(this.dataId)) {
                        String jsonData = new String(Base64.decode(data, 0), "UTF-8");
                        UniSdkUtils.d(SdkNetease.TAG, "queryIndexUrl data:" + jsonData);
                        JSONObject json = new JSONObject(jsonData);
                        String guid = json.optString("uid");
                        UniSdkUtils.d(SdkNetease.TAG, "web uid:" + guid + ", mobile uid:" + SdkMgr.getInst().getPropStr("UIN"));
                        if (guid.equals(SdkMgr.getInst().getPropStr("UIN"))) {
                            SdkMgr.getInst().setWebOrderByCodeScannerListener(new WebOrderCheckListener(this.uid, this.dataId), 1);
                            String count = json.optString(WBPageConstants.ParamKey.COUNT);
                            String serverid = json.optString("serverid");
                            String roleid = json.optString("roleid");
                            String pid = json.optString("pid");
                            String rolename = json.optString("rolename");
                            String vip_level = json.optString("vip_level");
                            String rolelv = json.optString("rolelv");
                            String aid = json.optString("aid");
                            UniSdkUtils.d(SdkNetease.TAG, "aid:" + aid);
                            String privateparam = json.optString("privateparam");
                            String hostname = "0";
                            String by_unisdk = "1";
                            String left_money = "0";
                            String org_name = "0";
                            if (!TextUtils.isEmpty(privateparam) && StrUtil.isBase64(privateparam)) {
                                String privateparamValue = new String(Base64.decode(privateparam, 0), "UTF-8");
                                UniSdkUtils.d(SdkNetease.TAG, "privateparam:" + privateparamValue);
                                String[] params = privateparamValue.split(a.b);
                                for (String s : params) {
                                    String[] kv = s.split("=");
                                    if (kv.length > 1) {
                                        if ("hostname".equals(kv[0])) {
                                            hostname = kv[1];
                                        } else if ("by_unisdk".equals(kv[0])) {
                                            by_unisdk = kv[1];
                                        } else if ("left_money".equals(kv[0])) {
                                            left_money = kv[1];
                                        } else if ("org_name".equals(kv[0])) {
                                            org_name = kv[1];
                                        }
                                    }
                                }
                            }
                            SdkMgr.getInst().setPropStr("UNISDK_SERVER_PRIVATEPARAM", privateparam);
                            JSONObject qrCodeParams = new JSONObject(jsonData);
                            qrCodeParams.put("UIN", guid);
                            qrCodeParams.put("USERINFO_HOSTID", serverid);
                            qrCodeParams.put("USERINFO_HOSTNAME", hostname);
                            qrCodeParams.put("USERINFO_BALANCE", left_money);
                            qrCodeParams.put("USERINFO_ORG", org_name);
                            qrCodeParams.put("USERINFO_UID", roleid);
                            qrCodeParams.put("USERINFO_NAME", rolename);
                            qrCodeParams.put("USERINFO_VIP", vip_level);
                            qrCodeParams.put("USERINFO_GRADE", rolelv);
                            try {
                                qrCodeParams.put("USERINFO_AID", Integer.parseInt(aid));
                            } catch (NumberFormatException e) {
                                UniSdkUtils.e(SdkNetease.TAG, "aid parseInt exception");
                            }
                            qrCodeParams.put("GAME_UID", "");
                            qrCodeParams.put("UNISDK_EXT_INFO", by_unisdk);
                            OrderInfo order2 = new OrderInfo(pid);
                            order2.setCount(Integer.parseInt(count));
                            order2.setOrderDesc(order2.getProductName());
                            order2.setOrderCurrency(TextUtils.isEmpty(SdkMgr.getInst().getPropStr("currency")) ? "仙玉" : SdkMgr.getInst().getPropStr("currency"));
                            order2.setIsWebPayment(true);
                            order2.setQrCodeParams(qrCodeParams.toString());
                            SdkMgr.getInst().ntCheckOrder(order2);
                            return;
                        }
                        UniSdkUtils.d(SdkNetease.TAG, "web登陆账号和手机登陆账号不一致");
                        ((Activity) SdkNetease.this.myCtx).runOnUiThread(new Runnable() { // from class: com.netease.ntunisdk.SdkNetease.IndexCallback.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(SdkNetease.this.myCtx, "支付失败，请保持生成二维码的账号和手机端登陆账号一致！", 0).show();
                            }
                        });
                        OrderInfo order3 = new OrderInfo("-1");
                        order3.setOrderStatus(3);
                        order3.setOrderErrReason("生成二维码的账号和手机端登陆账号不一致");
                        order3.setIsWebPayment(true);
                        SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order3);
                        return;
                    }
                    UniSdkUtils.d(SdkNetease.TAG, "index校验不通过");
                    OrderInfo order4 = new OrderInfo("-1");
                    order4.setOrderStatus(3);
                    order4.setOrderErrReason("index校验不通过");
                    order4.setIsWebPayment(true);
                    SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order4);
                    return;
                }
                OrderInfo order5 = new OrderInfo("-1");
                order5.setOrderStatus(3);
                String err = jsonRes.optString("err");
                order5.setOrderErrReason(err);
                order5.setIsWebPayment(true);
                SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order5);
                UniSdkUtils.d(SdkNetease.TAG, "err:" + err);
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                UniSdkUtils.d(SdkNetease.TAG, "数据编码错误");
                OrderInfo order6 = new OrderInfo("-1");
                order6.setOrderStatus(3);
                order6.setOrderErrReason("数据编码错误");
                order6.setIsWebPayment(true);
                SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order6);
            } catch (JSONException e3) {
                e3.printStackTrace();
                UniSdkUtils.d(SdkNetease.TAG, "数据json解析错误");
                OrderInfo order7 = new OrderInfo("-1");
                order7.setOrderStatus(3);
                order7.setOrderErrReason("数据json解析错误");
                order7.setIsWebPayment(true);
                SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, order7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String stringMD5(byte[] inputByteArray) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.update(inputByteArray);
            byte[] resultByteArray = messageDigest.digest();
            return byteArrayToHex(resultByteArray);
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    private static String byteArrayToHex(byte[] byteArray) {
        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] resultCharArray = new char[byteArray.length * 2];
        int index = 0;
        for (byte b : byteArray) {
            int index2 = index + 1;
            resultCharArray[index] = hexDigits[(b >>> 4) & 15];
            index = index2 + 1;
            resultCharArray[index2] = hexDigits[b & 15];
        }
        return new String(resultCharArray);
    }

    /* loaded from: classes.dex */
    class WebOrderCheckListener implements OnOrderCheckListener {
        private String dataId;
        private String uid;

        public WebOrderCheckListener(String uid, String dataId) {
            this.uid = uid;
            this.dataId = dataId;
        }

        public void orderCheckDone(OrderInfo oi) {
            SdkNetease.this.notifyOrderFinish(this.uid, this.dataId, oi);
        }

        public void orderConsumeDone(OrderInfo oi) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOrderFinish(String uid, String dataId, OrderInfo oi) {
        UniSdkUtils.d(TAG, "notifyOrderFinish, dataId:" + dataId);
        int status = 2;
        if (2 == oi.getOrderStatus() || 10 == oi.getOrderStatus()) {
            status = 0;
        } else if (3 == oi.getOrderStatus()) {
            status = 1;
        } else if (1 == oi.getOrderStatus()) {
            status = 2;
        }
        this.sdkInstance.notifyOrderFinish(uid, dataId, status);
    }
}

package com.netease.dwrg;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.NativeActivity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.netease.neox.NativeInterface;
import com.netease.ntunisdk.base.AccountInfo;
import com.netease.ntunisdk.base.GamerInterface;
import com.netease.ntunisdk.base.OnCodeScannerListener;
import com.netease.ntunisdk.base.OnContinueListener;
import com.netease.ntunisdk.base.OnExitListener;
import com.netease.ntunisdk.base.OnFinishInitListener;
import com.netease.ntunisdk.base.OnLeaveSdkListener;
import com.netease.ntunisdk.base.OnLoginDoneListener;
import com.netease.ntunisdk.base.OnLogoutDoneListener;
import com.netease.ntunisdk.base.OnOrderCheckListener;
import com.netease.ntunisdk.base.OnShareListener;
import com.netease.ntunisdk.base.OnWebViewListener;
import com.netease.ntunisdk.base.OrderInfo;
import com.netease.ntunisdk.base.QueryFriendListener;
import com.netease.ntunisdk.base.SdkMgr;
import com.netease.ntunisdk.base.ShareInfo;
import com.netease.ntunisdk.base.StartupActivity;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.tencent.connect.common.Constants;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class Channel implements OnLoginDoneListener, OnOrderCheckListener, OnLogoutDoneListener, OnLeaveSdkListener, OnContinueListener, OnWebViewListener, OnExitListener, OnShareListener, OnCodeScannerListener, QueryFriendListener {
    private static Channel s_instance;
    private Context m_context;
    private boolean m_is_init = false;
    private boolean m_is_initializing = false;
    private long m_pre_login_time = 0;
    private long m_pre_login_suc_time = 0;

    public static synchronized Channel getInstance() {
        Channel channel;
        synchronized (Channel.class) {
            channel = s_instance;
        }
        return channel;
    }

    public Channel(Context context) {
        this.m_context = context;
        SdkMgr.init(this.m_context);
        s_instance = this;
    }

    public boolean isInitialized() {
        return this.m_is_init;
    }

    public boolean isInitializing() {
        return this.m_is_initializing;
    }

    public void initialize() {
        if (!this.m_is_init && !this.m_is_initializing) {
            SdkMgr.getInst().setPropStr("SDK_NAME", SdkMgr.getInst().getChannel());
            SdkMgr.getInst().setPropStr("APP_NAME", this.m_context.getString(com.identityv.shrek156.R.string.app_name));
            SdkMgr.getInst().setPropInt("ENABLE_EXLOGIN_GUEST", 0);
            SdkMgr.getInst().setPropStr("JF_GAMEID", "Please Contact JF");
            SdkMgr.getInst().setPropStr("JF_OPEN_LOG_URL", "Please Contact JF");
            SdkMgr.getInst().setPropStr("JF_PAY_LOG_URL", "Please Contact JF");
            SdkMgr.getInst().setPropStr("JF_LOG_KEY", "Please Contact JF");
            SdkMgr.getInst().ntInit(new OnFinishInitListener() { // from class: com.netease.dwrg.Channel.1
                public void finishInit(int arg0) {
                    if (Channel.this.isChannel("baidu")) {
                        StartupActivity.popStartup(Channel.this.m_context, (StartupActivity.StartupFinishListener) null);
                    }
                    NativeInterface.NativeOnInitSdk(arg0);
                    Channel.this.m_is_init = arg0 == 0;
                    Channel.this.m_is_initializing = false;
                    if (arg0 == 0) {
                        SdkMgr.getInst().setLoginListener(Channel.this, 1);
                        SdkMgr.getInst().setLogoutListener(Channel.this, 1);
                        SdkMgr.getInst().setOrderListener(Channel.this, 1);
                        SdkMgr.getInst().setContinueListener(Channel.this, 1);
                        SdkMgr.getInst().setExitListener(Channel.this, 1);
                        SdkMgr.getInst().setWebViewListener(Channel.this, 1);
                        SdkMgr.getInst().setShareListener(Channel.this, 1);
                        SdkMgr.getInst().setCodeScannerListener(Channel.this, 1);
                        SdkMgr.getInst().ntSetFloatBtnVisible(true);
                        SdkMgr.getInst().setQueryFriendListener(Channel.this, 1);
                        Channel.this.loginDone(0);
                        return;
                    }
                    NativeInterface.NativeOnExitApp();
                    SdkMgr.getInst().exit();
                    NativeActivity main_act = (NativeActivity) Channel.this.m_context;
                    main_act.finish();
                }
            });
            this.m_is_initializing = true;
        }
    }

    private static void popStartup(Context context) {
        final Dialog dialog = new Dialog(context, android.R.style.Theme.Black.NoTitleBar.Fullscreen);
        final ImageView imageView = new ImageView(context.getApplicationContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        imageView.setBackgroundColor(-1);
        int id = context.getResources().getIdentifier("sdk_startup_logo", ResIdReader.RES_TYPE_DRAWABLE, context.getPackageName());
        if (id > 0) {
            imageView.setImageResource(id);
        }
        dialog.setContentView(imageView);
        dialog.show();
        final AlphaAnimation hideAnim1 = getAnimation(1.0f, 0.0f, 3000L);
        hideAnim1.setAnimationListener(new Animation.AnimationListener() { // from class: com.netease.dwrg.Channel.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                dialog.dismiss();
            }
        });
        Runnable runnable2 = new Runnable() { // from class: com.netease.dwrg.Channel.3
            @Override // java.lang.Runnable
            public void run() {
                imageView.startAnimation(hideAnim1);
            }
        };
        Handler handler1 = new Handler();
        handler1.postDelayed(runnable2, 2000L);
    }

    private static AlphaAnimation getAnimation(float fromAlpha, float toAlpha, long time) {
        AlphaAnimation a = new AlphaAnimation(fromAlpha, toAlpha);
        a.setDuration(time);
        return a;
    }

    public void regProduct(String id, String name, float price, int ratio) {
        OrderInfo.regProduct(id, name, price, ratio);
    }

    public void regProduct(String id, String name, float price, int ratio, String[] pids) {
        if (pids.length == 0) {
            OrderInfo.regProduct(id, name, price, ratio);
            return;
        }
        HashMap<String, String> map_pids = new HashMap<>();
        for (int i = 0; i < pids.length / 2; i++) {
            map_pids.put(pids[i * 2], pids[(i * 2) + 1]);
        }
        OrderInfo.regProduct(id, name, price, ratio, map_pids);
    }

    public boolean hasProduct(String id) {
        return OrderInfo.hasProduct(id);
    }

    public void login() {
        if (this.m_is_init && System.currentTimeMillis() - this.m_pre_login_time > 1000) {
            this.m_pre_login_time = System.currentTimeMillis();
            loginDone(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isChannel(String name) {
        return name != null && name.equals(SdkMgr.getInst().getChannel());
    }

    public void logout() {
        if (hasLogin()) {
            if (SdkMgr.getInst().hasFeature("FEATURE_HAS_LOGOUT")) {
                SdkMgr.getInst().ntLogout();
            } else if (SdkMgr.getInst().hasFeature("FEATURE_HAS_SWITCH_ACCOUNT")) {
                SdkMgr.getInst().ntSwitchAccount();
            }
        }
    }

    public boolean hasLogin() {
        return SdkMgr.getInst().hasLogin();
    }

    public String getName() {
        String channelName = SdkMgr.getInst().getChannel();
        if (channelName.equals("lenovo_open")) {
            String val = SdkMgr.getInst().getPropStr("APPID");
            if (val.equals("1409170819125.app.ln")) {
                return "lenovo_preinstall";
            }
            return channelName;
        }
        return channelName;
    }

    public boolean orderProduct(String id, String order_id, int count, String desc, String order_etc) {
        try {
            OrderInfo order = new OrderInfo(id);
            order.setOrderId(order_id);
            order.setOrderEtc(order_etc);
            order.setOrderDesc(desc);
            order.setCount(count);
            SdkMgr.getInst().ntCheckOrder(order);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean orderProductEx(String id, String order_id, String etc, int count, String desc) {
        try {
            OrderInfo order = new OrderInfo(id);
            order.setOrderId(order_id);
            order.setOrderEtc(etc);
            order.setOrderDesc(desc);
            order.setCount(count);
            SdkMgr.getInst().ntCheckOrder(order);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public int getPropInt(String prop, int defaultVal) {
        return SdkMgr.getInst().getPropInt(prop, defaultVal);
    }

    public void setPropInt(String prop, int val) {
        SdkMgr.getInst().setPropInt(prop, val);
    }

    public String getPropStr(String prop) {
        String val;
        if (prop.equals("UID")) {
            val = SdkMgr.getInst().getPropStr("UIN");
        } else {
            val = SdkMgr.getInst().getPropStr(prop);
        }
        if (val == null) {
            return "";
        }
        return val;
    }

    public void setPropStr(String prop, String val) {
        if (prop.equals("UID")) {
            SdkMgr.getInst().setPropStr("UIN", val);
        } else {
            SdkMgr.getInst().setPropStr(prop, val);
        }
    }

    private void showProtocol(boolean type) {
        SdkMgr.getInst().ntShowCompactView(type);
    }

    public void setUserInfo(String prop, String val) {
        if (prop == null || prop.equals("")) {
            SdkMgr.getInst().ntUpLoadUserInfo();
        } else {
            SdkMgr.getInst().setUserInfo(prop, val);
        }
    }

    public void openManager() {
        SdkMgr.getInst().ntOpenManager();
    }

    public void guestBind() {
        SdkMgr.getInst().ntGuestBind();
    }

    public void getAnnouncementInfo() {
        SdkMgr.getInst().ntGetAnnouncementInfo();
    }

    public void openWebView(String url) {
        SdkMgr.getInst().ntOpenWebView(url);
    }

    public void switchAccount() {
        if (SdkMgr.getInst().hasFeature("FEATURE_HAS_SWITCH_ACCOUNT")) {
            SdkMgr.getInst().ntSwitchAccount();
        }
    }

    public void OnWebViewNativeCall(String action, String data) {
        NativeInterface.NativeOnWebViewCallback(action, data);
    }

    public void onEnterGame(String s, String s1) {
    }

    public void leaveSdk(int arg0) {
        NativeInterface.NativeOnLeaveSdk(arg0);
    }

    public void logoutDone(int arg0) {
        NativeInterface.NativeOnLogout(arg0);
    }

    public void orderCheckDone(OrderInfo arg0) {
        NativeInterface.NativeOnOrderCheckDone(arg0.getOrderId(), arg0.getOrderStatus(), arg0.getOrderErrReason());
    }

    public void orderConsumeDone(OrderInfo oi) {
    }

    public void loginDone(int arg0) {
        if (System.currentTimeMillis() - this.m_pre_login_suc_time > 1000) {
            this.m_pre_login_suc_time = System.currentTimeMillis();
            NativeInterface.NativeOnLogin(arg0);
            SdkMgr.getInst().ntSetFloatBtnVisible(true);
        }
    }

    public void exitApp() {
        NativeInterface.NativeOnExitApp();
        if (!isChannel("quicksdk")) {
            SdkMgr.getInst().exit();
        }
        NativeActivity main_act = (NativeActivity) this.m_context;
        main_act.finish();
    }

    public void onOpenExitViewFailed() {
        new AlertDialog.Builder(this.m_context).setTitle("Exit Game").setMessage("Confirm to exit?").setIcon(this.m_context.getResources().getIdentifier("ic_launcher", ResIdReader.RES_TYPE_DRAWABLE, this.m_context.getPackageName())).setCancelable(false).setPositiveButton(this.m_context.getResources().getIdentifier("neox_confirm", ResIdReader.RES_TYPE_STRING, this.m_context.getPackageName()), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Channel.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                if (Channel.this.isChannel("quicksdk")) {
                    SdkMgr.getInst().exit();
                } else {
                    Channel.this.exitApp();
                }
            }
        }).setNegativeButton(this.m_context.getResources().getIdentifier("neox_cancel", ResIdReader.RES_TYPE_STRING, this.m_context.getPackageName()), (DialogInterface.OnClickListener) null).create().show();
    }

    public void continueGame() {
    }

    public boolean tryExit() {
        if (SdkMgr.getInst().hasFeature("FEATURE_EXIT_VIEW") || isChannel("quicksdk")) {
            if (SdkMgr.getInst().hasFeature("FEATURE_EXIT_VIEW")) {
                SdkMgr.getInst().ntOpenExitView();
            } else {
                ((Activity) this.m_context).runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Channel.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Channel.this.onOpenExitViewFailed();
                    }
                });
            }
            return true;
        }
        return false;
    }

    public int getAuthType() {
        return SdkMgr.getInst().getAuthType();
    }

    public void on_pause() {
        SdkMgr.getInst().handleOnPause();
        SdkMgr.getInst().ntOpenPauseView();
    }

    public void on_resume() {
        SdkMgr.getInst().handleOnResume();
    }

    public void on_destroy() {
        SdkMgr.destroyInst();
        System.exit(0);
    }

    public void on_activityResult(int requestCode, int resultCode, Intent data) {
        SdkMgr.getInst().handleOnActivityResult(requestCode, resultCode, data);
    }

    public void on_newIntent(Intent intent) {
        SdkMgr.getInst().handleOnNewIntent(intent);
    }

    public void on_saveInstanceState(Bundle outState) {
        SdkMgr.getInst().handleOnSaveInstanceState(outState);
    }

    public void on_backPressed() {
        SdkMgr.getInst().handleOnBackPressed();
    }

    public void on_configChanged(Configuration newConfig) {
        SdkMgr.getInst().handleOnConfigurationChanged(newConfig);
    }

    public void on_restart() {
        SdkMgr.getInst().handleOnRestart();
    }

    public void on_start() {
        SdkMgr.getInst().handleOnStart();
    }

    public void on_stop() {
        SdkMgr.getInst().handleOnStop();
        if (!TextUtils.isEmpty(SdkMgr.getInst().getPropStr("USERINFO_UID"))) {
            SdkMgr.getInst().setPropStr("USERINFO_DATATYPE", Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
            SdkMgr.getInst().setPropStr("USERINFO_STAGE", Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
            SdkMgr.getInst().ntUpLoadUserInfo();
        }
    }

    public void antiAddiction(String accessToken) {
        SdkMgr.getInst().ntAntiAddiction(accessToken);
    }

    public void updateRank(String rankType, double val) {
        try {
            Method m = GamerInterface.class.getMethod("ntUpdateRank", String.class, Double.TYPE);
            if (m != null) {
                GamerInterface gi = SdkMgr.getInst();
                m.invoke(gi, rankType, Double.valueOf(val));
            }
        } catch (Exception e) {
        }
    }

    public void openPauseView() {
        SdkMgr.getInst().ntOpenPauseView();
    }

    public void showFloatButton(boolean show) {
        SdkMgr.getInst().ntSetFloatBtnVisible(show);
    }

    public boolean hasFeature(String feature) {
        return SdkMgr.getInst().hasFeature(feature);
    }

    public int DRPF(String json) {
        return SdkMgr.getInst().DRPF(json);
    }

    public String getAvailablePayChannels() {
        String result = SdkMgr.getInst().getPayChannel();
        if (result == null || result.isEmpty()) {
            return getName();
        }
        return result;
    }

    public String getDistributionChannel() {
        return SdkMgr.getInst().getAppChannel();
    }

    public String getPayChannelByPid(String pid) {
        return SdkMgr.getInst().getPayChannelByPid(pid);
    }

    public void gameLoginSuccess() {
        SdkMgr.getInst().ntGameLoginSuccess();
    }

    public String getSDKVersion() {
        String channelName = SdkMgr.getInst().getChannel();
        return SdkMgr.getInst().getSDKVersion(channelName);
    }

    public String getUdid() {
        return SdkMgr.getInst().getUdid();
    }

    public String getPlatform() {
        return SdkMgr.getInst().getPlatform();
    }

    public void presentQRCodeScanner(String extra, int requestCode) {
        SdkMgr.getInst().ntPresentQRCodeScanner(extra, requestCode);
    }

    public void showCompactView(boolean only_yes) {
        SdkMgr.getInst().ntShowCompactView(only_yes);
    }

    public boolean hasPlatform(String platform) {
        return SdkMgr.getInst().ntHasPlatform(platform);
    }

    public boolean ngShare(int channel, String title, String text, String desc, String link, String imagePath, String thumbImagePath) {
        ShareInfo shareInfo = new ShareInfo();
        shareInfo.setShareChannel(channel);
        shareInfo.setTitle(title);
        shareInfo.setText(text);
        shareInfo.setDesc(desc);
        if (!link.equals("")) {
            shareInfo.setLink(link);
        }
        if (imagePath.startsWith("http")) {
            shareInfo.setImage(imagePath);
        } else if (!imagePath.equals("")) {
            Bitmap bmp = BitmapFactory.decodeFile(imagePath);
            shareInfo.setShareBitmap(bmp);
        }
        if (!thumbImagePath.equals("")) {
            Bitmap bmp2 = BitmapFactory.decodeFile(thumbImagePath);
            shareInfo.setShareThumb(bmp2);
        }
        SdkMgr.getInst().ntShare(shareInfo);
        return true;
    }

    public void onShareFinished(boolean bSuccess) {
        NativeInterface.NativeOnShareFinished(bSuccess);
    }

    public void codeScannerFinish(int code, String extra) {
        NativeInterface.NativeOnCodeScannerFinish(code, extra);
    }

    public void showDaren() {
        SdkMgr.getInst().ntShowDaren();
    }

    public void isDarenUpdated() {
        SdkMgr.getInst().ntIsDarenUpdated();
    }

    public void onIsDarenUpdated(boolean arg0) {
        NativeInterface.NativeOnIsDarenUpdated(arg0);
    }

    public void onQueryFriendListFinished(List<AccountInfo> friends) {
    }

    public void onQueryFriendListInGameFinished(List<AccountInfo> friends) {
    }

    public void onQueryAvailablesInviteesFinished(List<AccountInfo> friends) {
    }

    public void onQueryMyAccountFinished(AccountInfo account) {
    }

    public void onApplyFriendFinished(boolean result) {
    }

    public void onInviteFriendListFinished(List<String> inviteeIDList) {
    }

    public void onInviterListFinished(List<AccountInfo> friends) {
    }
}

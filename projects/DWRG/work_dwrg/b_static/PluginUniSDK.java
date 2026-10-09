package com.netease.neox;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import com.netease.download.listener.DownloadListener;
import com.netease.ntunisdk.base.AccountInfo;
import com.netease.ntunisdk.base.OnCodeScannerListener;
import com.netease.ntunisdk.base.OnConnectListener;
import com.netease.ntunisdk.base.OnContinueListener;
import com.netease.ntunisdk.base.OnControllerListener;
import com.netease.ntunisdk.base.OnExitListener;
import com.netease.ntunisdk.base.OnExtendFuncByteListener;
import com.netease.ntunisdk.base.OnExtendFuncListener;
import com.netease.ntunisdk.base.OnFinishInitListener;
import com.netease.ntunisdk.base.OnLoginDoneListener;
import com.netease.ntunisdk.base.OnLogoutDoneListener;
import com.netease.ntunisdk.base.OnOrderCheckListener;
import com.netease.ntunisdk.base.OnProtocolFinishListener;
import com.netease.ntunisdk.base.OnPushListener;
import com.netease.ntunisdk.base.OnQRCodeListener;
import com.netease.ntunisdk.base.OnQuerySkuDetailsListener;
import com.netease.ntunisdk.base.OnQuestListener;
import com.netease.ntunisdk.base.OnReceiveMsgListener;
import com.netease.ntunisdk.base.OnShareListener;
import com.netease.ntunisdk.base.OnShowViewListener;
import com.netease.ntunisdk.base.OnStartupListener;
import com.netease.ntunisdk.base.OnVerifyListener;
import com.netease.ntunisdk.base.OnWebViewListener;
import com.netease.ntunisdk.base.OrderInfo;
import com.netease.ntunisdk.base.PadEvent;
import com.netease.ntunisdk.base.QueryFriendListener;
import com.netease.ntunisdk.base.QueryRankInfo;
import com.netease.ntunisdk.base.QueryRankListener;
import com.netease.ntunisdk.base.SdkMgr;
import com.netease.ntunisdk.base.ShareInfo;
import com.netease.ntunisdk.base.SkuDetailsInfo;
import com.netease.ntunisdk.base.UniSdkUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: D:\APK-Reverse\projects\DWRG\work_dwrg\b_static\classes5.dex */
public class PluginUniSDK extends PluginBase implements OnCodeScannerListener, OnConnectListener, OnContinueListener, OnControllerListener, OnExitListener, OnExtendFuncListener, OnExtendFuncByteListener, OnFinishInitListener, OnLoginDoneListener, OnLogoutDoneListener, OnOrderCheckListener, OnProtocolFinishListener, OnPushListener, OnQRCodeListener, OnQuerySkuDetailsListener, OnQuestListener, OnReceiveMsgListener, OnShareListener, OnShowViewListener, OnStartupListener, OnVerifyListener, OnWebViewListener, QueryFriendListener, QueryRankListener, DownloadListener {
    private Activity m_context = null;
    private boolean m_is_init = false;
    private boolean m_is_initing = false;
    private boolean m_is_dl_init = false;

    private static native void NativeOnCancelLocalPushFinished(boolean z);

    private static native void NativeOnCodeScannerFinish(int i, String str);

    private static native void NativeOnConnectToChannelFinished(int i);

    private static native void NativeOnContinueGame();

    private static native void NativeOnCreateQRCodeDone(String str);

    private static native void NativeOnDisConnectToChannelFinished(int i);

    private static native void NativeOnDownloadFinish2(String str, byte[] bArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void NativeOnDownloadInited();

    private static native void NativeOnDownloadProgress(String str);

    private static native void NativeOnExitApp();

    private static native void NativeOnExtendFuncBytesCall(String str, byte[] bArr, int i);

    private static native void NativeOnExtendFuncCall(String str);

    private static native void NativeOnFinishInit(int i);

    private static native void NativeOnGetUserPushFinished(boolean z);

    private static native void NativeOnLoginDone(int i);

    private static native void NativeOnLogoutDone(int i);

    private static native void NativeOnOpenExitViewFailed();

    private static native void NativeOnOrderCheckDone(OrderInfo orderInfo);

    private static native void NativeOnOrderConsumeDone(OrderInfo orderInfo);

    private static native void NativeOnPadKeyDown(int i, PadEvent padEvent);

    private static native void NativeOnPadKeyPressure(int i, float f, PadEvent padEvent);

    private static native void NativeOnPadKeyUp(int i, PadEvent padEvent);

    private static native void NativeOnPadLeftStick(float f, float f2, PadEvent padEvent);

    private static native void NativeOnPadRightStick(float f, float f2, PadEvent padEvent);

    private static native void NativeOnPadSateEvent(PadEvent padEvent);

    private static native void NativeOnProtocolFinish(int i);

    private static native void NativeOnQueryApplyFriendFinished(boolean z);

    private static native void NativeOnQueryAvailablesInviteesFinished(AccountInfo[] accountInfoArr);

    private static native void NativeOnQueryFriendListFinished(AccountInfo[] accountInfoArr);

    private static native void NativeOnQueryFriendListInGameFinished(AccountInfo[] accountInfoArr);

    private static native void NativeOnQueryInviteFriendListFinished(String[] strArr);

    private static native void NativeOnQueryInviterListFinished(AccountInfo[] accountInfoArr);

    private static native void NativeOnQueryIsDarenUpdated(boolean z);

    private static native void NativeOnQueryMyAccountFinished(AccountInfo accountInfo);

    private static native void NativeOnQueryRankFinished(AccountInfo[] accountInfoArr);

    private static native void NativeOnQuerySkuDetailsFinished(SkuDetailsInfo[] skuDetailsInfoArr);

    private static native void NativeOnQueryUpdateAchievement(boolean z);

    private static native void NativeOnQueryUpdateRankFinished(boolean z);

    private static native void NativeOnQuestCompleted(String str);

    private static native void NativeOnReceiveMsgEnterGame(String str, String str2);

    private static native void NativeOnReceiveMsgNotification();

    private static native void NativeOnSelectChannelOptionFinished(boolean z);

    private static native void NativeOnSendLocalNotificationFinished(int i);

    private static native void NativeOnSendPushNotificationFinished(boolean z);

    private static native void NativeOnSetUserPushFinished(boolean z);

    private static native void NativeOnShareFinished(boolean z);

    private static native void NativeOnShowViewClosed();

    private static native void NativeOnShowViewFailed();

    private static native void NativeOnShowViewOpened();

    private static native void NativeOnShowViewRewarded();

    private static native void NativeOnStartupClickSplash();

    private static native void NativeOnStartupDone();

    private static native void NativeOnStartupGetNoticeMsgDone(String str);

    private static native void NativeOnVerifyFailure(int i, String str);

    private static native void NativeOnVerifySuccess(int i, String str);

    private static native void NativeOnWebViewNativeCall(String str, String str2);

    private static Bitmap bitmapFromPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || file.isDirectory()) {
            return null;
        }
        return BitmapFactory.decodeFile(str);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public String getName() {
        return "unisdk";
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onCreate(Activity activity, Bundle bundle) {
        SdkMgr.init(activity);
        String string = activity.getString(com.netease.neox.unisdk.R.string.nxunisdk_engine);
        int i = 2;
        if (!string.equals("NeoX")) {
            if (string.equals("Cocos")) {
                i = 0;
            } else if (string.equals("Unity3D")) {
                i = 1;
            } else if (string.equals("Unreal")) {
                i = 3;
            } else {
                NXLog.e("Unknown engine " + string);
            }
        }
        SdkMgr.getInst().setPropInt("GAME_ENGINE", i);
        String string2 = activity.getString(com.netease.neox.unisdk.R.string.nxunisdk_jf_gameid);
        if (!TextUtils.isEmpty(string2)) {
            SdkMgr.getInst().setPropStr("JF_GAMEID", string2);
        }
        String string3 = activity.getString(com.netease.neox.unisdk.R.string.nxunisdk_jf_log_key);
        if (!TextUtils.isEmpty(string3)) {
            SdkMgr.getInst().setPropStr("JF_LOG_KEY", string3);
        }
        SdkMgr.getInst().setPropInt("UNISDK_JF_GAS3", 1);
        this.m_context = activity;
        SdkMgr.getInst().setPropInt("SPLASH_PNG_SCALE_TYPE", 0);
        this.m_is_initing = true;
        SdkMgr.getInst().ntInit(this);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onPause(Activity activity) {
        SdkMgr.getInst().handleOnPause();
        SdkMgr.getInst().ntOpenPauseView();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onStop(Activity activity) {
        SdkMgr.getInst().handleOnStop();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onResume(Activity activity) {
        SdkMgr.getInst().handleOnResume();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onStart(Activity activity) {
        SdkMgr.getInst().handleOnStart();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onRestart(Activity activity) {
        SdkMgr.getInst().handleOnRestart();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        SdkMgr.getInst().handleOnActivityResult(i, i2, intent);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onWindowFocusChanged(Activity activity, boolean z) {
        SdkMgr.getInst().handleOnWindowFocusChanged(z);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onConfigurationChanged(Activity activity, Configuration configuration) {
        SdkMgr.getInst().handleOnConfigurationChanged(configuration);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onNewIntent(Activity activity, Intent intent) {
        SdkMgr.getInst().handleOnNewIntent(intent);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onSaveInstanceState(Activity activity, Bundle bundle) {
        SdkMgr.getInst().handleOnSaveInstanceState(bundle);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onBackPressed(Activity activity) {
        SdkMgr.getInst().handleOnBackPressed();
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        SdkMgr.getInst().handleOnRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // com.netease.neox.PluginBase, com.netease.neox.IPlugin
    public void onDestroy(Activity activity) {
        if ("huawei".equals(SdkMgr.getInst().getChannel())) {
            SdkMgr.getInst().exit();
        }
        if (activity.isFinishing()) {
            SdkMgr.destroyInst();
        }
    }

    public void codeScannerFinish(int i, String str) {
        NativeOnCodeScannerFinish(i, str);
    }

    public void onConnectToChannelFinished(int i) {
        NativeOnConnectToChannelFinished(i);
    }

    public void onDisConnectToChannelFinished(int i) {
        NativeOnDisConnectToChannelFinished(i);
    }

    public void onSelectChannelOptionFinished(boolean z) {
        NativeOnSelectChannelOptionFinished(z);
    }

    public void continueGame() {
        NativeOnContinueGame();
    }

    public void onKeyDown(int i, PadEvent padEvent) {
        NativeOnPadKeyDown(i, padEvent);
    }

    public void onKeyUp(int i, PadEvent padEvent) {
        NativeOnPadKeyUp(i, padEvent);
    }

    public void onKeyPressure(int i, float f, PadEvent padEvent) {
        NativeOnPadKeyPressure(i, f, padEvent);
    }

    public void onLeftStick(float f, float f2, PadEvent padEvent) {
        NativeOnPadLeftStick(f, f2, padEvent);
    }

    public void onRightStick(float f, float f2, PadEvent padEvent) {
        NativeOnPadRightStick(f, f2, padEvent);
    }

    public void onStateEvent(PadEvent padEvent) {
        NativeOnPadSateEvent(padEvent);
    }

    public void exitApp() {
        NativeOnExitApp();
        SdkMgr.getInst().exit();
        Activity activity = this.m_context;
        if (activity != null) {
            activity.finish();
        }
    }

    public void onOpenExitViewFailed() {
        NativeOnOpenExitViewFailed();
        if (this.m_context.getResources().getBoolean(com.netease.neox.unisdk.R.bool.nxunisdk_use_default_exit_view)) {
            new AlertDialog.Builder(this.m_context).setTitle(com.netease.neox.unisdk.R.string.nxunisdk_title_exit_game).setMessage(com.netease.neox.unisdk.R.string.nxunisdk_message_exit_game).setIcon(com.netease.neox.unisdk.R.drawable.ic_launcher).setCancelable(false).setPositiveButton(com.netease.neox.unisdk.R.string.confirm, new DialogInterface.OnClickListener() { // from class: com.netease.neox.PluginUniSDK.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    PluginUniSDK.this.exitApp();
                }
            }).setNegativeButton(com.netease.neox.unisdk.R.string.cancel, (DialogInterface.OnClickListener) null).create().show();
        }
    }

    public void onExtendFuncCall(String str) {
        NativeOnExtendFuncCall(str);
    }

    public void onExtendFuncByteCall(String str, byte[] bArr, int i) {
        NativeOnExtendFuncBytesCall(str, bArr, i);
    }

    public void finishInit(int i) {
        NativeOnFinishInit(i);
        boolean z = i == 0;
        this.m_is_init = z;
        if (z) {
            SdkMgr.getInst().setCodeScannerListener(this, 1);
            SdkMgr.getInst().setConnectListener(this, 1);
            SdkMgr.getInst().setContinueListener(this, 1);
            SdkMgr.getInst().setControllerListener(this, 1);
            SdkMgr.getInst().setExitListener(this, 1);
            SdkMgr.getInst().setExtendFuncListener(this, 1);
            SdkMgr.getInst().setExtendFuncByteListener(this, 1);
            SdkMgr.getInst().setLoginListener(this, 1);
            SdkMgr.getInst().setLogoutListener(this, 1);
            SdkMgr.getInst().setOrderListener(this, 1);
            SdkMgr.getInst().setOnProtocolFinishListener(this, 1);
            SdkMgr.getInst().setPushListener(this, 1);
            SdkMgr.getInst().setQRCodeListener(this, 1);
            SdkMgr.getInst().setQuerySkuDetailsListener(this, 1);
            SdkMgr.getInst().setQuestListener(this, 1);
            SdkMgr.getInst().setReceiveMsgListener(this, 1);
            SdkMgr.getInst().setShareListener(this, 1);
            SdkMgr.getInst().setShowViewListener(this, 1);
            SdkMgr.getInst().setStartupListener(this, 1);
            SdkMgr.getInst().setVerifyListener(this, 1);
            SdkMgr.getInst().setWebViewListener(this, 1);
            SdkMgr.getInst().setQueryFriendListener(this, 1);
            SdkMgr.getInst().setQueryRankListener(this, 1);
        }
        this.m_is_initing = false;
    }

    public void loginDone(int i) {
        NativeOnLoginDone(i);
    }

    public void onProgress(JSONObject jSONObject) {
        NativeOnDownloadProgress(jSONObject.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if (r5.length == 0) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFinish(org.json.JSONObject r5) {
        /*
            r4 = this;
            java.lang.String r0 = r5.toString()
            java.lang.String r1 = "filebytes"
            boolean r2 = r5.has(r1)
            r3 = 0
            if (r2 == 0) goto L1f
            java.lang.Object r5 = r5.get(r1)     // Catch: java.lang.Exception -> L1b
            byte[] r5 = (byte[]) r5     // Catch: java.lang.Exception -> L1b
            if (r5 == 0) goto L19
            int r1 = r5.length     // Catch: java.lang.Exception -> L1b
            if (r1 != 0) goto L19
            goto L1f
        L19:
            r3 = r5
            goto L1f
        L1b:
            r5 = move-exception
            com.netease.neox.NXLog.logException(r5)
        L1f:
            NativeOnDownloadFinish2(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.neox.PluginUniSDK.onFinish(org.json.JSONObject):void");
    }

    public void logoutDone(int i) {
        NativeOnLogoutDone(i);
    }

    public void orderCheckDone(OrderInfo orderInfo) {
        NativeOnOrderCheckDone(orderInfo);
    }

    public void orderConsumeDone(OrderInfo orderInfo) {
        NativeOnOrderConsumeDone(orderInfo);
    }

    public void onProtocolFinish(int i) {
        NativeOnProtocolFinish(i);
    }

    public void onSendPushNotificationFinished(boolean z) {
        NativeOnSendPushNotificationFinished(z);
    }

    public void onSendLocalNotificationFinished(int i) {
        NativeOnSendLocalNotificationFinished(i);
    }

    public void onGetUserPushFinished(boolean z) {
        NativeOnGetUserPushFinished(z);
    }

    public void onSetUserPushFinished(boolean z) {
        NativeOnSetUserPushFinished(z);
    }

    public void onCancelLocalPushFinished(boolean z) {
        NativeOnCancelLocalPushFinished(z);
    }

    public void createQRCodeDone(String str) {
        NativeOnCreateQRCodeDone(str);
    }

    public void querySkuDetailsFinished(List<SkuDetailsInfo> list) {
        NativeOnQuerySkuDetailsFinished((list == null || list.isEmpty()) ? null : (SkuDetailsInfo[]) list.toArray(new SkuDetailsInfo[list.size()]));
    }

    public void onQuestCompleted(String str) {
        NativeOnQuestCompleted(str);
    }

    public void onReceivedNotification() {
        NativeOnReceiveMsgNotification();
    }

    public void onEnterGame(String str, String str2) {
        NativeOnReceiveMsgEnterGame(str, str2);
    }

    public void onShareFinished(boolean z) {
        NativeOnShareFinished(z);
    }

    public void onRewarded() {
        NativeOnShowViewRewarded();
    }

    public void onOpened() {
        NativeOnShowViewOpened();
    }

    public void onFailed() {
        NativeOnShowViewFailed();
    }

    public void onClosed() {
        NativeOnShowViewClosed();
    }

    public void startupDone() {
        NativeOnStartupDone();
    }

    public void getNoticeMsgDone(String str) {
        NativeOnStartupGetNoticeMsgDone(str);
    }

    public void onClickSplash() {
        NativeOnStartupClickSplash();
    }

    public void onSuccess(int i, String str) {
        NativeOnVerifySuccess(i, str);
    }

    public void onFailure(int i, String str) {
        NativeOnVerifyFailure(i, str);
    }

    public void OnWebViewNativeCall(String str, String str2) {
        NativeOnWebViewNativeCall(str, str2);
    }

    public void onQueryFriendListFinished(List<AccountInfo> list) {
        NativeOnQueryFriendListFinished((list == null || list.isEmpty()) ? null : (AccountInfo[]) list.toArray(new AccountInfo[list.size()]));
    }

    public void onQueryAvailablesInviteesFinished(List<AccountInfo> list) {
        NativeOnQueryAvailablesInviteesFinished((list == null || list.isEmpty()) ? null : (AccountInfo[]) list.toArray(new AccountInfo[list.size()]));
    }

    public void onQueryMyAccountFinished(AccountInfo accountInfo) {
        NativeOnQueryMyAccountFinished(accountInfo);
    }

    public void onApplyFriendFinished(boolean z) {
        NativeOnQueryApplyFriendFinished(z);
    }

    public void onIsDarenUpdated(boolean z) {
        NativeOnQueryIsDarenUpdated(z);
    }

    public void onQueryFriendListInGameFinished(List<AccountInfo> list) {
        NativeOnQueryFriendListInGameFinished((list == null || list.isEmpty()) ? null : (AccountInfo[]) list.toArray(new AccountInfo[list.size()]));
    }

    public void onInviteFriendListFinished(List<String> list) {
        NativeOnQueryInviteFriendListFinished((list == null || list.isEmpty()) ? null : (String[]) list.toArray(new String[list.size()]));
    }

    public void onInviterListFinished(List<AccountInfo> list) {
        NativeOnQueryInviterListFinished((list == null || list.isEmpty()) ? null : (AccountInfo[]) list.toArray(new AccountInfo[list.size()]));
    }

    public void onQueryRankFinished(List<AccountInfo> list) {
        NativeOnQueryRankFinished((list == null || list.isEmpty()) ? null : (AccountInfo[]) list.toArray(new AccountInfo[list.size()]));
    }

    public void onUpdateRankFinished(boolean z) {
        NativeOnQueryUpdateRankFinished(z);
    }

    public void onUpdateAchievement(boolean z) {
        NativeOnQueryUpdateAchievement(z);
    }

    public void initDownload() {
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.neox.PluginUniSDK.2
            @Override // java.lang.Runnable
            public void run() {
                if (PluginUniSDK.this.m_is_dl_init) {
                    return;
                }
                SdkMgr.getDLInst().setContext(PluginUniSDK.this.m_context);
                SdkMgr.getDLInst().setDownloadCallback(PluginUniSDK.this);
                PluginUniSDK.this.m_is_dl_init = true;
                PluginUniSDK.NativeOnDownloadInited();
            }
        });
    }

    public void extendFuncDownload(String str) {
        if (this.m_is_dl_init) {
            SdkMgr.getDLInst().extendFunc(str);
        }
    }

    public String getDownloadSDKVersion() {
        return SdkMgr.getDLInst().getDownloadSDKVersion();
    }

    public String getOrbitSessionId() {
        return SdkMgr.getDLInst().getOrbitSessionId();
    }

    public boolean isInit() {
        return this.m_is_init;
    }

    public void ntInit() {
        if (this.m_is_init || this.m_is_initing) {
            return;
        }
        SdkMgr.getInst().setPropInt("SPLASH_PNG_SCALE_TYPE", 0);
        SdkMgr.getInst().ntInit(this);
        this.m_is_initing = true;
    }

    public void ntLogin() {
        SdkMgr.getInst().ntLogin();
    }

    public void ntQuerySkuDetails(String str, String[] strArr) {
        SdkMgr.getInst().ntQuerySkuDetails(str, Arrays.asList(strArr));
    }

    public void ntCheckOrder(OrderInfo orderInfo) {
        SdkMgr.getInst().ntCheckOrder(orderInfo);
    }

    public void ntVerifyOrder() {
        SdkMgr.getInst().ntVerifyOrder();
    }

    public void ntLogout() {
        SdkMgr.getInst().ntLogout();
    }

    public void ntOpenManager() {
        SdkMgr.getInst().ntOpenManager();
    }

    public void ntSwitchAccount() {
        SdkMgr.getInst().ntSwitchAccount();
    }

    public void ntOpenNearby() {
        SdkMgr.getInst().ntOpenNearby();
    }

    public void ntSetFloatBtnVisible(boolean z) {
        SdkMgr.getInst().ntSetFloatBtnVisible(z);
    }

    public void ntOpenPauseView() {
        SdkMgr.getInst().ntOpenPauseView();
    }

    public void ntOpenExitView() {
        SdkMgr.getInst().ntOpenExitView();
    }

    public String getPropStr(String str, String str2) {
        return SdkMgr.getInst().getPropStr(str, str2);
    }

    public String getPropStr(String str) {
        return SdkMgr.getInst().getPropStr(str);
    }

    public void setPropStr(String str, String str2) {
        SdkMgr.getInst().setPropStr(str, str2);
    }

    public void setJFSauthWithKey(String str, String str2, boolean z) {
        SdkMgr.getInst().setJFSauthWithKey(str, str2, z);
    }

    public int getPropInt(String str, int i) {
        return SdkMgr.getInst().getPropInt(str, i);
    }

    public void setPropInt(String str, int i) {
        SdkMgr.getInst().setPropInt(str, i);
    }

    public boolean hasFeature(String str) {
        return SdkMgr.getInst().hasFeature(str);
    }

    public boolean hasLogin() {
        return SdkMgr.getInst().hasLogin();
    }

    public String getChannel() {
        return SdkMgr.getInst().getChannel();
    }

    public String getAppChannel() {
        return SdkMgr.getInst().getAppChannel();
    }

    public String getPlatform() {
        return SdkMgr.getInst().getPlatform();
    }

    public void exit() {
        SdkMgr.getInst().exit();
    }

    public void setUserInfo(String str, String str2) {
        SdkMgr.getInst().setUserInfo(str, str2);
    }

    public String getUserInfo(String str) {
        return SdkMgr.getInst().getUserInfo(str);
    }

    public void ntUpLoadUserInfo() {
        SdkMgr.getInst().ntUpLoadUserInfo();
    }

    public void ntAntiAddiction(String str) {
        SdkMgr.getInst().ntAntiAddiction(str);
    }

    public void ntDoSdkRealNameRegister() {
        SdkMgr.getInst().ntDoSdkRealNameRegister();
    }

    public void ntGuestBind() {
        SdkMgr.getInst().ntGuestBind();
    }

    public boolean isBinded(String str) {
        return SdkMgr.getInst().isBinded(str);
    }

    public void ntApplyFriend(String str) {
        SdkMgr.getInst().ntApplyFriend(str);
    }

    public void ntQueryFriendList() {
        SdkMgr.getInst().ntQueryFriendList();
    }

    public void ntQueryAvailablesInvitees() {
        SdkMgr.getInst().ntQueryAvailablesInvitees();
    }

    public void ntQueryMyAccount() {
        SdkMgr.getInst().ntQueryMyAccount();
    }

    public void ntQueryRank(QueryRankInfo queryRankInfo) {
        SdkMgr.getInst().ntQueryRank(queryRankInfo);
    }

    public void ntUpdateRank(String str, double d) {
        SdkMgr.getInst().ntUpdateRank(str, d);
    }

    public void ntShare(ShareInfo shareInfo) {
        SdkMgr.getInst().ntShare(shareInfo);
    }

    public boolean ntCheckArgs(ShareInfo shareInfo) {
        return SdkMgr.getInst().ntCheckArgs(shareInfo);
    }

    public void ntQueryInventory() {
        SdkMgr.getInst().ntQueryInventory();
    }

    public void ntGameLoginSuccess() {
        SdkMgr.getInst().ntGameLoginSuccess();
    }

    public void ntConsume(OrderInfo orderInfo) {
        SdkMgr.getInst().ntConsume(orderInfo);
    }

    public String getFFChannelByPid(String str) {
        return SdkMgr.getInst().getFFChannelByPid(str);
    }

    public void ntIsDarenUpdated() {
        SdkMgr.getInst().ntIsDarenUpdated();
    }

    public boolean ntHasNotification() {
        return SdkMgr.getInst().ntHasNotification();
    }

    public String getAuthTypeName() {
        return SdkMgr.getInst().getAuthTypeName();
    }

    public String getChannelByImsi() {
        return SdkMgr.getInst().getChannelByImsi();
    }

    public String getChannelByImsiEx() {
        return SdkMgr.getInst().getChannelByImsiEx();
    }

    public String getCCTypeByImsi() {
        return SdkMgr.getInst().getCCTypeByImsi();
    }

    public void ntMoreGame() {
        SdkMgr.getInst().ntMoreGame();
    }

    public void ntQueryFriendListInGame() {
        SdkMgr.getInst().ntQueryFriendListInGame();
    }

    public String getSDKVersion(String str) {
        return SdkMgr.getInst().getSDKVersion(str);
    }

    public void ntPrePay() {
        SdkMgr.getInst().ntPrePay();
    }

    public String getUdid() {
        return SdkMgr.getInst().getUdid();
    }

    public void ntCCStartService() {
        SdkMgr.getInst().ntCCStartService();
    }

    public void ntCCStopService() {
        SdkMgr.getInst().ntCCStopService();
    }

    public int getCCPerformance() {
        return SdkMgr.getInst().getCCPerformance();
    }

    public int getCCWindowState() {
        return SdkMgr.getInst().getCCWindowState();
    }

    public void ntShowWeb(String str) {
        SdkMgr.getInst().ntShowWeb(str);
    }

    public void ntCollectEvent(String str) {
        SdkMgr.getInst().ntCollectEvent(str);
    }

    public void ntShowBoard(String str, String str2, String str3) {
        SdkMgr.getInst().ntShowBoard(str, str2, str3);
    }

    public int DRPF(String str) {
        return SdkMgr.getInst().DRPF(str);
    }

    public void ntShowRewardView(String[] strArr) {
        SdkMgr.getInst().ntShowRewardView(Arrays.asList(strArr));
    }

    public void ntInviteFriendList(String str, String str2) {
        SdkMgr.getInst().ntInviteFriendList(str, str2);
    }

    public void ntQueryInviterList() {
        SdkMgr.getInst().ntQueryInviterList();
    }

    public void ntDeleteInviters(String[] strArr) {
        SdkMgr.getInst().ntDeleteInviters(Arrays.asList(strArr));
    }

    public void ntSendPushNotification(String str, String[] strArr) {
        SdkMgr.getInst().ntSendPushNotification(str, Arrays.asList(strArr));
    }

    public void ntSendLocalNotification(String str) {
        SdkMgr.getInst().ntSendLocalNotification(str);
    }

    public void ntCancelLocalNotification(int i) {
        SdkMgr.getInst().ntCancelLocalNotification(i);
    }

    public void ntGetUsePushNotification() {
        SdkMgr.getInst().ntGetUsePushNotification();
    }

    public void ntSetUsePushNotification(boolean z) {
        SdkMgr.getInst().ntSetUsePushNotification(z);
    }

    public void ntConnectToChannel() {
        SdkMgr.getInst().ntConnectToChannel();
    }

    public void ntDisConnectFromChannel() {
        SdkMgr.getInst().ntDisConnectFromChannel();
    }

    public boolean ntHasChannelConnected() {
        return SdkMgr.getInst().ntHasChannelConnected();
    }

    public String ntGetChannelID() {
        return SdkMgr.getInst().ntGetChannelID();
    }

    public void ntSelectChannelOption(int i) {
        SdkMgr.getInst().ntSelectChannelOption(i);
    }

    public void ntSetZone(String str) {
        SdkMgr.getInst().ntSetZone(str);
    }

    public void ntShowConversation() {
        SdkMgr.getInst().ntShowConversation();
    }

    public void ntShowFAQs() {
        SdkMgr.getInst().ntShowFAQs();
    }

    public void ntSetUserIdentifier(String str) {
        SdkMgr.getInst().ntSetUserIdentifier(str);
    }

    public void ntDisplayLeaderboard(String str) {
        SdkMgr.getInst().ntDisplayLeaderboard(str);
    }

    public void ntDisplayAchievement() {
        SdkMgr.getInst().ntDisplayAchievement();
    }

    public void ntUpdateAchievement(String str, int i) {
        SdkMgr.getInst().ntUpdateAchievement(str, i);
    }

    public void ntUpdateEvent(String str, int i) {
        SdkMgr.getInst().ntUpdateEvent(str, i);
    }

    public void ntDisplayQuests(int[] iArr) {
        SdkMgr.getInst().ntDisplayQuests(iArr);
    }

    public void ntvGenericFunctionCall(String str) {
        SdkMgr.getInst().ntvGenericFunctionCall(str);
    }

    public void ntPresentQRCodeScanner(String str, int i) {
        SdkMgr.getInst().ntPresentQRCodeScanner(str, i);
    }

    public boolean isCCRecording() {
        return SdkMgr.getInst().isCCRecording();
    }

    public boolean isCCRecordMic() {
        return SdkMgr.getInst().isCCRecordMic();
    }

    public void ntGetNotice(boolean z) {
        SdkMgr.getInst().ntGetNotice(z);
    }

    public void ntTrackCustomEvent(String str, String str2) {
        SdkMgr.getInst().ntTrackCustomEvent(str, str2);
    }

    public void ntFlushCustomEvents() {
        SdkMgr.getInst().ntFlushCustomEvents();
    }

    public void ntSendProfile(String str, boolean z) {
        SdkMgr.getInst().ntSendProfile(str, z);
    }

    public void ntGetAnnouncementInfo() {
        SdkMgr.getInst().ntGetAnnouncementInfo();
    }

    public void ntUpdateApi(String str, String str2) {
        SdkMgr.getInst().ntUpdateApi(str, str2);
    }

    public boolean ntHasPlatform(String str) {
        return SdkMgr.getInst().ntHasPlatform(str);
    }

    public void ntCallbackSuccess(String str) {
        SdkMgr.getInst().ntCallbackSuccess(str);
    }

    public void ntCallbackFail(String str) {
        SdkMgr.getInst().ntCallbackFail(str);
    }

    public void ntShowCompactView(boolean z) {
        SdkMgr.getInst().ntShowCompactView(z);
    }

    public void ntOpenWebView(String str) {
        SdkMgr.getInst().ntOpenWebView(str);
    }

    public void ntCloseWebView() {
        SdkMgr.getInst().ntCloseWebView();
    }

    public void ntVerifyMobile(int i) {
        SdkMgr.getInst().ntVerifyMobile(i);
    }

    public void ntCloseFlash() {
        SdkMgr.getInst().ntCloseFlash();
    }

    public void ntExtendFunc(String str) {
        SdkMgr.getInst().ntExtendFunc(str);
    }

    public void ntOpenEchoes() {
        SdkMgr.getInst().ntOpenEchoes();
    }

    public void ntRemoveCheckedOrders(String str) {
        SdkMgr.getInst().ntRemoveCheckedOrders(str);
    }

    public OrderInfo[] ntGetCheckedOrders() {
        List ntGetCheckedOrders = SdkMgr.getInst().ntGetCheckedOrders();
        if (ntGetCheckedOrders != null) {
            return (OrderInfo[]) ntGetCheckedOrders.toArray(new OrderInfo[ntGetCheckedOrders.size()]);
        }
        return null;
    }

    public void ntCreateQRCode(String str, int i, int i2, String str2) {
        SdkMgr.getInst().ntCreateQRCode(str, i, i2, str2);
    }

    public void ntCreateQRCode(String str, int i, int i2, String str2, String str3) {
        SdkMgr.getInst().ntCreateQRCode(str, i, i2, str2, str3);
    }

    public void ntScannerQRCode(String str) {
        SdkMgr.getInst().ntScannerQRCode(str);
    }

    public void ntPushGameVoice(byte[] bArr) {
        try {
            Class.forName("com.netease.ntunisdk.ccmomentsdk.PushGameVoiceDataEfficiently").getDeclaredMethod("pushGameVoiceData", byte[].class, Integer.TYPE).invoke(null, bArr, Integer.valueOf(bArr.length));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public OrderInfo newOrderInfo(String str) {
        return new OrderInfo(str);
    }

    public OrderInfo newOrderInfo(OrderInfo orderInfo) {
        return new OrderInfo(orderInfo);
    }

    public String[] getProductListKeys() {
        Hashtable productList = OrderInfo.getProductList();
        if (productList == null || productList.size() == 0) {
            return null;
        }
        ArrayList list = Collections.list(productList.keys());
        return (String[]) list.toArray(new String[list.size()]);
    }

    public OrderInfo.ProductInfo[] getProductListValues(String[] strArr) {
        Hashtable productList = OrderInfo.getProductList();
        if (productList == null || productList.size() == 0 || strArr == null || strArr.length == 0 || strArr.length != productList.size()) {
            return null;
        }
        OrderInfo.ProductInfo[] productInfoArr = new OrderInfo.ProductInfo[productList.size()];
        for (int i = 0; i < strArr.length; i++) {
            productInfoArr[i] = (OrderInfo.ProductInfo) productList.get(strArr[i]);
        }
        return productInfoArr;
    }

    public String[] getSdkPidKeys(OrderInfo.ProductInfo productInfo) {
        if (productInfo.sdkPids.size() == 0) {
            return null;
        }
        return (String[]) productInfo.sdkPids.keySet().toArray(new String[productInfo.sdkPids.size()]);
    }

    public String[] getSdkPidValues(OrderInfo.ProductInfo productInfo, String[] strArr) {
        if (productInfo.sdkPids.size() == 0 || strArr == null || strArr.length == 0 || strArr.length != productInfo.sdkPids.size()) {
            return null;
        }
        String[] strArr2 = new String[productInfo.sdkPids.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) productInfo.sdkPids.get(strArr[i]);
        }
        return strArr2;
    }

    public void regProduct(String str, String str2, float f, int i) {
        OrderInfo.regProduct(str, str2, f, i);
    }

    public void regProduct(String str) {
        OrderInfo.regProduct(str);
    }

    public void regProduct(String str, String str2, float f, int i, String[] strArr, String[] strArr2) {
        HashMap hashMap;
        if (strArr == null || strArr2 == null || strArr2.length <= 0 || strArr.length != strArr2.length) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                hashMap.put(strArr[i2], strArr2[i2]);
            }
        }
        OrderInfo.regProduct(str, str2, f, i, hashMap);
    }

    public boolean hasProduct(String str) {
        return OrderInfo.hasProduct(str);
    }

    public boolean hasProduct(OrderInfo orderInfo) {
        return OrderInfo.hasProduct(orderInfo);
    }

    public OrderInfo jsonStr2Obj(String str) {
        return OrderInfo.jsonStr2Obj(str);
    }

    public String obj2Json(OrderInfo orderInfo) {
        JSONObject obj2Json = OrderInfo.obj2Json(orderInfo);
        if (obj2Json != null) {
            return obj2Json.toString();
        }
        return null;
    }

    public String[] getSdkPidKeys(OrderInfo orderInfo) {
        Map sdkPids = orderInfo.getSdkPids();
        if (sdkPids == null || sdkPids.size() == 0) {
            return null;
        }
        return (String[]) orderInfo.getSdkPids().keySet().toArray(new String[sdkPids.size()]);
    }

    public String[] getSdkPidValues(OrderInfo orderInfo, String[] strArr) {
        Map sdkPids = orderInfo.getSdkPids();
        if (sdkPids.size() == 0 || strArr == null || strArr.length == 0 || strArr.length != sdkPids.size()) {
            return null;
        }
        String[] strArr2 = new String[sdkPids.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) sdkPids.get(strArr[i]);
        }
        return strArr2;
    }

    public String[] getChannelGoodsTypesKeys(OrderInfo orderInfo) {
        Map channelGoodsTypes = orderInfo.getChannelGoodsTypes();
        if (channelGoodsTypes == null || channelGoodsTypes.size() == 0) {
            return null;
        }
        return (String[]) channelGoodsTypes.keySet().toArray(new String[channelGoodsTypes.size()]);
    }

    public int[] getChannelGoodsTypesValues(OrderInfo orderInfo, String[] strArr) {
        Map channelGoodsTypes = orderInfo.getChannelGoodsTypes();
        if (channelGoodsTypes == null || channelGoodsTypes.size() == 0 || strArr == null || strArr.length == 0 || strArr.length != channelGoodsTypes.size()) {
            return null;
        }
        int[] iArr = new int[channelGoodsTypes.size()];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = ((Integer) channelGoodsTypes.get(strArr[i])).intValue();
        }
        return iArr;
    }

    public String[] getJellRatiosKeys(OrderInfo orderInfo) {
        Map jellRatios = orderInfo.getJellRatios();
        if (jellRatios == null || jellRatios.size() == 0) {
            return null;
        }
        return (String[]) jellRatios.keySet().toArray(new String[jellRatios.size()]);
    }

    public int[] getJellRatiosValues(OrderInfo orderInfo, String[] strArr) {
        Map jellRatios = orderInfo.getJellRatios();
        if (jellRatios == null || jellRatios.size() == 0 || strArr == null || strArr.length == 0 || strArr.length != jellRatios.size()) {
            return null;
        }
        int[] iArr = new int[jellRatios.size()];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = ((Integer) jellRatios.get(strArr[i])).intValue();
        }
        return iArr;
    }

    public String[] getArrPriceLocaleId(OrderInfo orderInfo) {
        String arrPriceLocaleId = orderInfo.getArrPriceLocaleId();
        if (TextUtils.isEmpty(arrPriceLocaleId)) {
            return null;
        }
        return arrPriceLocaleId.split(";");
    }

    public void setArrPriceLocaleId(OrderInfo orderInfo, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            orderInfo.setArrPriceLocaleId("");
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != strArr.length - 1) {
                sb.append(";");
            }
        }
        orderInfo.setArrPriceLocaleId(sb.toString());
    }

    public QueryRankInfo newQueryRankInfo() {
        return new QueryRankInfo();
    }

    public QueryRankInfo newQueryRankInfo(String str) {
        return QueryRankInfo.jsonStr2Obj(str);
    }

    public ShareInfo newShareInfo() {
        return new ShareInfo();
    }

    public ShareInfo newShareInfo(String str) {
        return ShareInfo.jsonStr2Obj(str);
    }

    public String[] getALinkParamsKeys(ShareInfo shareInfo) {
        Map aLinkParams = shareInfo.getALinkParams();
        if (aLinkParams == null || aLinkParams.size() <= 0) {
            return null;
        }
        return (String[]) aLinkParams.keySet().toArray(new String[aLinkParams.size()]);
    }

    public String[] getALinkParamsValues(ShareInfo shareInfo, String[] strArr) {
        Map aLinkParams = shareInfo.getALinkParams();
        if (aLinkParams == null || aLinkParams.size() <= 0 || strArr == null || strArr.length != aLinkParams.size()) {
            return null;
        }
        String[] strArr2 = new String[aLinkParams.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) aLinkParams.get(strArr[i]);
        }
        return strArr2;
    }

    public void setALinkParams(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setALinkParams(hashMap);
    }

    public String[] getAltTextMsgKeys(ShareInfo shareInfo) {
        Map altTextMsg = shareInfo.getAltTextMsg();
        if (altTextMsg == null || altTextMsg.size() <= 0) {
            return null;
        }
        return (String[]) altTextMsg.keySet().toArray(new String[altTextMsg.size()]);
    }

    public String[] getAltTextMsgValues(ShareInfo shareInfo, String[] strArr) {
        Map altTextMsg = shareInfo.getAltTextMsg();
        if (altTextMsg == null || altTextMsg.size() <= 0 || strArr == null || strArr.length != altTextMsg.size()) {
            return null;
        }
        String[] strArr2 = new String[altTextMsg.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) altTextMsg.get(strArr[i]);
        }
        return strArr2;
    }

    public void setAltTextMsg(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setAltTextMsg(hashMap);
    }

    public String[] getILinkParamsKeys(ShareInfo shareInfo) {
        Map iLinkParams = shareInfo.getILinkParams();
        if (iLinkParams == null || iLinkParams.size() <= 0) {
            return null;
        }
        return (String[]) iLinkParams.keySet().toArray(new String[iLinkParams.size()]);
    }

    public String[] getILinkParamsValues(ShareInfo shareInfo, String[] strArr) {
        Map iLinkParams = shareInfo.getILinkParams();
        if (iLinkParams == null || iLinkParams.size() <= 0 || strArr == null || strArr.length != iLinkParams.size()) {
            return null;
        }
        String[] strArr2 = new String[iLinkParams.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) iLinkParams.get(strArr[i]);
        }
        return strArr2;
    }

    public void setILinkParams(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setILinkParams(hashMap);
    }

    public String[] getLinkParamsKeys(ShareInfo shareInfo) {
        Map linkParams = shareInfo.getLinkParams();
        if (linkParams == null || linkParams.size() <= 0) {
            return null;
        }
        return (String[]) linkParams.keySet().toArray(new String[linkParams.size()]);
    }

    public String[] getLinkParamsValues(ShareInfo shareInfo, String[] strArr) {
        Map linkParams = shareInfo.getLinkParams();
        if (linkParams == null || linkParams.size() <= 0 || strArr == null || strArr.length != linkParams.size()) {
            return null;
        }
        String[] strArr2 = new String[linkParams.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) linkParams.get(strArr[i]);
        }
        return strArr2;
    }

    public void setLinkParams(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setLinkParams(hashMap);
    }

    public String[] getLinkTextMsgKeys(ShareInfo shareInfo) {
        Map linkTextMsg = shareInfo.getLinkTextMsg();
        if (linkTextMsg == null || linkTextMsg.size() <= 0) {
            return null;
        }
        return (String[]) linkTextMsg.keySet().toArray(new String[linkTextMsg.size()]);
    }

    public String[] getLinkTextMsgValues(ShareInfo shareInfo, String[] strArr) {
        Map linkTextMsg = shareInfo.getLinkTextMsg();
        if (linkTextMsg == null || linkTextMsg.size() <= 0 || strArr == null || strArr.length != linkTextMsg.size()) {
            return null;
        }
        String[] strArr2 = new String[linkTextMsg.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) linkTextMsg.get(strArr[i]);
        }
        return strArr2;
    }

    public void setLinkTextMsg(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setLinkTextMsg(hashMap);
    }

    public String[] getTextMsgKeys(ShareInfo shareInfo) {
        Map textMsg = shareInfo.getTextMsg();
        if (textMsg == null || textMsg.size() <= 0) {
            return null;
        }
        return (String[]) textMsg.keySet().toArray(new String[textMsg.size()]);
    }

    public String[] getTextMsgValues(ShareInfo shareInfo, String[] strArr) {
        Map textMsg = shareInfo.getTextMsg();
        if (textMsg == null || textMsg.size() <= 0 || strArr == null || strArr.length != textMsg.size()) {
            return null;
        }
        String[] strArr2 = new String[textMsg.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) textMsg.get(strArr[i]);
        }
        return strArr2;
    }

    public void setTextMsg(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setTextMsg(hashMap);
    }

    public String[] getSubTextMsgKeys(ShareInfo shareInfo) {
        Map subTextMsg = shareInfo.getSubTextMsg();
        if (subTextMsg == null || subTextMsg.size() <= 0) {
            return null;
        }
        return (String[]) subTextMsg.keySet().toArray(new String[subTextMsg.size()]);
    }

    public String[] getSubTextMsgValues(ShareInfo shareInfo, String[] strArr) {
        Map subTextMsg = shareInfo.getSubTextMsg();
        if (subTextMsg == null || subTextMsg.size() <= 0 || strArr == null || strArr.length != subTextMsg.size()) {
            return null;
        }
        String[] strArr2 = new String[subTextMsg.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = (String) subTextMsg.get(strArr[i]);
        }
        return strArr2;
    }

    public void setSubTextMsg(ShareInfo shareInfo, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length || strArr.length == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            hashMap.put(strArr[i], strArr2[i]);
        }
        shareInfo.setSubTextMsg(hashMap);
    }

    public String[] getToUserList(ShareInfo shareInfo) {
        List toUserList = shareInfo.getToUserList();
        if (toUserList == null || toUserList.size() <= 0) {
            return null;
        }
        return (String[]) toUserList.toArray(new String[toUserList.size()]);
    }

    public void setToUserList(ShareInfo shareInfo, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            List toUserList = shareInfo.getToUserList();
            if (toUserList != null) {
                toUserList.clear();
                return;
            }
            return;
        }
        shareInfo.setToUserList(Arrays.asList(strArr));
    }

    public void updateShareInfoBitmap(ShareInfo shareInfo, String str) {
        shareInfo.setShareBitmap(bitmapFromPath(str));
    }

    public void updateShareInfoThumb(ShareInfo shareInfo, String str) {
        shareInfo.setShareThumb(bitmapFromPath(str));
    }

    public AccountInfo newAccountInfo() {
        return new AccountInfo();
    }

    public AccountInfo newAccountInfo(String str) {
        return new AccountInfo(str);
    }

    public SkuDetailsInfo newSkuDetailsInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        return new SkuDetailsInfo(str, str2, str3, str4, str5, str6, str7);
    }

    public String getAndroidId() {
        String androidId = UniSdkUtils.getAndroidId(this.m_context);
        if (androidId == null || androidId.isEmpty()) {
            return null;
        }
        return androidId;
    }

    public int getAppIconResId() {
        return UniSdkUtils.getAppIconResId(this.m_context);
    }

    public String getAppName() {
        String appName = UniSdkUtils.getAppName(this.m_context);
        if (appName == null || appName.isEmpty()) {
            return null;
        }
        return appName;
    }

    public String getAppPackageName() {
        String appPackageName = UniSdkUtils.getAppPackageName(this.m_context);
        if (appPackageName == null || appPackageName.isEmpty()) {
            return null;
        }
        return appPackageName;
    }

    public int getAppVersionCode() {
        return UniSdkUtils.getAppVersionCode(this.m_context);
    }

    public String getAppVersionName() {
        String appVersionName = UniSdkUtils.getAppVersionName(this.m_context);
        if (appVersionName == null || appVersionName.isEmpty()) {
            return null;
        }
        return appVersionName;
    }

    public String getCpuCore() {
        String cpuCore = UniSdkUtils.getCpuCore();
        if (cpuCore == null || cpuCore.isEmpty()) {
            return null;
        }
        return cpuCore;
    }

    public String getCpuMhz() {
        String cpuMhz = UniSdkUtils.getCpuMhz();
        if (cpuMhz == null || cpuMhz.isEmpty()) {
            return null;
        }
        return cpuMhz;
    }

    public String getCpuName() {
        String cpuName = UniSdkUtils.getCpuName();
        if (cpuName == null || cpuName.isEmpty()) {
            return null;
        }
        return cpuName;
    }

    public String getDeviceUDID() {
        String deviceUDID = UniSdkUtils.getDeviceUDID(this.m_context);
        if (deviceUDID == null || deviceUDID.isEmpty()) {
            return null;
        }
        return deviceUDID;
    }

    public int[] getDisplayPixels() {
        int[] displayPixels = UniSdkUtils.getDisplayPixels(this.m_context);
        if (displayPixels == null || displayPixels.length < 2 || displayPixels[0] == 0 || displayPixels[1] == 0) {
            return null;
        }
        return displayPixels;
    }

    public String getMacAddress() {
        String macAddress = UniSdkUtils.getMacAddress(this.m_context);
        if (macAddress == null || macAddress.isEmpty()) {
            return null;
        }
        return macAddress;
    }

    public String getMobildBrand() {
        String mobildBrand = UniSdkUtils.getMobildBrand();
        if (mobildBrand == null || mobildBrand.isEmpty()) {
            return null;
        }
        return mobildBrand;
    }

    public String getMobileIMEI() {
        String mobileIMEI = UniSdkUtils.getMobileIMEI(this.m_context);
        if (mobileIMEI == null || mobileIMEI.isEmpty()) {
            return null;
        }
        return mobileIMEI;
    }

    public String getMobileManufacturer() {
        String mobileManufacturer = UniSdkUtils.getMobileManufacturer();
        if (mobileManufacturer == null || mobileManufacturer.isEmpty()) {
            return null;
        }
        return mobileManufacturer;
    }

    public String getMobileModel() {
        String mobileModel = UniSdkUtils.getMobileModel();
        if (mobileModel == null || mobileModel.isEmpty()) {
            return null;
        }
        return mobileModel;
    }

    public String getMobileModel2() {
        String mobileModel2 = UniSdkUtils.getMobileModel2();
        if (mobileModel2 == null || mobileModel2.isEmpty()) {
            return null;
        }
        return mobileModel2;
    }

    public int getMobileSDKVersion() {
        return UniSdkUtils.getMobileSDKVersion();
    }

    public String getMobileVersion() {
        String mobileVersion = UniSdkUtils.getMobileVersion();
        if (mobileVersion == null || mobileVersion.isEmpty()) {
            return null;
        }
        return mobileVersion;
    }

    public String getMobileIMSI() {
        String mobileIMSI = UniSdkUtils.getMobileIMSI(this.m_context);
        if (mobileIMSI == null || mobileIMSI.isEmpty()) {
            return null;
        }
        return mobileIMSI;
    }

    public String[] getRamMemory() {
        String[] ramMemory = UniSdkUtils.getRamMemory(this.m_context);
        if (ramMemory == null || ramMemory.length == 0) {
            return null;
        }
        return ramMemory;
    }

    public String getSurveyPaperLanguage() {
        String surveyPaperLanguage = UniSdkUtils.getSurveyPaperLanguage();
        if (surveyPaperLanguage == null || surveyPaperLanguage.isEmpty()) {
            return null;
        }
        return surveyPaperLanguage;
    }

    public String getSystemLanguage() {
        String systemLanguage = UniSdkUtils.getSystemLanguage();
        if (systemLanguage == null || systemLanguage.isEmpty()) {
            return null;
        }
        return systemLanguage;
    }

    public String getTransid() {
        String transid = UniSdkUtils.getTransid(this.m_context);
        if (transid == null || transid.isEmpty()) {
            return null;
        }
        return transid;
    }

    public String getUnisdkDeviceId() {
        String unisdkDeviceId = UniSdkUtils.getUnisdkDeviceId(this.m_context);
        if (unisdkDeviceId == null || unisdkDeviceId.isEmpty()) {
            return null;
        }
        return unisdkDeviceId;
    }

    public String getNetworktype() {
        String ntGetNetworktype = UniSdkUtils.ntGetNetworktype(this.m_context);
        if (ntGetNetworktype == null || ntGetNetworktype.isEmpty()) {
            return null;
        }
        return ntGetNetworktype;
    }

    public boolean isDeviceRooted() {
        return UniSdkUtils.isDeviceRooted();
    }

    public boolean isDomestic() {
        return UniSdkUtils.isDomestic(this.m_context);
    }

    public boolean isEmulator() {
        return UniSdkUtils.isEmulator(this.m_context);
    }

    public boolean isIPv4(String str) {
        return UniSdkUtils.isIPv4(str);
    }

    public boolean isMuMu() {
        return UniSdkUtils.isMuMu();
    }

    public boolean isNetworkAvailable() {
        return UniSdkUtils.isNetworkAvailable(this.m_context);
    }

    public boolean isTablet() {
        return UniSdkUtils.isTablet(this.m_context);
    }

    public boolean isWifiConnect() {
        return UniSdkUtils.isWifiConnect(this.m_context);
    }

    public String toJSONString(Object obj) {
        if (obj instanceof OrderInfo) {
            return OrderInfo.obj2Json((OrderInfo) obj).toString();
        }
        if (obj instanceof ShareInfo) {
            return ShareInfo.obj2JsonStr((ShareInfo) obj);
        }
        if (obj instanceof AccountInfo) {
            return AccountInfo.obj2Json((AccountInfo) obj).toString();
        }
        if (obj instanceof SkuDetailsInfo) {
            return SkuDetailsInfo.obj2Json((SkuDetailsInfo) obj).toString();
        }
        return null;
    }
}

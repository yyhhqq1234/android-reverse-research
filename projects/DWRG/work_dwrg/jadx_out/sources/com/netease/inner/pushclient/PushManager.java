package com.netease.inner.pushclient;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.netease.inner.pushclient.gcm.GCM;
import com.netease.inner.pushclient.huawei.Huawei;
import com.netease.inner.pushclient.miui.MIUI;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.AppInfo;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import com.netease.push.utils.VersionManager;
import com.netease.pushservice.PushService;
import com.netease.pushservice.PushServiceHelper;

/* loaded from: classes.dex */
public final class PushManager {
    private static final String TAG = "NGPush_" + PushManager.class.getSimpleName() + "_inner";
    private static PushManager mServiceManager = new PushManager();
    private AppInfo mAppInfo;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    private PushManager() {
    }

    public static PushManager getInstance() {
        return mServiceManager;
    }

    public void init(Context ctx) {
        Log.i(TAG, "PushManager init");
        Log.d(TAG, "ctx:" + ctx);
        PushSetting.setVerCode(ctx, 18);
        Log.d(TAG, "setVerCode, JAR_VER_CODE:18");
    }

    public boolean enableSound(Context ctx, boolean flag) {
        Log.i(TAG, "enableSound");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "flag:" + flag);
        if (flag != this.mAppInfo.mbEnableSound) {
            PushSetting.setSound(ctx, flag);
            return true;
        }
        return true;
    }

    public boolean enableVibrate(Context ctx, boolean flag) {
        Log.i(TAG, "enableVibrate");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "flag:" + flag);
        if (flag != this.mAppInfo.mbEnableVibrate) {
            PushSetting.setVibrate(ctx, flag);
            return true;
        }
        return true;
    }

    public boolean enableRepeatProtect(Context ctx, boolean flag) {
        Log.i(TAG, "enableRepeatProtect");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "flag:" + flag);
        if (flag != this.mAppInfo.mbRepeatProtect) {
            PushSetting.setRepeatProtect(ctx, flag);
            Intent intent = PushServiceHelper.createMethodIntent();
            intent.putExtra("method", PushConstants.SERVICE_METHOD_REPEATPROTECT);
            intent.putExtra(PushConstants.INTENT_PACKAGE_NAME, ctx.getPackageName());
            intent.putExtra(PushConstants.INTENT_FLAG_NAME, flag);
            intent.setPackage(PushSetting.getCurPkg(ctx));
            ctx.sendBroadcast(intent);
            return true;
        }
        return true;
    }

    public String getDevId(Context ctx) {
        String devid = "";
        PushService pushService = PushServiceHelper.getInstance().getPushService();
        if (pushService != null) {
            devid = PushSetting.getDevId(pushService);
        }
        Log.d(TAG, "getDevId");
        Log.d(TAG, "pushService:" + pushService);
        Log.d(TAG, "devid:" + devid);
        if (TextUtils.isEmpty(devid)) {
            String devid2 = PushSetting.getDevId(ctx);
            return devid2;
        }
        return devid;
    }

    public String getServiceType(Context ctx) {
        return ctx != null ? PushSetting.getServiceType(ctx, ctx.getPackageName()) : PushConstants.NIEPUSH;
    }

    public void setServiceType(Context ctx, String type) {
        Log.i(TAG, "setServiceType");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "type:" + type);
        PushSetting.setServiceType(ctx, type);
    }

    public String getSenderID(Context ctx, String serviceType) {
        return PushSetting.getSenderID(ctx, serviceType);
    }

    public boolean setSenderID(Context ctx, String serviceType, String senderID) {
        Log.i(TAG, "setSenderID");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "serviceType:" + serviceType);
        Log.d(TAG, "senderID:" + senderID);
        PushSetting.setSenderID(ctx, serviceType, senderID);
        return true;
    }

    public String getRegistrationID(Context ctx, String serviceType) {
        return PushSetting.getRegistrationID(ctx, serviceType);
    }

    public void setRegistrationID(Context ctx, String serviceType, String regid) {
        Log.i(TAG, "setRegistrationID");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "serviceType:" + serviceType);
        Log.d(TAG, "regid:" + regid);
        PushSetting.setRegistrationID(ctx, serviceType, regid);
    }

    public String getAppID(Context ctx, String serviceType) {
        return PushSetting.getAppID(ctx, serviceType);
    }

    public boolean setAppID(Context ctx, String serviceType, String appID) {
        Log.i(TAG, "setAppID:" + appID);
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "serviceType:" + serviceType);
        Log.d(TAG, "appID:" + appID);
        PushSetting.setAppID(ctx, serviceType, appID);
        return true;
    }

    public String getAppKey(Context ctx, String serviceType) {
        return PushSetting.getAppKey(ctx, serviceType);
    }

    public boolean setAppKey(Context ctx, String serviceType, String appKey) {
        Log.i(TAG, "setAppKey");
        Log.d(TAG, "serviceType:" + serviceType);
        PushSetting.setAppKey(ctx, serviceType, appKey);
        return true;
    }

    public void startService(Context ctx) {
        Log.i(TAG, "startService");
        String serviceType = getServiceType(ctx);
        Log.d(TAG, "serviceType=" + serviceType);
        this.mAppInfo = PushSetting.getAppInfo(ctx, ctx.getPackageName());
        Log.d(TAG, "mAppInfo=" + this.mAppInfo);
        String runningpkg = PushSetting.getCurPkg(ctx);
        int runningver = PushSetting.getCurVerCode(ctx);
        boolean runningNeedNiepush = PushSetting.getCurNeedNiepush(ctx);
        String contextpkg = ctx.getPackageName();
        boolean needNiepush = PushConstants.NIEPUSH.equals(serviceType);
        Log.d(TAG, "runningpkg:" + runningpkg);
        Log.d(TAG, "runningver:" + runningver);
        Log.d(TAG, "runningNeedNiepush:" + runningNeedNiepush);
        Log.d(TAG, "contextpkg:" + contextpkg);
        Log.d(TAG, "contextver:18");
        String pkgToStart = runningpkg;
        int verToStart = runningver;
        if (TextUtils.isEmpty(pkgToStart) || verToStart < 18) {
            pkgToStart = contextpkg;
            verToStart = 18;
        }
        VersionManager.VersionInfo versionInfo = VersionManager.getNewestInstallVersion(ctx);
        if (versionInfo != null && !TextUtils.isEmpty(versionInfo.mPackageName)) {
            pkgToStart = versionInfo.mPackageName;
            verToStart = versionInfo.mVersionCode;
            needNiepush = versionInfo.mNeedNiepush.booleanValue();
        }
        Log.e(TAG, "pkgToStart:" + pkgToStart);
        Log.e(TAG, "verToStart:" + verToStart);
        Log.e(TAG, "needNiepush:" + needNiepush);
        boolean bChange = (pkgToStart.equals(runningpkg) && verToStart == runningver && needNiepush == runningNeedNiepush) ? false : true;
        Log.e(TAG, "bChange:" + bChange);
        if (bChange) {
            Log.d(TAG, "change PushSetting");
            PushSetting.setCurPkg(ctx, pkgToStart);
            PushSetting.setCurVerCode(ctx, verToStart);
            PushSetting.setCurNeedNiepush(ctx, needNiepush);
            if (!TextUtils.isEmpty(runningpkg)) {
                restartService(ctx, runningpkg, pkgToStart);
            }
        }
        Intent intent = PushServiceHelper.createMethodIntent();
        intent.putExtra("method", "register");
        intent.putExtra(PushConstants.INTENT_PACKAGE_NAME, ctx.getPackageName());
        intent.setPackage(pkgToStart);
        ctx.sendBroadcast(intent);
        if (PushConstants.GCM.equals(serviceType)) {
            GCM.getInst().init(ctx);
        } else if (PushConstants.MIUI.equals(serviceType)) {
            MIUI.getInst().init(ctx);
        } else if (PushConstants.HUAWEI.equals(serviceType)) {
            Huawei.getInst().init(ctx);
        }
    }

    private void restartService(Context ctx, String pkgToStop, String pkgToStart) {
        Log.i(TAG, "restart service");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "pkgToStop:" + pkgToStop);
        Log.d(TAG, "pkgToStart:" + pkgToStart);
        Intent intent = PushServiceHelper.createMethodIntent();
        intent.putExtra("method", PushConstants.SERVICE_METHOD_RESTART);
        intent.putExtra(PushConstants.INTENT_PACKAGE_NAME, pkgToStart);
        intent.setPackage(pkgToStop);
        ctx.sendBroadcast(intent);
    }

    private void stopService(Context ctx, String pkg) {
        Log.i(TAG, "stop service");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "pkg:" + pkg);
        Intent intent = PushServiceHelper.createMethodIntent();
        intent.putExtra("method", PushConstants.SERVICE_METHOD_STOP);
        intent.setPackage(pkg);
        ctx.sendBroadcast(intent);
    }

    public void stopService(Context ctx) {
        stopService(ctx, PushSetting.getCurPkg(ctx));
    }

    public void connect(Context ctx) {
        Log.i(TAG, "connect");
        Log.d(TAG, "ctx:" + ctx);
        String curPackageName = PushSetting.getCurPkg(ctx);
        Intent connectIntent = PushServiceHelper.createActiveMethodIntent();
        connectIntent.putExtra("method", PushConstants.SERVICE_METHOD_NETWORKCONNECT);
        connectIntent.setPackage(curPackageName);
        PushServiceHelper.startActivePushService(ctx, connectIntent);
    }
}

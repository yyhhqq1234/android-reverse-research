package com.netease.ntunisdk.base.update.dex;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import com.netease.ntunisdk.base.SdkBase;
import com.netease.ntunisdk.base.UniSdkUtils;
import com.netease.ntunisdk.base.update.common.LogReq;
import com.netease.ntunisdk.base.update.common.UniSp;
import com.netease.ntunisdk.base.update.common.UpdateCallback;
import com.netease.ntunisdk.base.utils.FileUtil;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.statistic.LogBuilder;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class DexLoader {
    private static final String SP_NAME = "unisdk_dynamic_info";
    private static final String TAG = "DexLoader";
    private static WeakReference<Context> sCtxRef;
    private static final String[] CHANNEL_NAME = {"ngpush"};
    private static final String[] CLASS_NAME = {"com.netease.pushclient.PushManager"};
    private static final String[] METHOD_NAME = {"getSdkVersion"};
    private static UpdateCallback sUpdateCallback = new UpdateCallback() { // from class: com.netease.ntunisdk.base.update.dex.DexLoader.1
        public void onReceiveResult(int resultCode, Bundle resultData) {
            DexLoader.dealWithResult(resultCode);
        }
    };

    public static synchronized void init(Context context) {
        synchronized (DexLoader.class) {
            UniSp.initSp(context, SP_NAME);
            String appPackageName = context.getPackageName();
            int appVerCode = 0;
            try {
                appVerCode = context.getPackageManager().getPackageInfo(appPackageName, 0).versionCode;
                UniSdkUtils.d(TAG, "appVerCode=" + appVerCode);
            } catch (PackageManager.NameNotFoundException e) {
                UniSdkUtils.w(TAG, "" + e);
            }
            boolean isNewPackage = appVerCode != UniSp.getSpInt(SP_NAME, "app_ver", 0);
            if (isNewPackage) {
                UniSp.setSpInt(SP_NAME, "app_ver", appVerCode, true);
            }
            setUsbTxtPref(context);
        }
    }

    private static synchronized void checkAndDownload(Context context) {
        synchronized (DexLoader.class) {
            sCtxRef = new WeakReference<>(context);
            String channelStr = UniSp.getSpString(SP_NAME, LogBuilder.KEY_CHANNEL, "");
            String[] channels = channelStr.split(i.b);
            if (channels.length != 0) {
                DexUpdateThread.startDexThread(context.getFilesDir(), sUpdateCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dealWithResult(int result) {
        switch (result) {
            case 0:
                UniSdkUtils.d(TAG, "need not to download");
                return;
            case 1:
                UniSdkUtils.d(TAG, "the latest is downloaded to local");
                return;
            case 2:
                UniSdkUtils.d(TAG, "the latest is downloaded to local");
                if (sCtxRef.get() != null) {
                    restartAppDialog(sCtxRef.get());
                    return;
                }
                return;
            case 10:
                UniSdkUtils.d(TAG, "dex check finished.");
                return;
            case 11:
                UniSdkUtils.e(TAG, "dex invalid");
                System.exit(1);
                return;
            default:
                return;
        }
    }

    private static void restartAppDialog(Context context) {
    }

    private static void restartApp(Context context) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        PendingIntent mPendingIntent = PendingIntent.getActivity(context, 123456, intent, 268435456);
        AlarmManager mgr = (AlarmManager) context.getSystemService("alarm");
        mgr.set(1, System.currentTimeMillis() + 100, mPendingIntent);
        System.exit(0);
    }

    public static void startCheck(final Context context, final SdkBase inst, final Collection<SdkBase> channelSdks1, final Collection<SdkBase> channelSdks2, final String gameId, final String unibaseVer, final String unisubVer, final String udid, final String mac) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.netease.ntunisdk.base.update.dex.DexLoader.2
            @Override // java.lang.Runnable
            public void run() {
                DexLoader.startCheckDelay(context, inst, channelSdks1, channelSdks2, gameId, unibaseVer, unisubVer, udid, mac);
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startCheckDelay(Context context, SdkBase inst, Collection<SdkBase> channelSdks1, Collection<SdkBase> channelSdks2, String gameId, String unibaseVer, String unisubVer, String udid, String mac) {
        UniSp.initSp(context, SP_NAME);
        if (UniSp.getSpInt(SP_NAME, "use_dex", 0) == 0) {
            UniSdkUtils.w(TAG, "no dex deploy");
            return;
        }
        if (new File(context.getExternalFilesDir(null), "unipatch_close").exists()) {
            UniSdkUtils.w(TAG, "unipatch closed.");
            return;
        }
        Set<SdkBase> sets = new HashSet<>();
        sets.add(inst);
        sets.addAll(channelSdks1);
        sets.addAll(channelSdks2);
        String url = inst.getPropStr("UNISDK_UNIPATCH_LOG_URL");
        if (!TextUtils.isEmpty(url)) {
            LogReq.resetUrl(url);
        }
        String url2 = readExternalUrl(context);
        if (TextUtils.isEmpty(url2)) {
            url2 = inst.getPropStr("UNISDK_UNIPATCH_CHECK_URL");
        }
        StringBuilder channelSb = new StringBuilder();
        for (SdkBase sdk : sets) {
            if (channelSb.length() != 0) {
                channelSb.append(i.b);
            }
            channelSb.append(sdk.getChannel());
            UniSp.setSpString(SP_NAME, sdk.getChannel(), "unisdk_ver", getUnisdkVersion(sdk), false);
            UniSp.setSpString(SP_NAME, sdk.getChannel(), "sdk_version", sdk.getSDKVersion(), false);
        }
        UniSp.setSpString(SP_NAME, LogBuilder.KEY_CHANNEL, channelSb.toString(), false);
        UniSp.setSpString(SP_NAME, "sdk", inst.getChannel(), false);
        UniSp.setSpString(SP_NAME, "sdk_version", getUnisdkVersion(inst), true);
        getOtherSdkVersions();
        try {
            String[] arr$ = context.getAssets().list("");
            for (String fileName : arr$) {
                if (fileName.startsWith("usb_") && fileName.endsWith(".txt")) {
                    String fileName2 = fileName.replace("usb_", "").replace(".txt", "");
                    UniSp.setSpString(SP_NAME, "base_init_hash", fileName2.substring(0, fileName2.indexOf("_")), false);
                }
            }
        } catch (Exception e) {
        }
        String value = UniSdkUtils.getMobileVersion();
        if (TextUtils.isEmpty(value)) {
            value = "0";
        }
        UniSp.setSpString(SP_NAME, "mobile_ver", value, false);
        String value2 = udid + mac;
        if (TextUtils.isEmpty(value2)) {
            value2 = "0";
        }
        UniSp.setSpInt(SP_NAME, "probability", Math.abs(value2.hashCode()) % 100, false);
        UniSp.setSpString(SP_NAME, "extras", UniSdkUtils.getMobileSDKVersion() + "/" + UniSdkUtils.getMobileModel2(), false);
        UniSp.setSpString(SP_NAME, WBConstants.GAME_PARAMS_GAME_ID, gameId, false);
        UniSp.setSpString(SP_NAME, "check_url", url2, false);
        if (TextUtils.isEmpty(udid)) {
            udid = "empty_udid";
        }
        UniSp.setSpString(SP_NAME, "udid", udid, false);
        if (TextUtils.isEmpty(mac)) {
            mac = "empty_mac";
        }
        UniSp.setSpString(SP_NAME, "mac", mac, false);
        UniSp.setSpString(SP_NAME, "package_name", UniSdkUtils.getAppPackageName(context), false);
        UniSp.setSpInt(SP_NAME, "app_ver", UniSdkUtils.getAppVersionCode(context), false);
        UniSp.setSpString(SP_NAME, "dex_cache_path", context.getCacheDir().getAbsolutePath(), false);
        UniSp.setSpString(SP_NAME, "unibase_sub_ver", unisubVer, false);
        UniSp.setSpString(SP_NAME, "unibase_ver", unibaseVer, true);
        checkAndDownload(context);
    }

    private static String getUnisdkVersion(SdkBase sdk) {
        String ver = "";
        Class<?> clz = sdk.getClass();
        try {
            Method method = clz.getDeclaredMethod("getUniSDKVersion", new Class[0]);
            method.setAccessible(true);
            ver = (String) method.invoke(sdk, new Object[0]);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
        if (TextUtils.isEmpty(ver)) {
            return sdk.getSDKVersion();
        }
        return ver;
    }

    private static void getOtherSdkVersions() {
        StringBuilder channelSb = new StringBuilder(UniSp.getSpString(SP_NAME, LogBuilder.KEY_CHANNEL, ""));
        for (int i = 0; i != CHANNEL_NAME.length; i++) {
            try {
                Class<?> clazz = Class.forName(CLASS_NAME[i]);
                UniSdkUtils.d(TAG, "got class " + CLASS_NAME[i]);
                Method method = clazz.getDeclaredMethod(METHOD_NAME[i], new Class[0]);
                UniSdkUtils.d(TAG, "got method " + METHOD_NAME[i]);
                method.setAccessible(true);
                String ver = (String) method.invoke(null, new Object[0]);
                UniSdkUtils.d(TAG, "got version " + ver);
                if (!TextUtils.isEmpty(ver)) {
                    if (channelSb.length() != 0) {
                        channelSb.append(i.b);
                    }
                    channelSb.append(CHANNEL_NAME[i]);
                    UniSp.setSpString(SP_NAME, CHANNEL_NAME[i], "unisdk_ver", ver, false);
                }
            } catch (Throwable e) {
                UniSdkUtils.w(TAG, "getOtherSdkVersions: " + e);
            }
        }
        UniSp.setSpString(SP_NAME, LogBuilder.KEY_CHANNEL, channelSb.toString(), true);
    }

    private static String readExternalUrl(Context context) {
        String path = new File(context.getExternalFilesDir(null), "unipatch_url").getPath();
        String content = null;
        try {
            content = FileUtil.readFile(path, "UTF-8");
        } catch (Exception e) {
            UniSdkUtils.w(TAG, "readExternalUrl exception: " + e);
        }
        UniSdkUtils.d(TAG, "readExternalUrl:, path=" + path + ", content=" + content);
        return content;
    }

    private static void setUsbTxtPref(Context context) {
        String usb = null;
        try {
            String[] files = context.getAssets().list("");
            int len$ = files.length;
            int i$ = 0;
            while (true) {
                if (i$ < len$) {
                    String fileName = files[i$];
                    if (fileName == null || !fileName.startsWith("usb_") || !fileName.endsWith(".txt")) {
                        i$++;
                    } else {
                        usb = fileName;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (usb != null) {
                UniSp.setSpString(SP_NAME, "usb_txt", usb, true);
            }
        } catch (Throwable e) {
            UniSdkUtils.w(TAG, "" + e);
        }
    }
}

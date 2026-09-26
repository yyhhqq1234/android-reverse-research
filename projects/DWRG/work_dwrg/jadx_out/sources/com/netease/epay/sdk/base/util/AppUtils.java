package com.netease.epay.sdk.base.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.push.utils.PushConstants;

/* loaded from: classes.dex */
public class AppUtils {
    public static String getApplicationName(Context ctx) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        if (ctx == null) {
            return null;
        }
        try {
            packageManager = ctx.getApplicationContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(ctx.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
            }
        } catch (PackageManager.NameNotFoundException e2) {
            packageManager = null;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    public static String getAppVersionName(Context ctx) {
        PackageInfo packageInfo;
        if (ctx == null) {
            return null;
        }
        try {
            packageInfo = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 16384);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionName;
        }
        return null;
    }

    public static boolean isPackageInstalled(String packageName, Context context) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(packageName, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static int getAppVersionCode(String packageName, Context context) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 1);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    public static boolean isMiuiPhone() {
        String str = Build.MODEL;
        String str2 = Build.MANUFACTURER;
        return (!TextUtils.isEmpty(str2) && TextUtils.equals("xiaomi", str2.toLowerCase())) || (!TextUtils.isEmpty(str) && str.toLowerCase().contains("mi"));
    }

    public static void startAppDetailSettingPage(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(PushConstants.INTENT_PACKAGE_NAME, context.getPackageName(), null));
        context.startActivity(intent);
    }

    public static boolean isEpayApp(Context ctx) {
        return ctx != null && BaseConstants.EPAY_APP_PKG_NAME.equals(ctx.getPackageName());
    }
}

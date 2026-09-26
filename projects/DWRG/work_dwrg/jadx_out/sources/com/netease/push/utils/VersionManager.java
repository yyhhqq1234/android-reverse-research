package com.netease.push.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.util.List;

/* loaded from: classes.dex */
public class VersionManager {
    private static final String TAG = "NGPush_" + VersionManager.class.getSimpleName();

    /* loaded from: classes.dex */
    public static class VersionInfo {
        public Boolean mNeedNiepush;
        public String mPackageName;
        public int mVersionCode;

        private void patchPlaceholder() {
            Log.i(VersionManager.TAG, PatchPlaceholder.class.getSimpleName());
        }

        public VersionInfo(int versionCode, String packageName, Boolean needNiepush) {
            this.mVersionCode = 0;
            this.mPackageName = "";
            this.mNeedNiepush = false;
            this.mVersionCode = versionCode;
            this.mPackageName = packageName;
            this.mNeedNiepush = needNiepush;
        }
    }

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static VersionInfo getNewestInstallVersion(Context context) {
        boolean needNiepush = false;
        int newVerCode = 0;
        String newPackage = "";
        Intent serviceIntent = new Intent(PushConstants.SERVICE_ACTION2);
        List<ResolveInfo> packageList = context.getPackageManager().queryIntentServices(serviceIntent, 0);
        for (ResolveInfo resolveInfo : packageList) {
            String packageName = resolveInfo.serviceInfo.packageName;
            int verCode = PushSetting.getVerCode(context, packageName);
            String serviceType = PushSetting.getServiceType(context, packageName);
            Log.d(TAG, "packageName=" + packageName);
            Log.d(TAG, "verCode=" + verCode);
            Log.d(TAG, "serviceType=" + serviceType);
            if (PushConstants.NIEPUSH.equals(serviceType)) {
                needNiepush = true;
            }
            if (verCode >= newVerCode) {
                newVerCode = verCode;
                newPackage = packageName;
            }
        }
        if (newVerCode == 0) {
            return null;
        }
        return new VersionInfo(newVerCode, newPackage, needNiepush);
    }

    public static boolean isPackageInstalled(String packagename, Context context) {
        PackageManager pm = context.getPackageManager();
        try {
            pm.getPackageInfo(packagename, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}

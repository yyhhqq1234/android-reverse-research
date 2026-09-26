package com.netease.unisdk.gmbridge.device;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import com.netease.environment.config.SdkConstants;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.utils.SafeCastUtil;
import com.netease.unisdk.gmbridge.utils.StorageUtil;
import java.util.Locale;

/* loaded from: classes.dex */
public class DeviceUtil {
    public static DeviceInfo getDeviceInfo(Context context) {
        DeviceInfo deviceInfo = new DeviceInfo();
        deviceInfo.packageName = context.getPackageName();
        deviceInfo.appVersion = getVersion(context);
        deviceInfo.appName = getAppName(context);
        deviceInfo.deviceModel = Build.MODEL;
        deviceInfo.osVersion = Build.VERSION.RELEASE;
        deviceInfo.platform = SdkConstants.SYSTEM;
        deviceInfo.language = Locale.getDefault().getLanguage();
        deviceInfo.gmSdkVersion = UnisdkNtGmBridge.getVersion();
        deviceInfo.freePhoneSpace = SafeCastUtil.convert2UnitStr(StorageUtil.getAvailableInternalMemorySize());
        deviceInfo.totalPhoneSpace = SafeCastUtil.convert2UnitStr(StorageUtil.getTotalInternalMemorySize());
        deviceInfo.freeSDCardSpace = SafeCastUtil.convert2UnitStr(StorageUtil.getAvailableExternalMemorySize());
        deviceInfo.totalSDCardSpace = SafeCastUtil.convert2UnitStr(StorageUtil.getTotalExternalMemorySize());
        return deviceInfo;
    }

    public static String getVersion(Context context) {
        try {
            PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return pi.versionName;
        } catch (Exception e) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static String getAppName(Context context) {
        try {
            PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return pi.applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }
}

package im.yixin.sdk.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DevicesUtils {
    private static final String TAG = "DevicesUtils";
    private static String appPermissions = null;

    public static String collectDeviceInfo(Context ctx) {
        if (ctx == null) {
            return "";
        }
        StringBuffer sb = new StringBuffer();
        Map<String, String> infos = new HashMap<>();
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(ctx.getPackageName(), 1);
            if (pi != null) {
                String versionName = pi.versionName == null ? "null" : pi.versionName;
                String versionCode = new StringBuilder(String.valueOf(pi.versionCode)).toString();
                infos.put("versionName", versionName);
                infos.put("versionCode", versionCode);
            }
            Field[] fields = Build.class.getDeclaredFields();
            for (Field field : fields) {
                try {
                    field.setAccessible(true);
                    infos.put(field.getName(), field.get(null).toString());
                    Log.d(TAG, String.valueOf(field.getName()) + " : " + field.get(null));
                } catch (Exception e) {
                    SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "an error occured when collect crash info", e);
                }
            }
            for (Map.Entry<String, String> entry : infos.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if ("FINGERPRINT".equalsIgnoreCase(key) || "BOARD".equalsIgnoreCase(key) || "PRODUCT".equalsIgnoreCase(key) || "BRAND".equalsIgnoreCase(key) || "versionCode".equalsIgnoreCase(key) || "versionName".equalsIgnoreCase(key)) {
                    sb.append(String.valueOf(key) + "=" + value + " ");
                }
            }
        } catch (Exception e2) {
            SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "an error occured when collect package info", e2);
        }
        return sb.toString();
    }

    public static String getVersionName(Context ctx) {
        if (ctx == null) {
            return "";
        }
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(ctx.getPackageName(), 1);
            if (pi == null) {
                return "";
            }
            String versionName = pi.versionName == null ? "null" : pi.versionName;
            return versionName;
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "an error occured when getVersionName", e);
            return "";
        }
    }

    public static String getAppName(Context ctx) {
        if (ctx == null) {
            return "";
        }
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(ctx.getPackageName(), 1);
            if (pi == null) {
                return "";
            }
            String appName = pi.applicationInfo.loadLabel(pm).toString();
            return appName;
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "an error occured when getAppName", e);
            return "";
        }
    }

    public static String getPermissions(Context ctx) {
        if (ctx == null) {
            return "";
        }
        if (appPermissions != null) {
            return appPermissions;
        }
        StringBuilder sb = new StringBuilder();
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo packageInfo = pm.getPackageInfo(ctx.getPackageName(), 4096);
            if (packageInfo.requestedPermissions != null) {
                for (String permName : packageInfo.requestedPermissions) {
                    sb.append(permName).append(",");
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "getPermissions error", e);
        }
        appPermissions = sb.toString();
        return appPermissions;
    }

    public static boolean isAppInstalled(Context ctx, String packageName) {
        try {
            return ctx.getPackageManager().getPackageInfo(packageName, 1) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static int getVersionCode4OtherApp(Context ctx, String packageName) {
        int versionCode = 0;
        if (ctx == null) {
            return 0;
        }
        try {
            PackageInfo packageInfo = ctx.getPackageManager().getPackageInfo(packageName, 1);
            if (packageInfo != null) {
                versionCode = packageInfo.versionCode;
            }
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(DevicesUtils.class, "an error occured when getVersionCode", e);
        }
        return versionCode;
    }
}

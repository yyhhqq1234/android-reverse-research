package com.netease.push.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.app.ActivityCompat;
import android.text.TextUtils;
import android.util.Log;
import com.netease.inner.pushclient.NativePushData;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.json.JSONException;

/* loaded from: classes.dex */
public class PushSetting {
    private static final String FILE_NAME = "neteasepush";
    private static final String KEY_APPID = "appid";
    private static final String KEY_APPKEY = "appkey";
    private static final String KEY_FIRST_START = "firststart";
    private static final String KEY_PUSHNAMES = "pushnames";
    private static final String KEY_RECEIVETIME = "receivetime";
    private static final String KEY_REGISTRATION_ID = "registrationid";
    private static final String KEY_REPEAT_PROTECT = "repeatprotect";
    private static final String KEY_SENDER_ID = "senderid";
    private static final String KEY_SERVICE_TYPE = "servicetype";
    private static final String KEY_SOUND = "sound";
    private static final String KEY_VERCODE = "vercode";
    private static final String KEY_VIBRATE = "vibrate";
    public static final int PERMISSION_REQ_CODE = 0;
    private static final String SEPARATOR = ",";
    private static final String SYSTEM_CUR_NEED_NIEPUSH = "com.netease.push.curneedniepush";
    private static final String SYSTEM_CUR_PACKAGE = "com.netease.push.curpkg";
    private static final String SYSTEM_CUR_VERCODE = "com.netease.push.curvercode";
    private static final String SYSTEM_DEV_ID = "com.netease.push.devid";
    private static final String SYSTEM_HEAD = "com.netease.push.";
    private static final String SYSTEM_PACKAGES = "com.netease.push.packages";
    private static final String SYSTEM_PUSH_ADDR = "com.netease.push.pushaddr";
    private static final String TAG = "NGPush_" + PushSetting.class.getSimpleName();
    private static boolean write_setting = true;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static final void checkWriteLocation(Context context) {
        write_setting = true;
        if (context.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") != 0) {
            write_setting = false;
        }
        int targetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        int osVersion = Build.VERSION.SDK_INT;
        if (targetSdkVersion >= 23 && osVersion >= 23) {
            write_setting = false;
        }
        Log.i(TAG, "write_setting:" + write_setting);
    }

    private static void checkPermission(Context context) {
        if (!write_setting) {
            int targetSdkVersion = context.getApplicationInfo().targetSdkVersion;
            int osVersion = Build.VERSION.SDK_INT;
            if ((targetSdkVersion < 23 || osVersion < 23) && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                try {
                    ActivityCompat.requestPermissions((Activity) context, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
                    Log.i(TAG, "requestPermissions success");
                } catch (Exception e) {
                    Log.e(TAG, "requestPermissions failed:" + e.toString());
                    e.printStackTrace();
                }
            }
        }
    }

    private static boolean putString(Context context, String name, String value) {
        checkPermission(context);
        if (write_setting) {
            Log.d(TAG, "Settings.System.putString");
            boolean ret = Settings.System.putString(context.getContentResolver(), name, value);
            return ret;
        }
        Log.d(TAG, "FileUtils.write");
        boolean ret2 = FileUtils.write(name, value);
        return ret2;
    }

    private static String getString(Context context, String name, String def) {
        checkPermission(context);
        if (write_setting) {
            Log.d(TAG, "Settings.System.getString");
            String ret = Settings.System.getString(context.getContentResolver(), name);
            if (ret == null) {
                return def;
            }
            return ret;
        }
        Log.d(TAG, "FileUtils.read");
        return FileUtils.read(name, def);
    }

    private static boolean putInt(Context context, String name, int value) {
        checkPermission(context);
        if (write_setting) {
            Log.d(TAG, "Settings.System.putInt");
            boolean ret = Settings.System.putInt(context.getContentResolver(), name, value);
            return ret;
        }
        Log.d(TAG, "FileUtils.write");
        boolean ret2 = FileUtils.write(name, new StringBuilder(String.valueOf(value)).toString());
        return ret2;
    }

    private static int getInt(Context context, String name, int def) {
        checkPermission(context);
        if (write_setting) {
            Log.d(TAG, "Settings.System.getInt");
            int ret = Settings.System.getInt(context.getContentResolver(), name, def);
            return ret;
        }
        Log.d(TAG, "FileUtils.read");
        String strRet = FileUtils.read(name, new StringBuilder(String.valueOf(def)).toString());
        try {
            int ret2 = Integer.parseInt(strRet);
            return ret2;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            return def;
        }
    }

    private static final SharedPreferences getMultiProcessShared(Context context) {
        int targetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        int osVersion = Build.VERSION.SDK_INT;
        Log.d(TAG, "targetSdkVersion:" + targetSdkVersion);
        Log.d(TAG, "osVersion:" + osVersion);
        SharedPreferences sharedPreferences = null;
        Context appCtx = context.getApplicationContext();
        int mode = 4;
        if (targetSdkVersion < 11 || osVersion < 11) {
            mode = 0;
        }
        try {
            if (appCtx != null) {
                sharedPreferences = appCtx.getSharedPreferences(FILE_NAME, mode);
            } else {
                sharedPreferences = context.getSharedPreferences(FILE_NAME, mode);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
        return sharedPreferences;
    }

    public static final String getDevId(Context context) {
        Log.i(TAG, "getDevId");
        Log.d(TAG, "context:" + context);
        String devid = getString(context, SYSTEM_DEV_ID, getMultiProcessShared(context).getString(SYSTEM_DEV_ID, ""));
        return devid;
    }

    public static final void setDevId(Context context, String devid) {
        Log.i(TAG, "setDevId");
        Log.d(TAG, "context:" + context);
        Log.d(TAG, "devid:" + devid);
        getMultiProcessShared(context).edit().putString(SYSTEM_DEV_ID, devid).commit();
        putString(context, SYSTEM_DEV_ID, devid);
    }

    public static final String getPushAddr(Context context) {
        String pushAddr = getString(context, SYSTEM_PUSH_ADDR, getMultiProcessShared(context).getString(SYSTEM_PUSH_ADDR, ""));
        return pushAddr;
    }

    public static final void setPushAddr(Context context, String pushAddr) {
        getMultiProcessShared(context).edit().putString(SYSTEM_PUSH_ADDR, pushAddr).commit();
        if (!putString(context, SYSTEM_PUSH_ADDR, pushAddr)) {
            Log.e(TAG, "set push addr failed");
        }
    }

    public static final String getCurPkg(Context context) {
        String curPkgString = getString(context, SYSTEM_CUR_PACKAGE, getMultiProcessShared(context).getString(SYSTEM_CUR_PACKAGE, ""));
        return curPkgString;
    }

    public static final void setCurPkg(Context context, String packageName) {
        getMultiProcessShared(context).edit().putString(SYSTEM_CUR_PACKAGE, packageName).commit();
        putString(context, SYSTEM_CUR_PACKAGE, packageName);
    }

    public static final int getCurVerCode(Context context) {
        int verCode = getInt(context, SYSTEM_CUR_VERCODE, getMultiProcessShared(context).getInt(SYSTEM_CUR_VERCODE, 0));
        return verCode;
    }

    public static final void setCurVerCode(Context context, int verCode) {
        getMultiProcessShared(context).edit().putInt(SYSTEM_CUR_VERCODE, verCode).commit();
        putInt(context, SYSTEM_CUR_VERCODE, verCode);
    }

    public static final boolean getCurNeedNiepush(Context context) {
        return getInt(context, SYSTEM_CUR_NEED_NIEPUSH, getMultiProcessShared(context).getInt(SYSTEM_CUR_NEED_NIEPUSH, 0)) == 1;
    }

    public static final void setCurNeedNiepush(Context context, boolean bNeedNiepush) {
        getMultiProcessShared(context).edit().putInt(SYSTEM_CUR_NEED_NIEPUSH, bNeedNiepush ? 1 : 0).commit();
        putInt(context, SYSTEM_CUR_NEED_NIEPUSH, bNeedNiepush ? 1 : 0);
    }

    public static final Set<String> getPackages(Context context) {
        String packages = getMultiProcessShared(context).getString(SYSTEM_PACKAGES, "");
        String packagesName = getString(context, SYSTEM_PACKAGES, packages);
        Log.d(TAG, String.valueOf(context.getPackageName()) + " getPackages:" + packagesName + " packages:" + packages);
        if (TextUtils.isEmpty(packagesName)) {
            return null;
        }
        String[] packageNameStrings = TextUtils.split(packagesName, ",");
        return new HashSet(Arrays.asList(packageNameStrings));
    }

    public static final void setPackages(Context context, Set<String> packagesSet) {
        String[] packageNameStrings = new String[packagesSet.size()];
        packagesSet.toArray(packageNameStrings);
        String sPackages = TextUtils.join(",", packageNameStrings);
        getMultiProcessShared(context).edit().putString(SYSTEM_PACKAGES, sPackages).commit();
        putString(context, SYSTEM_PACKAGES, sPackages);
        Log.d(TAG, String.valueOf(context.getPackageName()) + " setPackages:" + sPackages);
    }

    private static final SharedPreferences getFileShared(Context context, String packageName) {
        SharedPreferences sharedPreferences = null;
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                Log.d(TAG, "write external storage");
                SharedPreferences sharedPreferences2 = new MySharedPreferences(packageName);
                sharedPreferences = sharedPreferences2;
            } else {
                sharedPreferences = context.getSharedPreferences(FILE_NAME, 0);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
        return sharedPreferences;
    }

    public static final String getServiceType(Context context, String packageName) {
        String serviceType;
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = getFileShared(context, packageName);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            serviceType = PushConstants.NIEPUSH;
        }
        if (sharedPreferences == null) {
            return PushConstants.NIEPUSH;
        }
        serviceType = sharedPreferences.getString(KEY_SERVICE_TYPE, PushConstants.NIEPUSH);
        return serviceType;
    }

    public static final void setServiceType(Context context, String type) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(KEY_SERVICE_TYPE, type).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final int getVerCode(Context context, String packageName) {
        int verCode;
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = getFileShared(context, packageName);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            verCode = 0;
        }
        if (sharedPreferences == null) {
            return 0;
        }
        verCode = sharedPreferences.getInt(KEY_VERCODE, 0);
        return verCode;
    }

    public static final void setVerCode(Context context, int verCode) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putInt(KEY_VERCODE, verCode).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final void setFirstStart(Context context, String packageName, boolean flag) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, packageName);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean(KEY_FIRST_START, flag).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final void setSound(Context context, boolean flag) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean(KEY_SOUND, flag).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final void setVibrate(Context context, boolean flag) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean(KEY_VIBRATE, flag).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final void setRepeatProtect(Context context, boolean flag) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean(KEY_REPEAT_PROTECT, flag).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final long getReceiveTime(Context context) {
        long recvTime;
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = getFileShared(context, context.getPackageName());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            recvTime = 0;
        }
        if (sharedPreferences == null) {
            return 0L;
        }
        recvTime = sharedPreferences.getLong(KEY_RECEIVETIME, 0L);
        return recvTime;
    }

    public static final void setReceiveTime(Context context, long receiveTime) {
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putLong(KEY_RECEIVETIME, receiveTime).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final AppInfo getAppInfo(Context ctx) {
        if (ctx != null) {
            return getAppInfo(ctx, ctx.getPackageName());
        }
        return null;
    }

    public static final AppInfo getAppInfo(Context context, String packageName) {
        AppInfo appInfo = new AppInfo(packageName);
        try {
            SharedPreferences sharedPreferences = getFileShared(context, packageName);
            if (sharedPreferences != null) {
                appInfo.mbEnableSound = sharedPreferences.getBoolean(KEY_SOUND, false);
                appInfo.mbEnableVibrate = sharedPreferences.getBoolean(KEY_VIBRATE, true);
                appInfo.mLastReceiveTime = sharedPreferences.getLong(KEY_RECEIVETIME, 0L);
                appInfo.mbRepeatProtect = sharedPreferences.getBoolean(KEY_REPEAT_PROTECT, false);
                appInfo.mbFirstStart = sharedPreferences.getBoolean(KEY_FIRST_START, true);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
        return appInfo;
    }

    /* JADX WARN: Generic types in debug info not equals: java.lang.Object != java.util.Set<java.lang.String> */
    public static final Set<String> getNativePushNames(Context context) {
        Set<String> pushSet;
        SharedPreferences sharedPreferences;
        Set<String> pushSet2 = new HashSet<>();
        try {
            sharedPreferences = getFileShared(context, context.getPackageName());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            pushSet = new HashSet<>();
        }
        if (sharedPreferences == null) {
            return pushSet2;
        }
        String pushNames = sharedPreferences.getString(KEY_PUSHNAMES, "");
        if (TextUtils.isEmpty(pushNames)) {
            return pushSet2;
        }
        String[] pushNameStrings = TextUtils.split(pushNames, ",");
        pushSet = new TreeSet<>(Arrays.asList(pushNameStrings));
        return pushSet;
    }

    public static final void setNativePushNames(Context context, Set<String> pushSet) {
        Log.d(TAG, "setNativePushNames, pushSet:" + pushSet);
        try {
            String[] pushNameStrings = new String[pushSet.size()];
            pushSet.toArray(pushNameStrings);
            String sPushNames = TextUtils.join(",", pushNameStrings);
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(KEY_PUSHNAMES, sPushNames).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final void rmNativePushName(Context context, String pushName) {
        Log.d(TAG, "rmNativePushNames, pushName:" + pushName);
        Set<String> pushSet = getNativePushNames(context);
        if (pushSet.contains(pushName)) {
            pushSet.remove(pushName);
            delNativeNotification(context, pushName);
            setNativePushNames(context, pushSet);
        }
    }

    public static final void rmAllNativePushNames(Context context) {
        Log.d(TAG, "rmAllNativePushNames");
        Set<String> pushSet = getNativePushNames(context);
        for (String pushName : pushSet) {
            delNativeNotification(context, pushName);
        }
        pushSet.clear();
        setNativePushNames(context, pushSet);
    }

    public static final boolean setNativeNotification(Context context, NativePushData nativePushData) {
        Log.i(TAG, "setNativeNotification, pushName:" + nativePushData.getPushName());
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences == null) {
                return false;
            }
            String data = nativePushData.writeToJsonString();
            sharedPreferences.edit().putString(nativePushData.getPushName(), data).commit();
            return true;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public static final void delNativeNotification(Context context, String pushName) {
        Log.i(TAG, "delNativeNotification, pushName:" + pushName);
        try {
            SharedPreferences sharedPreferences = getFileShared(context, context.getPackageName());
            if (sharedPreferences != null) {
                sharedPreferences.edit().remove(pushName).commit();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public static final NativePushData getNativeNotification(Context context, String pushName) {
        SharedPreferences sharedPreferences;
        NativePushData nativePushData = null;
        try {
            sharedPreferences = getFileShared(context, context.getPackageName());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
        }
        if (sharedPreferences == null) {
            return null;
        }
        String data = sharedPreferences.getString(pushName, "");
        if (TextUtils.isEmpty(data)) {
            return null;
        }
        nativePushData = NativePushData.readFromJsonString(pushName, data);
        return nativePushData;
    }

    public static final List<NativePushData> getAllOtherNativeNotifications(Context context, String packageName) {
        SharedPreferences sharedPreferences;
        List<NativePushData> nativePushDatas = null;
        try {
            sharedPreferences = getFileShared(context, context.getPackageName());
        } catch (Exception e) {
            e = e;
        }
        if (sharedPreferences == null) {
            return null;
        }
        List<NativePushData> nativePushDatas2 = new ArrayList<>();
        try {
            Set<String> pushSet = getNativePushNames(context);
            Log.d(TAG, "getNativePushNames, pushSet:" + pushSet);
            for (String pushName : pushSet) {
                String data = sharedPreferences.getString(pushName, "");
                if (!TextUtils.isEmpty(data)) {
                    NativePushData nativePushData = null;
                    try {
                        nativePushData = NativePushData.readFromJsonString(pushName, data);
                    } catch (JSONException e2) {
                        Log.e(TAG, e2.getMessage());
                        e2.printStackTrace();
                    }
                    if (nativePushData != null) {
                        nativePushDatas2.add(nativePushData);
                    }
                }
            }
            nativePushDatas = nativePushDatas2;
        } catch (Exception e3) {
            e = e3;
            nativePushDatas = nativePushDatas2;
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            return nativePushDatas;
        }
        return nativePushDatas;
    }

    private static final SharedPreferences getCurShared(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME, 0);
        return sharedPreferences;
    }

    public static final String getSenderID(Context context, String serviceType) {
        return getCurShared(context).getString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + KEY_SENDER_ID, "");
    }

    public static final void setSenderID(Context context, String serviceType, String senderID) {
        getCurShared(context).edit().putString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + KEY_SENDER_ID, senderID).commit();
    }

    public static final String getAppID(Context context, String serviceType) {
        return getCurShared(context).getString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + "appid", "");
    }

    public static final void setAppID(Context context, String serviceType, String appID) {
        getCurShared(context).edit().putString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + "appid", appID).commit();
    }

    public static final String getAppKey(Context context, String serviceType) {
        return getCurShared(context).getString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + "appkey", "");
    }

    public static final void setAppKey(Context context, String serviceType, String appKey) {
        getCurShared(context).edit().putString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + "appkey", appKey).commit();
    }

    public static final String getRegistrationID(Context context, String serviceType) {
        return getCurShared(context).getString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + KEY_REGISTRATION_ID, "");
    }

    public static final void setRegistrationID(Context context, String serviceType, String regid) {
        getCurShared(context).edit().putString(String.valueOf(serviceType) + PushConstants.KEY_SEPARATOR + KEY_REGISTRATION_ID, regid).commit();
    }
}

package com.netease.pushclient;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.DeviceInfo;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class PushManager {
    private static PushManagerCallback s_callback;
    private static final String TAG = "NGPush_" + PushManager.class.getSimpleName();
    public static Context s_context = null;
    private static boolean s_multiPackSupport = true;
    private static List<Pair<String, Boolean>> s_permissions = new ArrayList();
    private static boolean s_initialized = false;
    private static int PERMISSION_REQ_CODE = Code.UNKNOWN_REASON;

    /* loaded from: classes.dex */
    public interface PushManagerCallback {
        void onInitFailed(String str);

        void onInitSuccess();
    }

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static void init(Context context, PushManagerCallback callback) {
        Log.i(TAG, "init, context:" + context);
        Log.d(TAG, "sdkVersion:" + getSdkVersion());
        Log.d(TAG, "verCode:18");
        s_context = context;
        s_callback = callback;
        Intent serviceIntent = new Intent(PushConstants.SERVICE_ACTION2);
        List<ResolveInfo> packageList = context.getPackageManager().queryIntentServices(serviceIntent, 0);
        boolean correctManifest = false;
        String packageThis = context.getPackageName();
        Iterator<ResolveInfo> it = packageList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ResolveInfo resolveInfo = it.next();
            String packageName = resolveInfo.serviceInfo.packageName;
            if (packageThis.equalsIgnoreCase(packageName)) {
                correctManifest = true;
                break;
            }
        }
        if (!correctManifest) {
            Log.e(TAG, "The intent-filter for service com.netease.pushservice.PushService in AndroidManifest should be:com.netease.push.action.service.PUSHSERVICE2");
            s_callback.onInitFailed("The intent-filter for service com.netease.pushservice.PushService in AndroidManifest should be:com.netease.push.action.service.PUSHSERVICE2");
            throw new RuntimeException("The intent-filter for service com.netease.pushservice.PushService in AndroidManifest should be:com.netease.push.action.service.PUSHSERVICE2");
        }
        int targetSdkVersion = s_context.getApplicationInfo().targetSdkVersion;
        int osVersion = Build.VERSION.SDK_INT;
        Log.d(TAG, "targetSdkVersion:" + targetSdkVersion);
        Log.d(TAG, "osVersion:" + osVersion);
        if (targetSdkVersion >= 23 && osVersion >= 23) {
            checkPermissions();
        } else {
            initImpl();
            s_callback.onInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initImpl() {
        Log.i(TAG, "initImpl");
        PushSetting.checkWriteLocation(s_context);
        com.netease.inner.pushclient.PushManager.getInstance().init(s_context);
        NativePushManager.init(s_context);
        s_initialized = true;
        checkPushServiceType(s_context);
    }

    public static Context getContext() {
        return s_context;
    }

    public static void enableMultiPackSupport(boolean v) {
        s_multiPackSupport = v;
    }

    public static String getSdkVersion() {
        return PushConstants.SDK_VERSION;
    }

    private static void checkPermissions() {
        Log.i(TAG, "checkPermissions");
        s_permissions.add(Pair.create("android.permission.WRITE_EXTERNAL_STORAGE", false));
        String permissionsToRequest = "";
        try {
            ApplicationInfo ai = s_context.getPackageManager().getApplicationInfo(s_context.getPackageName(), 128);
            Bundle bundle = ai.metaData;
            if (bundle != null) {
                permissionsToRequest = bundle.getString("permissionsToRequest");
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to load meta-data permissionsToRequest: " + e.getMessage());
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(permissionsToRequest)) {
            String[] arr = permissionsToRequest.split(",");
            for (String p : arr) {
                if (!TextUtils.isEmpty(p)) {
                    if (!p.startsWith("-")) {
                        s_permissions.add(Pair.create(p, false));
                    } else {
                        String _p = p.substring(1);
                        int i = 0;
                        while (i < s_permissions.size()) {
                            Pair<String, Boolean> pair = s_permissions.get(i);
                            if (_p.equalsIgnoreCase((String) pair.first)) {
                                s_permissions.remove(i);
                                i--;
                            }
                            i++;
                        }
                    }
                }
            }
        }
        requestPermission();
    }

    private static void requestPermission() {
        Log.i(TAG, "requestPermission");
        Log.d(TAG, "s_context:" + s_context);
        String permission = "";
        Iterator<Pair<String, Boolean>> it = s_permissions.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Pair<String, Boolean> pair = it.next();
            if (!((Boolean) pair.second).booleanValue()) {
                permission = (String) pair.first;
                break;
            }
        }
        Log.d(TAG, "permission:" + permission);
        if (TextUtils.isEmpty(permission)) {
            Log.e(TAG, "onRequestPermissionsGranted over, s_context:" + s_context);
            if (s_context != null) {
                initImpl();
                s_callback.onInitSuccess();
                return;
            }
            return;
        }
        if (s_context.checkCallingOrSelfPermission(permission) != 0) {
            try {
                ActivityCompat.requestPermissions((Activity) s_context, new String[]{permission}, PERMISSION_REQ_CODE);
                Log.i(TAG, "requestPermissions " + permission + " sent");
                return;
            } catch (Exception e) {
                Log.e(TAG, "requestPermissions " + permission + " failed:" + e.toString());
                e.printStackTrace();
                onRequestPermissionsGranted(PERMISSION_REQ_CODE, permission, true);
                return;
            }
        }
        Log.d(TAG, "has been granted permission:" + permission);
        onRequestPermissionsGranted(PERMISSION_REQ_CODE, permission, true);
    }

    public static void onRequestPermissionsResult(int reqCode, String[] permissions, int[] grantResults) {
        Log.i(TAG, "onRequestPermissionsResult");
        Log.d(TAG, "s_context:" + s_context);
        Log.d(TAG, "reqCode:" + reqCode);
        Log.d(TAG, "permissions:" + (permissions.length > 0 ? permissions[0] : ""));
        Log.d(TAG, "grantResults:" + (grantResults.length > 0 ? Integer.valueOf(grantResults[0]) : ""));
        if (s_context != null && grantResults.length > 0 && permissions.length > 0) {
            boolean granted = grantResults[0] == 0;
            Log.d(TAG, "permission granted for " + permissions[0] + Const.RESP_CONTENT_SPIT2 + granted);
            onRequestPermissionsGranted(reqCode, permissions[0], granted);
        }
    }

    private static void onRequestPermissionsGranted(int reqCode, String permission, boolean granted) {
        int resIDTitle;
        int resIDMsg;
        int resIDOk;
        Log.i(TAG, "onRequestPermissionsGranted");
        Log.d(TAG, "reqCode:" + reqCode);
        Log.d(TAG, "permission:" + permission);
        Log.d(TAG, "granted:" + granted);
        Log.d(TAG, "s_context:" + s_context);
        Log.d(TAG, "s_initialized:" + s_initialized);
        if (!granted) {
            Log.e(TAG, "onRequestPermissionsGranted refused, s_context:" + s_context);
            if (PERMISSION_REQ_CODE == reqCode && s_context != null && !s_initialized) {
                String title = "";
                String msg = "";
                String ok = "OK";
                try {
                    resIDTitle = s_context.getResources().getIdentifier("ngpush_permission_alert_title", ResIdReader.RES_TYPE_STRING, s_context.getPackageName());
                    resIDMsg = s_context.getResources().getIdentifier("ngpush_permission_alert_msg", ResIdReader.RES_TYPE_STRING, s_context.getPackageName());
                    resIDOk = s_context.getResources().getIdentifier("ngpush_permission_alert_ok", ResIdReader.RES_TYPE_STRING, s_context.getPackageName());
                } catch (Exception e) {
                    Log.e(TAG, e.getMessage());
                    e.printStackTrace();
                }
                if (resIDTitle <= 0 || resIDMsg <= 0) {
                    initImpl();
                    s_callback.onInitSuccess();
                    return;
                }
                title = s_context.getResources().getString(resIDTitle);
                msg = s_context.getResources().getString(resIDMsg);
                if (resIDOk > 0) {
                    ok = s_context.getResources().getString(resIDOk);
                    if (TextUtils.isEmpty(ok)) {
                        ok = "OK";
                    }
                }
                if (!TextUtils.isEmpty(title) && !TextUtils.isEmpty(msg)) {
                    AlertDialog alertDialog = new AlertDialog.Builder(s_context).create();
                    alertDialog.setTitle(title);
                    alertDialog.setMessage(msg);
                    alertDialog.setButton(-1, ok, new DialogInterface.OnClickListener() { // from class: com.netease.pushclient.PushManager.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            Log.d(PushManager.TAG, "permission alert dialog clicked");
                            dialog.dismiss();
                            PushManager.initImpl();
                            PushManager.s_callback.onInitSuccess();
                        }
                    });
                    alertDialog.show();
                    return;
                }
                initImpl();
                s_callback.onInitSuccess();
                return;
            }
            return;
        }
        for (int i = 0; i < s_permissions.size(); i++) {
            Pair<String, Boolean> pair = s_permissions.get(i);
            if (permission.equalsIgnoreCase((String) pair.first)) {
                s_permissions.set(i, Pair.create((String) pair.first, true));
            }
        }
        requestPermission();
    }

    public static void startService() {
        Log.i(TAG, "startService");
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().startService(s_context);
        }
    }

    public static void stopService() {
        Log.i(TAG, "stopService");
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().stopService(s_context);
        }
    }

    public static String getDevId(Context ctx) {
        Log.i(TAG, "getDevId");
        Log.d(TAG, "ctx:" + ctx);
        Log.d(TAG, "s_initialized:" + s_initialized);
        String type = getServiceType(ctx);
        Log.d(TAG, "service type:" + type);
        String packageName = ctx.getApplicationInfo().packageName;
        if (PushConstants.NIEPUSH.equals(type)) {
            String devid = com.netease.inner.pushclient.PushManager.getInstance().getDevId(ctx);
            if (!TextUtils.isEmpty(devid) && s_multiPackSupport) {
                devid = String.valueOf(devid) + "," + PushConstants.NIEPUSH + "," + packageName;
            }
            Log.e(TAG, "niepush devid:" + devid);
            Log.d(TAG, "s_multiPackSupport:" + s_multiPackSupport);
            return devid;
        }
        if (PushConstants.GCM.equals(type)) {
            String devid2 = com.netease.inner.pushclient.PushManager.getInstance().getRegistrationID(ctx, type);
            Log.e(TAG, "gcm regid:" + devid2);
            return devid2;
        }
        if (PushConstants.MIUI.equals(type)) {
            String devid3 = com.netease.inner.pushclient.PushManager.getInstance().getRegistrationID(ctx, type);
            if (!TextUtils.isEmpty(devid3)) {
                devid3 = String.valueOf(devid3) + "," + PushConstants.MIUI + "," + packageName;
            }
            Log.e(TAG, "miui devid:" + devid3);
            return devid3;
        }
        if (!PushConstants.HUAWEI.equals(type)) {
            return "";
        }
        String devid4 = com.netease.inner.pushclient.PushManager.getInstance().getRegistrationID(ctx, type);
        if (!TextUtils.isEmpty(devid4)) {
            devid4 = String.valueOf(devid4) + "," + PushConstants.HUAWEI + "," + packageName;
        }
        Log.e(TAG, "huawei devid:" + devid4);
        return devid4;
    }

    public static String getDevId() {
        return getDevId(s_context);
    }

    public static void enableSound(boolean flag) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().enableSound(s_context, flag);
        }
    }

    public static void enableVibrate(boolean flag) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().enableVibrate(s_context, flag);
        }
    }

    public static void enableRepeatProtect(boolean flag) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().enableRepeatProtect(s_context, flag);
        }
    }

    public static void setSenderID(String serviceType, String senderID) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().setSenderID(s_context, serviceType, senderID);
        }
    }

    public static String getSenderID(String serviceType) {
        return s_initialized ? com.netease.inner.pushclient.PushManager.getInstance().getSenderID(s_context, serviceType) : "";
    }

    public static void setAppID(String serviceType, String appID) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().setAppID(s_context, serviceType, appID);
        }
    }

    public static String getAppID(String serviceType) {
        return s_initialized ? com.netease.inner.pushclient.PushManager.getInstance().getAppID(s_context, serviceType) : "";
    }

    public static void setAppKey(String serviceType, String appKey) {
        if (s_initialized) {
            com.netease.inner.pushclient.PushManager.getInstance().setAppKey(s_context, serviceType, appKey);
        }
    }

    public static String getAppKey(String serviceType) {
        return s_initialized ? com.netease.inner.pushclient.PushManager.getInstance().getAppKey(s_context, serviceType) : "";
    }

    private static String getServiceType(Context ctx) {
        return com.netease.inner.pushclient.PushManager.getInstance().getServiceType(ctx);
    }

    private static void setServiceType(Context ctx, String type) {
        Log.i(TAG, "setServiceType");
        Log.d(TAG, "ctx:" + ctx);
        Log.e(TAG, "type:" + type);
        com.netease.inner.pushclient.PushManager.getInstance().setServiceType(ctx, type);
    }

    private static void checkPushServiceType(Context ctx) {
        Log.i(TAG, "checkPushServiceType");
        readConfig(ctx);
        if (DeviceInfo.isMIUI(ctx)) {
            String appid = getAppID(PushConstants.MIUI);
            String appkey = getAppKey(PushConstants.MIUI);
            boolean jarExist = true;
            try {
                Class.forName("com.xiaomi.push.service.XMPushService");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                jarExist = false;
            }
            if (!TextUtils.isEmpty(appid) && !TextUtils.isEmpty(appkey) && jarExist) {
                setServiceType(ctx, PushConstants.MIUI);
                return;
            }
        }
        if (DeviceInfo.isHuawei(ctx)) {
            String appid2 = getAppID(PushConstants.HUAWEI);
            boolean jarExist2 = true;
            try {
                Class.forName("com.huawei.android.pushagent.PushEventReceiver");
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
                jarExist2 = false;
            }
            if (!TextUtils.isEmpty(appid2) && jarExist2) {
                setServiceType(ctx, PushConstants.HUAWEI);
                return;
            }
        }
        String senderid = getSenderID(PushConstants.GCM);
        boolean jarExist3 = true;
        try {
            Class.forName("com.google.android.gms.gcm.GoogleCloudMessaging");
        } catch (ClassNotFoundException e3) {
            e3.printStackTrace();
            jarExist3 = false;
        }
        if (!TextUtils.isEmpty(senderid) && jarExist3) {
            setServiceType(ctx, PushConstants.GCM);
        } else {
            setServiceType(ctx, PushConstants.NIEPUSH);
        }
    }

    private static void readConfig(Context ctx) {
        setAppID(PushConstants.MIUI, "");
        setAppID(PushConstants.HUAWEI, "");
        setAppKey(PushConstants.MIUI, "");
        setAppKey(PushConstants.HUAWEI, "");
        setSenderID(PushConstants.GCM, "");
        String packagename = ctx.getPackageName();
        String fConf = String.valueOf(packagename) + ".ngpush.miui";
        String jsonStr = null;
        try {
            InputStream is = ctx.getAssets().open(fConf, 3);
            int count = is.available();
            if (count > 0) {
                byte[] data = new byte[count];
                is.read(data);
                jsonStr = new String(data, "UTF-8");
            }
        } catch (Exception e) {
            Log.e(TAG, "config file not found:" + fConf + ", err:" + e);
            e.printStackTrace();
        }
        if (jsonStr != null) {
            try {
                JSONObject jsonObj = new JSONObject(jsonStr);
                String appid = jsonObj.optString("APPID");
                if (!TextUtils.isEmpty(appid)) {
                    setAppID(PushConstants.MIUI, appid);
                }
                String appkey = jsonObj.optString("APPKEY");
                if (!TextUtils.isEmpty(appkey)) {
                    setAppKey(PushConstants.MIUI, appkey);
                }
            } catch (Exception e2) {
                Log.e(TAG, "parse config file:" + fConf + ", err:" + e2);
                e2.printStackTrace();
            }
        }
        String fConf2 = String.valueOf(packagename) + ".ngpush.huawei";
        String jsonStr2 = null;
        try {
            InputStream is2 = ctx.getAssets().open(fConf2, 3);
            int count2 = is2.available();
            if (count2 > 0) {
                byte[] data2 = new byte[count2];
                is2.read(data2);
                jsonStr2 = new String(data2, "UTF-8");
            }
        } catch (Exception e3) {
            Log.e(TAG, "config file not found:" + fConf2 + ", err:" + e3);
            e3.printStackTrace();
        }
        if (jsonStr2 != null) {
            try {
                String appid2 = new JSONObject(jsonStr2).optString("APPID");
                if (!TextUtils.isEmpty(appid2)) {
                    setAppID(PushConstants.HUAWEI, appid2);
                }
            } catch (Exception e4) {
                Log.e(TAG, "parse config file:" + fConf2 + ", err:" + e4);
                e4.printStackTrace();
            }
        }
        String fConf3 = String.valueOf(packagename) + ".ngpush.gcm";
        String jsonStr3 = null;
        try {
            InputStream is3 = ctx.getAssets().open(fConf3, 3);
            int count3 = is3.available();
            if (count3 > 0) {
                byte[] data3 = new byte[count3];
                is3.read(data3);
                jsonStr3 = new String(data3, "UTF-8");
            }
        } catch (Exception e5) {
            Log.e(TAG, "config file not found:" + fConf3);
            e5.printStackTrace();
        }
        if (jsonStr3 != null) {
            try {
                String senderid = new JSONObject(jsonStr3).optString("SENDERID");
                if (!TextUtils.isEmpty(senderid)) {
                    setSenderID(PushConstants.GCM, senderid);
                }
            } catch (Exception e6) {
                Log.e(TAG, "parse config file:" + fConf3 + ", err:" + e6);
                e6.printStackTrace();
            }
        }
    }

    private static boolean hasPermissionDeclared(Context ctx, String permission) {
        PackageManager pm = ctx.getPackageManager();
        try {
            PackageInfo packageInfo = pm.getPackageInfo(ctx.getPackageName(), 4096);
            String[] requestedPermissions = null;
            if (packageInfo != null) {
                requestedPermissions = packageInfo.requestedPermissions;
            }
            if (requestedPermissions == null || requestedPermissions.length <= 0) {
                return false;
            }
            for (String per : requestedPermissions) {
                if (permission.equalsIgnoreCase(per)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, "hasPermissionDeclared exception:" + e.toString());
            e.printStackTrace();
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class TaskSubmitter {
        final ExecutorService m_executorService = Executors.newSingleThreadExecutor();

        public Future submit(Runnable task) {
            if (this.m_executorService.isTerminated() || this.m_executorService.isShutdown() || task == null) {
                return null;
            }
            Future result = this.m_executorService.submit(task);
            return result;
        }

        public void shutdown() {
            this.m_executorService.shutdown();
        }
    }
}

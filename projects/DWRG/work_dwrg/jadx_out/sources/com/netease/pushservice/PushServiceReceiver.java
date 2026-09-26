package com.netease.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import com.netease.push.utils.VersionManager;
import java.util.Set;

/* loaded from: classes.dex */
public class PushServiceReceiver extends BroadcastReceiver {
    private static final String TAG = "NGPush_" + PushServiceReceiver.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.e(TAG, "onReceive");
        Log.d(TAG, "intent:" + intent);
        if (intent != null) {
            String action = intent.getAction();
            String packageName = context.getPackageName();
            PushSetting.checkWriteLocation(context);
            String curPkg = PushSetting.getCurPkg(context);
            int curVerCode = PushSetting.getCurVerCode(context);
            Log.d(TAG, "action:" + action);
            Log.i(TAG, "contextpkg:" + packageName);
            Log.i(TAG, "runningpkg:" + curPkg);
            Log.d(TAG, "runningver:" + curVerCode);
            String str = curPkg;
            if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                Log.d(TAG, "bReplace:" + booleanExtra);
                str = curPkg;
                if (!booleanExtra) {
                    String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                    Log.d(TAG, "removePackageName:" + schemeSpecificPart);
                    if (schemeSpecificPart.equals(curPkg)) {
                        PushSetting.setCurPkg(context, "");
                        PushSetting.setCurVerCode(context, 0);
                    }
                    if (packageName.equals(curPkg)) {
                        VersionManager.VersionInfo newestInstallVersion = VersionManager.getNewestInstallVersion(context);
                        if (newestInstallVersion != null && !TextUtils.isEmpty(newestInstallVersion.mPackageName)) {
                            Log.d(TAG, "mNeedNiepush:" + newestInstallVersion.mNeedNiepush);
                            PushSetting.setCurNeedNiepush(context, newestInstallVersion.mNeedNiepush.booleanValue());
                        }
                        Intent intent2 = new Intent();
                        intent2.setAction(PushConstants.SERVICE_ACTION_METHOD);
                        intent2.putExtra("method", PushConstants.SERVICE_METHOD_REMOVEAPP);
                        intent2.putExtra(PushConstants.INTENT_PACKAGE_NAME, schemeSpecificPart);
                        intent2.setPackage(curPkg);
                        Log.d(TAG, "SERVICE_METHOD_REMOVEAPP");
                        PushServiceHelper.startPushService(context, intent2);
                        return;
                    }
                    boolean equals = curPkg.equals(schemeSpecificPart);
                    str = curPkg;
                    if (equals) {
                        String str2 = packageName;
                        int i = 18;
                        boolean z = false;
                        VersionManager.VersionInfo newestInstallVersion2 = VersionManager.getNewestInstallVersion(context);
                        if (newestInstallVersion2 != null && !TextUtils.isEmpty(newestInstallVersion2.mPackageName)) {
                            str2 = newestInstallVersion2.mPackageName;
                            i = newestInstallVersion2.mVersionCode;
                            z = newestInstallVersion2.mNeedNiepush.booleanValue();
                            Log.d(TAG, "pkgToStart:" + str2);
                            Log.d(TAG, "verToStart:" + i);
                            Log.d(TAG, "needNiepush:" + z);
                        }
                        str = curPkg;
                        if (packageName.equals(str2)) {
                            PushSetting.setCurPkg(context, str2);
                            PushSetting.setCurVerCode(context, i);
                            PushSetting.setCurNeedNiepush(context, z);
                            String str3 = str2;
                            Log.i(TAG, "runningpkg:" + str3);
                            Log.i(TAG, "runningver:" + i);
                            Set<String> packages = PushSetting.getPackages(context);
                            if (packages != null) {
                                packages.remove(schemeSpecificPart);
                                PushSetting.setPackages(context, packages);
                            }
                            Intent createServiceIntent = PushServiceHelper.createServiceIntent();
                            createServiceIntent.setPackage(str2);
                            Log.d(TAG, "PACKAGE_REMOVED, startService");
                            context.startService(createServiceIntent);
                            str = str3;
                        }
                    }
                }
            }
            boolean z2 = false;
            if (PushConstants.SERVICE_ACTION_METHOD.equals(action)) {
                String stringExtra = intent.getStringExtra("method");
                if (PushConstants.SERVICE_METHOD_STOP.equals(stringExtra) || PushConstants.SERVICE_METHOD_RESTART.equals(stringExtra)) {
                    z2 = true;
                }
            }
            if (!packageName.equals(str) && !z2 && VersionManager.isPackageInstalled(str, context)) {
                Log.w(TAG, "service of latest version is already running");
                return;
            }
            if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                Intent createServiceIntent2 = PushServiceHelper.createServiceIntent();
                createServiceIntent2.setPackage(str);
                Log.i(TAG, "BOOT_COMPLETED, startService");
                context.startService(createServiceIntent2);
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || "android.net.wifi.STATE_CHANGE".equals(action)) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                String str4 = null;
                if (activeNetworkInfo != null) {
                    Log.d(TAG, "Network Type:" + activeNetworkInfo.getTypeName());
                    Log.d(TAG, "Network State:" + activeNetworkInfo.getState());
                    if (activeNetworkInfo.isConnected()) {
                        Log.i(TAG, "Network change connected");
                        str4 = PushConstants.SERVICE_METHOD_NETWORKCONNECT;
                    } else {
                        Log.i(TAG, "Network change disconnected");
                    }
                } else {
                    Log.i(TAG, "Network change unavailable");
                    str4 = PushConstants.SERVICE_METHOD_NETWORKDISCONNECT;
                }
                if (str4 != null) {
                    Intent createActiveMethodIntent = PushServiceHelper.createActiveMethodIntent();
                    createActiveMethodIntent.putExtra("method", str4);
                    createActiveMethodIntent.setPackage(str);
                    Log.d(TAG, "CONNECTIVITY_CHANGE, startService");
                    Log.d(TAG, "intentMethodName:" + str4);
                    PushServiceHelper.startActivePushService(context, createActiveMethodIntent);
                    return;
                }
                return;
            }
            if (PushConstants.SERVICE_ACTION_METHOD.equals(action)) {
                Log.d(TAG, "SERVICE_ACTION_METHOD, startPushService");
                PushServiceHelper.startPushService(context, intent);
            } else {
                Log.d(TAG, "action other, startPushService");
                PushServiceHelper.startPushService(context, intent);
            }
        }
    }
}

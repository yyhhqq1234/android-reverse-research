package com.netease.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushSetting;
import com.netease.push.utils.VersionManager;

/* loaded from: classes.dex */
public class TimeTickReceiver extends BroadcastReceiver {
    private static final String TAG = "NGPush_" + TimeTickReceiver.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d(TAG, "onReceive");
        if (intent != null) {
            String action = intent.getAction();
            String contextpkg = context.getPackageName();
            String runningpkg = PushSetting.getCurPkg(context);
            Log.d(TAG, "action:" + action);
            Log.d(TAG, "contextpkg:" + contextpkg);
            Log.d(TAG, "runningpkg:" + runningpkg);
            VersionManager.VersionInfo versionInfo = VersionManager.getNewestInstallVersion(context);
            if (versionInfo != null && !TextUtils.isEmpty(versionInfo.mPackageName) && contextpkg.equals(versionInfo.mPackageName)) {
                Intent startIntent = PushServiceHelper.createServiceIntent();
                startIntent.setPackage(versionInfo.mPackageName);
                Log.d(TAG, "startService");
                Log.d(TAG, "intent action:" + startIntent.getAction());
                Log.d(TAG, "intent package:" + startIntent.getPackage());
                context.startService(startIntent);
            }
        }
    }
}

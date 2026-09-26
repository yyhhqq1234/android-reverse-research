package com.netease.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class ConnectivityReceiver extends BroadcastReceiver {
    private static final String TAG = "NGPush_" + ConnectivityReceiver.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.getAction();
        Log.i(TAG, "onReceive");
        Log.d(TAG, "intent=" + intent);
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        if (networkInfo != null) {
            Log.d(TAG, "Network Type = " + networkInfo.getTypeName());
            Log.d(TAG, "Network State = " + networkInfo.getState());
            if (networkInfo.isConnected()) {
                Log.i(TAG, "Network connected");
                PushServiceHelper.getInstance().connect(false);
                return;
            }
            return;
        }
        Log.e(TAG, "Network unavailable");
        PushServiceHelper.getInstance().disconnect();
    }
}

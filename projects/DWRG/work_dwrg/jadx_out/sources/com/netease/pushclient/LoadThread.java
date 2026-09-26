package com.netease.pushclient;

import android.content.Context;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class LoadThread extends Thread {
    private static final String TAG = "NGPush_" + LoadThread.class.getSimpleName();
    private Context mContext;
    private Runnable mRunnable;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public LoadThread(Context context, Runnable runnable) {
        this.mContext = context;
        this.mRunnable = runnable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (PushManagerProxy.loadPushManager(this.mContext)) {
            this.mRunnable.run();
        }
    }
}

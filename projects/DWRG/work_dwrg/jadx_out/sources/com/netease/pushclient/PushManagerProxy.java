package com.netease.pushclient;

import android.content.Context;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class PushManagerProxy {
    private static final String INNER_PUSH_MANAGER = "com.netease.pushclient.PushManager";
    private static final String TAG = "NGPush_" + PushManagerProxy.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static synchronized boolean loadPushManager(Context context) {
        boolean z;
        synchronized (PushManagerProxy.class) {
            try {
                context.getClassLoader().loadClass(INNER_PUSH_MANAGER);
                z = true;
            } catch (ClassNotFoundException e) {
                z = false;
            }
        }
        return z;
    }

    public static boolean isLoadPushManager(Context context) {
        try {
            context.getClassLoader().loadClass(INNER_PUSH_MANAGER);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static void run(Context context, Runnable runnable) {
        if (isLoadPushManager(context)) {
            runnable.run();
        } else {
            new LoadThread(context, runnable).start();
        }
    }
}

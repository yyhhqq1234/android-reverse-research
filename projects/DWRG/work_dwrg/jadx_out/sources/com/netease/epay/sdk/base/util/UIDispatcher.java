package com.netease.epay.sdk.base.util;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class UIDispatcher {
    private static Handler handler;

    public static synchronized void runOnUiThread(Runnable runnable) {
        synchronized (UIDispatcher.class) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(runnable);
        }
    }

    public static synchronized void runOnUiThread(Runnable runnable, int delayTimes) {
        synchronized (UIDispatcher.class) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.postDelayed(runnable, delayTimes);
        }
    }

    public static synchronized void runOnLooperThread(Runnable runnable, Looper looper) {
        synchronized (UIDispatcher.class) {
            if (looper != null) {
                if (looper.getThread() != Thread.currentThread()) {
                    if (Looper.getMainLooper() == looper) {
                        if (handler == null) {
                            handler = new Handler(Looper.getMainLooper());
                        }
                        handler.post(runnable);
                    }
                }
            }
            runnable.run();
        }
    }
}

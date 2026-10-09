package com.unity3d.player;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
final class l implements Thread.UncaughtExceptionHandler {
    private volatile Thread.UncaughtExceptionHandler a;

    l() {
    }

    final synchronized boolean a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler == this) {
            return false;
        }
        this.a = defaultUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(this);
        return true;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        try {
            Error error = new Error(String.format("FATAL EXCEPTION [%s]\n", thread.getName()) + String.format("Unity version     : %s\n", "2020.3.42f1") + String.format("Device model      : %s %s\n", Build.MANUFACTURER, Build.MODEL) + String.format("Device fingerprint: %s\n", Build.FINGERPRINT) + String.format("Build Type        : %s\n", "Release") + String.format("Scripting Backend : %s\n", "IL2CPP") + String.format("ABI               : %s\n", Build.CPU_ABI) + String.format("Strip Engine Code : %s\n", true));
            error.setStackTrace(new StackTraceElement[0]);
            error.initCause(th);
            this.a.uncaughtException(thread, error);
        } catch (Throwable unused) {
            this.a.uncaughtException(thread, th);
        }
    }
}

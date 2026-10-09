package com.applovin.impl.sdk;

import android.os.Process;
import com.applovin.impl.ka;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sj;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final AppLovinExceptionHandler d = new AppLovinExceptionHandler();
    private final Set a = new HashSet(2);
    private final AtomicBoolean b = new AtomicBoolean();
    private Thread.UncaughtExceptionHandler c;

    public static AppLovinExceptionHandler shared() {
        return d;
    }

    public void addSdk(j jVar) {
        if (this.a.contains(jVar)) {
            return;
        }
        this.a.add(jVar);
    }

    public void enable() {
        if (this.b.compareAndSet(false, true)) {
            this.c = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        long jLongValue = 500;
        for (j jVar : this.a) {
            jVar.I();
            if (n.a()) {
                jVar.I().a("AppLovinExceptionHandler", "Detected unhandled exception");
            }
            jVar.D().a(ka.T, CollectionUtils.map("top_main_method", th.toString()));
            jVar.z().trackEventSynchronously(y8.h.e0);
            jLongValue = ((Long) jVar.a(sj.p3)).longValue();
        }
        try {
            Thread.sleep(jLongValue);
        } catch (InterruptedException unused) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.c;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }
}

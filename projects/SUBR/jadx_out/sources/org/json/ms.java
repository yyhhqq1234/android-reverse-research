package org.json;

import android.os.Handler;
import android.os.HandlerThread;
import org.json.mediationsdk.logger.d;

/* JADX INFO: loaded from: classes3.dex */
public class ms extends Thread {
    private static ms b;
    private a a;

    private class a extends HandlerThread {
        private Handler a;

        a(String str) {
            super(str);
            setUncaughtExceptionHandler(new d());
        }

        Handler a() {
            return this.a;
        }

        void b() {
            this.a = new Handler(getLooper());
        }
    }

    private ms() {
        a aVar = new a(getClass().getSimpleName());
        this.a = aVar;
        aVar.start();
        this.a.b();
    }

    public static synchronized ms a() {
        if (b == null) {
            b = new ms();
        }
        return b;
    }

    public synchronized void a(Runnable runnable) {
        a aVar = this.a;
        if (aVar == null) {
            return;
        }
        Handler handlerA = aVar.a();
        if (handlerA != null) {
            handlerA.post(runnable);
        }
    }
}

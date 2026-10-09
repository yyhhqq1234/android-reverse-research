package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class j9 implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a;

    j9(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        k9 k9Var = new k9(th);
        if (k9Var.getIsIronsourceCrash()) {
            new ac(k9Var.getStackTrace(), "" + System.currentTimeMillis(), "Crash").a();
        }
        this.a.uncaughtException(thread, th);
    }
}

package org.json.mediationsdk.logger;

import org.json.environment.thread.IronSourceThreadManager;

/* JADX INFO: loaded from: classes3.dex */
public class b extends IronSourceLogger {
    private static final String e = "publisher";
    private LogListener c;
    private boolean d;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ IronSourceLogger.IronSourceTag b;
        final /* synthetic */ int c;

        a(String str, IronSourceLogger.IronSourceTag ironSourceTag, int i) {
            this.a = str;
            this.b = ironSourceTag;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.c == null || this.a == null) {
                return;
            }
            b.this.c.onLog(this.b, this.a, this.c);
        }
    }

    private b() {
        super("publisher");
    }

    public b(LogListener logListener, int i) {
        super("publisher", i);
        this.c = logListener;
        this.d = false;
    }

    public void a(LogListener logListener) {
        this.c = logListener;
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // org.json.mediationsdk.logger.IronSourceLogger
    public void log(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        a aVar = new a(str, ironSourceTag, i);
        if (this.d) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(aVar);
        } else {
            IronSourceThreadManager.INSTANCE.postPublisherCallback(aVar);
        }
    }

    @Override // org.json.mediationsdk.logger.IronSourceLogger
    public void logException(IronSourceLogger.IronSourceTag ironSourceTag, String str, Throwable th) {
        if (th != null) {
            log(ironSourceTag, th.getMessage(), 3);
        }
    }
}

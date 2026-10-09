package org.json;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Date;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.sdk.SegmentListener;

/* JADX INFO: loaded from: classes3.dex */
public class vk implements SegmentListener {
    private SegmentListener a;
    private final b b;
    protected long c;

    private class b extends Thread {
        private Handler a;

        private b() {
        }

        public Handler a() {
            return this.a;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.a = new Handler();
            Looper.loop();
        }
    }

    public vk() {
        b bVar = new b();
        this.b = bVar;
        bVar.start();
        this.c = new Date().getTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.onSegmentReceived(str);
    }

    public void a(SegmentListener segmentListener) {
        this.a = segmentListener;
    }

    protected void a(Runnable runnable) {
        Handler handlerA;
        b bVar = this.b;
        if (bVar == null || (handlerA = bVar.a()) == null) {
            return;
        }
        handlerA.post(runnable);
    }

    protected boolean a(Object obj) {
        return (obj == null || this.b == null) ? false : true;
    }

    @Override // org.json.mediationsdk.sdk.SegmentListener
    public void onSegmentReceived(final String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onSegmentReceived(" + str + ")", 1);
        if (a((Object) this.a)) {
            a(new Runnable() { // from class: com.ironsource.vk$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(str);
                }
            });
        }
    }
}

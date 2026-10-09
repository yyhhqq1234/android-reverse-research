package org.json;

import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.sdk.LevelPlayBannerListener;

/* JADX INFO: loaded from: classes3.dex */
public class q5 extends q7 {
    private static final q5 d = new q5();
    private LevelPlayBannerListener b = null;
    private LevelPlayBannerListener c = null;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdLeftApplication(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ AdInfo a;

        b(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdClicked(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ AdInfo a;

        c(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdClicked(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ AdInfo a;

        d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdLoaded(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ AdInfo a;

        e(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdLoaded(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ IronSourceError a;

        f(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ IronSourceError a;

        g(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ AdInfo a;

        h(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdScreenPresented(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ AdInfo a;

        i(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdScreenPresented(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ AdInfo a;

        j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdScreenDismissed(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class k implements Runnable {
        final /* synthetic */ AdInfo a;

        k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.b != null) {
                q5.this.b.onAdScreenDismissed(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    class l implements Runnable {
        final /* synthetic */ AdInfo a;

        l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q5.this.c != null) {
                q5.this.c.onAdLeftApplication(q5.this.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + q5.this.a(this.a));
            }
        }
    }

    private q5() {
    }

    public static q5 a() {
        return d;
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(ironSourceError));
        }
    }

    public void a(LevelPlayBannerListener levelPlayBannerListener) {
        this.b = levelPlayBannerListener;
    }

    public LevelPlayBannerListener b() {
        return this.b;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }

    public void b(LevelPlayBannerListener levelPlayBannerListener) {
        this.c = levelPlayBannerListener;
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
        }
    }
}

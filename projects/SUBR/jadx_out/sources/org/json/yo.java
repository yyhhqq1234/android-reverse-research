package org.json;

import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;

/* JADX INFO: loaded from: classes3.dex */
public class yo extends q7 {
    private static final yo d = new yo();
    private LevelPlayRewardedVideoBaseListener b = null;
    private LevelPlayRewardedVideoBaseListener c = null;

    class a implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        a(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog ironLog;
            String str;
            if (yo.this.b != null) {
                if (this.a) {
                    ((LevelPlayRewardedVideoListener) yo.this.b).onAdAvailable(yo.this.a(this.b));
                    ironLog = IronLog.CALLBACK;
                    str = "onAdAvailable() adInfo = " + yo.this.a(this.b);
                } else {
                    ((LevelPlayRewardedVideoListener) yo.this.b).onAdUnavailable();
                    ironLog = IronLog.CALLBACK;
                    str = "onAdUnavailable()";
                }
                ironLog.info(str);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        b(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.c != null) {
                yo.this.c.onAdRewarded(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + yo.this.a(this.b));
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        c(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                yo.this.b.onAdRewarded(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + yo.this.a(this.b));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        d(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.c != null) {
                yo.this.c.onAdShowFailed(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + yo.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        e(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                yo.this.b.onAdShowFailed(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + yo.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        f(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.c != null) {
                yo.this.c.onAdClicked(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + yo.this.a(this.b));
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        g(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                yo.this.b.onAdClicked(this.a, yo.this.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + yo.this.a(this.b));
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
            if (yo.this.c != null) {
                ((LevelPlayRewardedVideoManualListener) yo.this.c).onAdReady(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + yo.this.a(this.a));
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
            if (yo.this.b != null) {
                ((LevelPlayRewardedVideoManualListener) yo.this.b).onAdReady(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + yo.this.a(this.a));
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ IronSourceError a;

        j(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.c != null) {
                ((LevelPlayRewardedVideoManualListener) yo.this.c).onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class k implements Runnable {
        final /* synthetic */ IronSourceError a;

        k(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                ((LevelPlayRewardedVideoManualListener) yo.this.b).onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
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
            if (yo.this.c != null) {
                yo.this.c.onAdOpened(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + yo.this.a(this.a));
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ AdInfo a;

        m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                yo.this.b.onAdOpened(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + yo.this.a(this.a));
            }
        }
    }

    class n implements Runnable {
        final /* synthetic */ AdInfo a;

        n(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.c != null) {
                yo.this.c.onAdClosed(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + yo.this.a(this.a));
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ AdInfo a;

        o(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yo.this.b != null) {
                yo.this.b.onAdClosed(yo.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + yo.this.a(this.a));
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        p(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog ironLog;
            String str;
            if (yo.this.c != null) {
                if (this.a) {
                    ((LevelPlayRewardedVideoListener) yo.this.c).onAdAvailable(yo.this.a(this.b));
                    ironLog = IronLog.CALLBACK;
                    str = "onAdAvailable() adInfo = " + yo.this.a(this.b);
                } else {
                    ((LevelPlayRewardedVideoListener) yo.this.c).onAdUnavailable();
                    ironLog = IronLog.CALLBACK;
                    str = "onAdUnavailable()";
                }
                ironLog.info(str);
            }
        }
    }

    private yo() {
    }

    public static yo a() {
        return d;
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(ironSourceError));
            return;
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.b;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoManualListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(ironSourceError));
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(ironSourceError, adInfo));
        }
    }

    public void a(Placement placement, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(placement, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(placement, adInfo));
        }
    }

    public void a(LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener) {
        this.b = levelPlayRewardedVideoBaseListener;
    }

    public void a(boolean z, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(z, adInfo));
            return;
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.b;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(z, adInfo));
    }

    public void b() {
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(adInfo));
        }
    }

    public void b(Placement placement, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(placement, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(placement, adInfo));
        }
    }

    public void b(LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener) {
        this.c = levelPlayRewardedVideoBaseListener;
    }

    public void c() {
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
            return;
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.b;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoManualListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
    }
}

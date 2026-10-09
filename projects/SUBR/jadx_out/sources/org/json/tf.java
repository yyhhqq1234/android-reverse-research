package org.json;

import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.sdk.LevelPlayInterstitialListener;

/* JADX INFO: loaded from: classes3.dex */
public class tf extends q7 {
    private static final tf d = new tf();
    private LevelPlayInterstitialListener b = null;
    private LevelPlayInterstitialListener c = null;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.b != null) {
                tf.this.b.onAdShowSucceeded(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + tf.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        b(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.c != null) {
                tf.this.c.onAdShowFailed(this.a, tf.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + tf.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        c(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.b != null) {
                tf.this.b.onAdShowFailed(this.a, tf.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + tf.this.a(this.b) + ", error = " + this.a.getErrorMessage());
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
            if (tf.this.c != null) {
                tf.this.c.onAdClicked(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + tf.this.a(this.a));
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
            if (tf.this.b != null) {
                tf.this.b.onAdClicked(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + tf.this.a(this.a));
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ AdInfo a;

        f(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.c != null) {
                tf.this.c.onAdReady(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + tf.this.a(this.a));
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ AdInfo a;

        g(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.b != null) {
                tf.this.b.onAdReady(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + tf.this.a(this.a));
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ IronSourceError a;

        h(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.c != null) {
                tf.this.c.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ IronSourceError a;

        i(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tf.this.b != null) {
                tf.this.b.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
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
            if (tf.this.c != null) {
                tf.this.c.onAdOpened(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + tf.this.a(this.a));
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
            if (tf.this.b != null) {
                tf.this.b.onAdOpened(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + tf.this.a(this.a));
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
            if (tf.this.c != null) {
                tf.this.c.onAdClosed(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + tf.this.a(this.a));
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
            if (tf.this.b != null) {
                tf.this.b.onAdClosed(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + tf.this.a(this.a));
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
            if (tf.this.c != null) {
                tf.this.c.onAdShowSucceeded(tf.this.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + tf.this.a(this.a));
            }
        }
    }

    private tf() {
    }

    public static synchronized tf a() {
        return d;
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(ironSourceError));
        }
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(ironSourceError, adInfo));
        }
    }

    public synchronized void a(LevelPlayInterstitialListener levelPlayInterstitialListener) {
        this.b = levelPlayInterstitialListener;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
    }

    public synchronized void b(LevelPlayInterstitialListener levelPlayInterstitialListener) {
        this.c = levelPlayInterstitialListener;
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
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }
}

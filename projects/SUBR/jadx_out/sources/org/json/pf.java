package org.json;

import org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public class pf extends of.a<ISDemandOnlyRewardedVideoListener> implements ISDemandOnlyRewardedVideoListener {

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener b;

        a(String str, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdLoadSuccess()");
            this.b.onRewardedVideoAdLoadSuccess(this.a);
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ IronSourceError b;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener c;

        b(String str, IronSourceError ironSourceError, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = ironSourceError;
            this.c = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdLoadFailed() error = " + this.b.getErrorMessage());
            this.c.onRewardedVideoAdLoadFailed(this.a, this.b);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener b;

        c(String str, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdOpened()");
            this.b.onRewardedVideoAdOpened(this.a);
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ IronSourceError b;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener c;

        d(String str, IronSourceError ironSourceError, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = ironSourceError;
            this.c = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdShowFailed() error = " + this.b.getErrorMessage());
            this.c.onRewardedVideoAdShowFailed(this.a, this.b);
        }
    }

    class e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener b;

        e(String str, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdClicked()");
            this.b.onRewardedVideoAdClicked(this.a);
        }
    }

    class f implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener b;

        f(String str, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdRewarded()");
            this.b.onRewardedVideoAdRewarded(this.a);
        }
    }

    class g implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyRewardedVideoListener b;

        g(String str, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
            this.a = str;
            this.b = iSDemandOnlyRewardedVideoListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            pf.this.a(this.a, "onRewardedVideoAdClosed()");
            this.b.onRewardedVideoAdClosed(this.a);
        }
    }

    pf() {
    }

    pf(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        b(iSDemandOnlyRewardedVideoListener);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClicked(String str) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new e(str, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClosed(String str) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new g(str, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadFailed(String str, IronSourceError ironSourceError) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new b(str, ironSourceError, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadSuccess(String str) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new a(str, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdOpened(String str) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new c(str, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdRewarded(String str) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new f(str, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }

    @Override // org.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdShowFailed(String str, IronSourceError ironSourceError) {
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = a();
        a(new d(str, ironSourceError, iSDemandOnlyRewardedVideoListenerA), iSDemandOnlyRewardedVideoListenerA != null);
    }
}

package org.json;

import org.json.mediationsdk.demandOnly.ISDemandOnlyBannerListener;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public class p5 extends of.a<ISDemandOnlyBannerListener> {

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ IronSourceError b;
        final /* synthetic */ ISDemandOnlyBannerListener c;

        a(String str, IronSourceError ironSourceError, ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
            this.a = str;
            this.b = ironSourceError;
            this.c = iSDemandOnlyBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            p5.this.a(this.a, "onBannerAdLoadFailed() error = " + this.b.getErrorMessage());
            this.c.onBannerAdLoadFailed(this.a, this.b);
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyBannerListener b;

        b(String str, ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
            this.a = str;
            this.b = iSDemandOnlyBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            p5.this.a(this.a, "onBannerAdLoaded()");
            this.b.onBannerAdLoaded(this.a);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyBannerListener b;

        c(String str, ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
            this.a = str;
            this.b = iSDemandOnlyBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            p5.this.a(this.a, "onBannerAdShown()");
            this.b.onBannerAdShown(this.a);
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyBannerListener b;

        d(String str, ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
            this.a = str;
            this.b = iSDemandOnlyBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            p5.this.a(this.a, "onBannerAdClicked()");
            this.b.onBannerAdClicked(this.a);
        }
    }

    class e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ISDemandOnlyBannerListener b;

        e(String str, ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
            this.a = str;
            this.b = iSDemandOnlyBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            p5.this.a(this.a, "onBannerAdLeftApplication()");
            this.b.onBannerAdLeftApplication(this.a);
        }
    }

    public void a(String str) {
        ISDemandOnlyBannerListener iSDemandOnlyBannerListenerA = a();
        a(new d(str, iSDemandOnlyBannerListenerA), iSDemandOnlyBannerListenerA != null);
    }

    public void a(String str, IronSourceError ironSourceError) {
        ISDemandOnlyBannerListener iSDemandOnlyBannerListenerA = a();
        a(new a(str, ironSourceError, iSDemandOnlyBannerListenerA), iSDemandOnlyBannerListenerA != null);
    }

    public void b(String str) {
        ISDemandOnlyBannerListener iSDemandOnlyBannerListenerA = a();
        a(new e(str, iSDemandOnlyBannerListenerA), iSDemandOnlyBannerListenerA != null);
    }

    public void c(String str) {
        ISDemandOnlyBannerListener iSDemandOnlyBannerListenerA = a();
        a(new b(str, iSDemandOnlyBannerListenerA), iSDemandOnlyBannerListenerA != null);
    }

    public void d(String str) {
        ISDemandOnlyBannerListener iSDemandOnlyBannerListenerA = a();
        a(new c(str, iSDemandOnlyBannerListenerA), iSDemandOnlyBannerListenerA != null);
    }
}

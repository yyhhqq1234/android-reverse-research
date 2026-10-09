package com.applovin.impl;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class p9 extends o9 {
    private final q9 K;
    private x1 L;
    private long M;
    private final AtomicBoolean N;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Marking ad as fully watched");
        }
        this.N.set(true);
    }

    @Override // com.applovin.impl.o9
    public void a(long j) {
    }

    @Override // com.applovin.impl.jb.a
    public void b() {
    }

    @Override // com.applovin.impl.jb.a
    public void c() {
    }

    @Override // com.applovin.impl.o9
    public void x() {
    }

    public p9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.K = new q9(this.a, this.d, this.b);
        this.N = new AtomicBoolean();
    }

    @Override // com.applovin.impl.o9
    public void y() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.o9
    public void a(ViewGroup viewGroup) {
        this.K.a(this.k, this.j, this.i, viewGroup);
        if (a(false)) {
            return;
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.i.renderAd(this.a);
        a("javascript:al_onPoststitialShow();", this.a.D());
        if (k()) {
            long jA = A();
            this.M = jA;
            if (jA > 0) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.M + "ms...");
                }
                this.L = x1.a(this.M, this.b, new Runnable() { // from class: com.applovin.impl.p9$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.D();
                    }
                });
            }
        }
        if (this.k != null) {
            if (this.a.p() >= 0) {
                a(this.k, this.a.p(), new Runnable() { // from class: com.applovin.impl.p9$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.E();
                    }
                });
            } else {
                this.k.setVisibility(0);
            }
        }
        G();
        this.b.i0().a(new jn(this.b, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.p9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.F();
            }
        }), tm.b.OTHER, TimeUnit.SECONDS.toMillis(1L));
        r();
        super.c(yp.e(this.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        this.p = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = this.k;
        if (gVar != null) {
            arrayList.add(new ng(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new ng(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.a.getAdEventTracker().b(this.i, arrayList);
    }

    @Override // com.applovin.impl.o9
    public void f() {
        o();
        x1 x1Var = this.L;
        if (x1Var != null) {
            x1Var.a();
            this.L = null;
        }
        super.f();
    }

    protected boolean C() {
        if (!(this.H && this.a.c1()) && k()) {
            return this.N.get();
        }
        return true;
    }

    @Override // com.applovin.impl.o9
    protected void o() {
        super.a(B(), false, C(), -2L);
    }

    protected void G() {
        long jW;
        long millis = 0;
        if (this.a.V() >= 0 || this.a.W() >= 0) {
            if (this.a.V() >= 0) {
                jW = this.a.V();
            } else {
                if (this.a.Z0()) {
                    int iN1 = (int) ((com.applovin.impl.sdk.ad.a) this.a).n1();
                    if (iN1 > 0) {
                        millis = TimeUnit.SECONDS.toMillis(iN1);
                    } else {
                        int iP = (int) this.a.p();
                        if (iP > 0) {
                            millis = TimeUnit.SECONDS.toMillis(iP);
                        }
                    }
                }
                jW = (long) (millis * (((double) this.a.W()) / 100.0d));
            }
            b(jW);
        }
    }

    @Override // com.applovin.impl.o9
    public void i() {
        super.i();
        H();
    }

    @Override // com.applovin.impl.o9
    public void h() {
        super.h();
        H();
    }

    private void H() {
        this.K.a(this.l);
        this.p = SystemClock.elapsedRealtime();
        this.N.set(true);
    }

    private long A() {
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (!(bVar instanceof com.applovin.impl.sdk.ad.a)) {
            return 0L;
        }
        float fN1 = ((com.applovin.impl.sdk.ad.a) bVar).n1();
        if (fN1 <= 0.0f) {
            fN1 = this.a.p();
        }
        return (long) (yp.c(fN1) * (((double) this.a.E()) / 100.0d));
    }

    private int B() {
        x1 x1Var;
        int iMin = 100;
        if (k()) {
            if (!C() && (x1Var = this.L) != null) {
                iMin = (int) Math.min(100.0d, ((this.M - x1Var.b()) / this.M) * 100.0d);
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Ad engaged at " + iMin + "%");
            }
        }
        return iMin;
    }
}

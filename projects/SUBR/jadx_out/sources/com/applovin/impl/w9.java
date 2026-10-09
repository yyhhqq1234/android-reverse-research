package com.applovin.impl;

import android.R;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class w9 extends o9 implements g0 {
    private final x9 K;
    private final com.applovin.impl.adview.g L;
    private final ImageView M;
    private final o N;
    private final boolean O;
    private double P;
    private double Q;
    private final AtomicBoolean R;
    private final AtomicBoolean S;
    private boolean T;
    private long U;
    private long V;

    @Override // com.applovin.impl.o9
    public void a(long j) {
    }

    @Override // com.applovin.impl.jb.a
    public void c() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    @Override // com.applovin.impl.o9
    public void x() {
    }

    public w9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.K = new x9(this.a, this.d, this.b);
        boolean zK0 = this.a.K0();
        this.O = zK0;
        this.R = new AtomicBoolean();
        this.S = new AtomicBoolean();
        this.T = yp.e(this.b);
        this.U = -2L;
        this.V = 0L;
        b bVar2 = new b();
        if (bVar.m0() >= 0) {
            com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.d0(), activity);
            this.L = gVar;
            gVar.setVisibility(8);
            gVar.setOnClickListener(bVar2);
        } else {
            this.L = null;
        }
        if (a(this.T, jVar)) {
            ImageView imageView = new ImageView(activity);
            this.M = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(bVar2);
            d(this.T);
        } else {
            this.M = null;
        }
        if (zK0) {
            o oVar = new o(activity, ((Integer) jVar.a(sj.w2)).intValue(), R.attr.progressBarStyleLarge);
            this.N = oVar;
            oVar.setColor(Color.parseColor("#75FFFFFF"));
            oVar.setBackgroundColor(Color.parseColor("#00000000"));
            oVar.setVisibility(8);
            return;
        }
        this.N = null;
    }

    @Override // com.applovin.impl.o9
    public void y() {
        a((ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (this.S.compareAndSet(false, true)) {
            a(this.L, this.a.m0(), new Runnable() { // from class: com.applovin.impl.w9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.C();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        this.U = -1L;
        this.V = SystemClock.elapsedRealtime();
    }

    public void K() {
        this.U = SystemClock.elapsedRealtime() - this.V;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.U + "ms");
        }
        if (H()) {
            p();
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Prompting incentivized ad close warning");
            }
            this.E.e();
            return;
        }
        A();
    }

    private void A() {
        this.x++;
        if (this.a.B()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Dismissing ad on video skip...");
            }
            f();
        } else {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Skipping video...");
            }
            J();
        }
    }

    public void J() {
        if (this.R.compareAndSet(false, true)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Showing postitial...");
            }
            c("javascript:al_showPostitial();");
            com.applovin.impl.adview.g gVar = this.L;
            if (gVar != null) {
                gVar.setVisibility(8);
            }
            ImageView imageView = this.M;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            o oVar = this.N;
            if (oVar != null) {
                oVar.b();
            }
            if (this.k != null) {
                if (this.a.p() >= 0) {
                    a(this.k, this.a.p(), new Runnable() { // from class: com.applovin.impl.w9$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.E();
                        }
                    });
                } else {
                    this.k.setVisibility(0);
                }
            }
            this.i.getController().E();
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        this.p = SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.impl.o9
    public void i() {
        super.i();
        I();
    }

    @Override // com.applovin.impl.o9
    public void h() {
        super.h();
        I();
    }

    private void I() {
        this.K.a(this.l);
        this.p = SystemClock.elapsedRealtime();
        this.P = 100.0d;
    }

    @Override // com.applovin.impl.g0
    public void e() {
        J();
    }

    @Override // com.applovin.impl.g0
    public void b(double d) {
        c("javascript:al_setVideoMuted(" + this.T + ");");
        o oVar = this.N;
        if (oVar != null) {
            oVar.b();
        }
        if (this.L != null) {
            G();
        }
        this.i.getController().D();
        this.Q = d;
        F();
        if (this.a.f1()) {
            this.E.b(this.a, (Runnable) null);
        }
    }

    @Override // com.applovin.impl.g0
    public void d() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.b();
        }
    }

    private void d(boolean z) {
        if (z3.f()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.d.getDrawable(z ? com.applovin.sdk.R.drawable.applovin_ic_unmute_to_mute : com.applovin.sdk.R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.M.setScaleType(ImageView.ScaleType.FIT_XY);
                this.M.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        ImageViewUtils.setImageUri(this.M, z ? this.a.M() : this.a.g0(), this.b);
    }

    @Override // com.applovin.impl.o9
    public void f() {
        o();
        super.f();
    }

    @Override // com.applovin.impl.jb.a
    public void b() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        A();
    }

    protected boolean H() {
        return k() && !B();
    }

    protected boolean B() {
        return (this.H && this.a.c1()) || this.P >= ((double) this.a.o0());
    }

    @Override // com.applovin.impl.o9
    protected void o() {
        super.a((int) this.P, this.O, B(), this.U);
    }

    protected void F() {
        long jW;
        long millis;
        if (this.a.V() >= 0 || this.a.W() >= 0) {
            if (this.a.V() >= 0) {
                jW = this.a.V();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.a;
                double d = this.Q;
                long millis2 = d > 0.0d ? TimeUnit.SECONDS.toMillis((long) d) : 0L;
                if (aVar.Z0()) {
                    int iN1 = (int) ((com.applovin.impl.sdk.ad.a) this.a).n1();
                    if (iN1 > 0) {
                        millis = TimeUnit.SECONDS.toMillis(iN1);
                    } else {
                        int iP = (int) aVar.p();
                        if (iP > 0) {
                            millis = TimeUnit.SECONDS.toMillis(iP);
                        }
                    }
                    millis2 += millis;
                }
                jW = (long) (millis2 * (((double) this.a.W()) / 100.0d));
            }
            b(jW);
        }
    }

    protected void L() {
        this.T = !this.T;
        c("javascript:al_setVideoMuted(" + this.T + ");");
        d(this.T);
        a(this.T, 0L);
    }

    private static boolean a(boolean z, com.applovin.impl.sdk.j jVar) {
        if (!((Boolean) jVar.a(sj.l2)).booleanValue()) {
            return false;
        }
        if (!((Boolean) jVar.a(sj.m2)).booleanValue() || z) {
            return true;
        }
        return ((Boolean) jVar.a(sj.o2)).booleanValue();
    }

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != w9.this.L) {
                if (view == w9.this.M) {
                    w9.this.L();
                    return;
                }
                com.applovin.impl.sdk.n nVar = w9.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    w9.this.c.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                    return;
                }
                return;
            }
            w9.this.K();
        }
    }

    @Override // com.applovin.impl.o9
    public void a(ViewGroup viewGroup) {
        this.K.a(this.M, this.L, this.k, this.N, this.j, this.i, viewGroup);
        this.i.getController().a((g0) this);
        if (a(false)) {
            return;
        }
        o oVar = this.N;
        if (oVar != null) {
            oVar.a();
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.i.renderAd(this.a);
        if (this.L != null) {
            this.b.i0().a(new jn(this.b, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.w9$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.G();
                }
            }), tm.b.TIMEOUT, this.a.n0(), true);
        }
        this.b.i0().a(new jn(this.b, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.w9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.D();
            }
        }), tm.b.OTHER, 500L);
        super.c(this.T);
    }

    @Override // com.applovin.impl.g0
    public void a(double d) {
        this.P = d;
    }

    @Override // com.applovin.impl.g0
    public void a() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.a();
        }
    }
}

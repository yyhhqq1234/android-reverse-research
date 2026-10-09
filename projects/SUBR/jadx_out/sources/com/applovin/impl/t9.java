package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class t9 extends o9 implements AppLovinCommunicatorSubscriber {
    private final v9 K;
    protected final com.applovin.exoplayer2.ui.e L;
    protected final ck M;
    protected final o N;
    protected final com.applovin.impl.adview.g O;
    protected h3 P;
    protected final ImageView Q;
    protected com.applovin.impl.adview.l R;
    protected final ProgressBar S;
    protected ProgressBar T;
    private final d U;
    private final Handler V;
    private final Handler W;
    protected final u4 X;
    protected final u4 Y;
    private final boolean Z;
    protected boolean a0;
    protected long b0;
    protected int c0;
    protected boolean d0;
    protected boolean e0;
    private long f0;
    private final AtomicBoolean g0;
    private final AtomicBoolean h0;
    private long i0;
    private long j0;

    protected void d(String str) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.a);
        }
        if (StringUtils.containsAtLeastOneSubstring(str, this.b.c(sj.H2))) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Ignoring media error: " + str);
                return;
            }
            return;
        }
        if (this.g0.compareAndSet(false, true)) {
            if (yp.a(sj.O0, this.b)) {
                this.b.A().d(this.a, com.applovin.impl.sdk.j.m());
            }
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.C;
            if (appLovinAdDisplayListener instanceof pb) {
                ((pb) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            this.b.D().a(this.a instanceof aq ? "handleVastExoPlayerError" : "handleExoPlayerError", str, this.a);
            f();
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdExoPlayerPresenter";
    }

    @Override // com.applovin.impl.o9
    public void x() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Pausing video");
        }
        if (!this.M.isPlaying()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Nothing to pause");
                return;
            }
            return;
        }
        this.f0 = this.M.getCurrentPosition();
        this.M.a(false);
        this.X.c();
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Paused video at position " + this.f0 + "ms");
        }
    }

    protected void d(boolean z) {
        if (z3.f()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.d.getDrawable(z ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.Q.setScaleType(ImageView.ScaleType.FIT_XY);
                this.Q.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        ImageViewUtils.setImageUri(this.Q, z ? this.a.M() : this.a.g0(), this.b);
    }

    public t9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.K = new v9(this.a, this.d, this.b);
        a aVar = null;
        d dVar = new d(this, aVar);
        this.U = dVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.V = handler;
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.W = handler2;
        u4 u4Var = new u4(handler, this.b);
        this.X = u4Var;
        this.Y = new u4(handler2, this.b);
        boolean zK0 = this.a.K0();
        this.Z = zK0;
        this.a0 = yp.e(this.b);
        this.f0 = -1L;
        this.g0 = new AtomicBoolean();
        this.h0 = new AtomicBoolean();
        this.i0 = -2L;
        this.j0 = 0L;
        if (bVar.hasVideoUrl()) {
            f fVar = new f(this, aVar);
            if (bVar.m0() >= 0) {
                com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.d0(), activity);
                this.O = gVar;
                gVar.setVisibility(8);
                gVar.setOnClickListener(fVar);
            } else {
                this.O = null;
            }
            if (a(this.a0, jVar)) {
                ImageView imageView = new ImageView(activity);
                this.Q = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(fVar);
                d(this.a0);
            } else {
                this.Q = null;
            }
            String strI0 = bVar.i0();
            if (StringUtils.isValidString(strI0)) {
                rr rrVar = new rr(jVar);
                rrVar.a(new WeakReference(dVar));
                com.applovin.impl.adview.l lVar = new com.applovin.impl.adview.l(bVar.h0(), bVar, rrVar, activity);
                this.R = lVar;
                lVar.a(strI0);
            } else {
                this.R = null;
            }
            if (zK0) {
                o oVar = new o(activity, ((Integer) jVar.a(sj.w2)).intValue(), android.R.attr.progressBarStyleLarge);
                this.N = oVar;
                oVar.setColor(Color.parseColor("#75FFFFFF"));
                oVar.setBackgroundColor(Color.parseColor("#00000000"));
                oVar.setVisibility(8);
                AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
            } else {
                this.N = null;
            }
            int iG = g();
            boolean z = ((Boolean) jVar.a(sj.b2)).booleanValue() && iG > 0;
            if (this.P == null && z) {
                this.P = new h3(activity);
                int iQ = bVar.q();
                this.P.setTextColor(iQ);
                this.P.setTextSize(((Integer) jVar.a(sj.a2)).intValue());
                this.P.setFinishedStrokeColor(iQ);
                this.P.setFinishedStrokeWidth(((Integer) jVar.a(sj.Z1)).intValue());
                this.P.setMax(iG);
                this.P.setProgress(iG);
                u4Var.a("COUNTDOWN_CLOCK", TimeUnit.SECONDS.toMillis(1L), new a(iG));
            }
            if (bVar.t0()) {
                Long l = (Long) jVar.a(sj.t2);
                Integer num = (Integer) jVar.a(sj.u2);
                ProgressBar progressBar = new ProgressBar(activity, null, android.R.attr.progressBarStyleHorizontal);
                this.S = progressBar;
                a(progressBar, bVar.s0(), num.intValue());
                u4Var.a("PROGRESS_BAR", l.longValue(), new b(num));
            } else {
                this.S = null;
            }
            ck ckVarA = new ck.b(activity).a();
            this.M = ckVarA;
            e eVar = new e(this, aVar);
            ckVarA.a((qh.c) eVar);
            ckVarA.a(0);
            com.applovin.exoplayer2.ui.e eVar2 = new com.applovin.exoplayer2.ui.e(activity);
            this.L = eVar2;
            eVar2.c();
            eVar2.setControllerVisibilityListener(eVar);
            eVar2.setPlayer(ckVarA);
            eVar2.setOnTouchListener(new AppLovinTouchToClickListener(jVar, sj.j0, activity, eVar));
            bVar.e().putString("video_view_address", zq.a(eVar2));
            O();
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    class a implements u4.b {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // com.applovin.impl.u4.b
        public void a() {
            t9 t9Var = t9.this;
            if (t9Var.P != null) {
                long seconds = ((long) this.a) - TimeUnit.MILLISECONDS.toSeconds(t9Var.L.getPlayer().getCurrentPosition());
                if (seconds <= 0) {
                    t9.this.u = true;
                } else if (t9.this.P()) {
                    t9.this.P.setProgress((int) seconds);
                }
            }
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return t9.this.P();
        }
    }

    class b implements u4.b {
        final /* synthetic */ Integer a;

        b(Integer num) {
            this.a = num;
        }

        @Override // com.applovin.impl.u4.b
        public void a() {
            t9 t9Var = t9.this;
            if (t9Var.d0) {
                t9Var.S.setVisibility(8);
            } else {
                t9.this.S.setProgress((int) ((t9Var.M.getCurrentPosition() / t9.this.b0) * this.a.intValue()));
            }
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return !t9.this.d0;
        }
    }

    @Override // com.applovin.impl.o9
    public void y() {
        a((ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        a(250L);
    }

    protected void c(long j) {
        this.b0 = j;
    }

    @Override // com.applovin.impl.jb.a
    public void c() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    protected void O() {
        if (a(!this.Z)) {
            return;
        }
        Activity activity = this.d;
        bi biVarA = new bi.b(new v5(activity, xp.a((Context) activity, "com.applovin.sdk"))).a(sd.a(this.a.u0()));
        this.M.a(!this.a0 ? 1 : 0);
        this.M.a((ae) biVarA);
        this.M.b();
        this.M.a(false);
    }

    protected void N() {
        if (this.h0.compareAndSet(false, true)) {
            a(this.O, this.a.m0(), new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.G();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        this.i0 = -1L;
        this.j0 = SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.impl.o9
    public void f() {
        this.X.a();
        this.Y.a();
        this.V.removeCallbacksAndMessages(null);
        this.W.removeCallbacksAndMessages(null);
        o();
        super.f();
    }

    @Override // com.applovin.impl.o9
    public void t() {
        if (((Boolean) this.b.a(sj.b6)).booleanValue()) {
            tr.d(this.R);
            this.R = null;
        }
        this.M.V();
        if (this.Z) {
            AppLovinCommunicator.getInstance(this.d).unsubscribe(this, "video_caching_failed");
        }
        super.t();
    }

    private void K() {
        com.applovin.impl.adview.l lVar;
        qq qqVarK0 = this.a.k0();
        if (qqVarK0 == null || !qqVarK0.j() || this.d0 || (lVar = this.R) == null) {
            return;
        }
        final boolean z = lVar.getVisibility() == 4;
        final long jH = qqVarK0.h();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(z, jH);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z, long j) {
        if (z) {
            zq.a(this.R, j, (Runnable) null);
        } else {
            zq.b(this.R, j, null);
        }
    }

    protected boolean P() {
        return (this.u || this.d0 || !this.L.getPlayer().isPlaying()) ? false : true;
    }

    public void U() {
        this.i0 = SystemClock.elapsedRealtime() - this.j0;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.i0 + "ms");
        }
        if (Q()) {
            x();
            p();
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Prompting incentivized ad close warning");
            }
            this.E.e();
            return;
        }
        B();
    }

    public void B() {
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
            T();
        }
    }

    protected void a(MotionEvent motionEvent, Bundle bundle) {
        Context context;
        if (this.a.J0()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Clicking through video");
            }
            Uri uriL0 = this.a.l0();
            if (uriL0 != null) {
                if (!((Boolean) this.b.a(sj.B)).booleanValue() || (context = this.d) == null) {
                    AppLovinAdView appLovinAdView = this.i;
                    context = appLovinAdView != null ? appLovinAdView.getContext() : com.applovin.impl.sdk.j.m();
                }
                this.b.j().trackAndLaunchVideoClick(this.a, uriL0, motionEvent, bundle, this, context);
                fc.a(this.B, this.a);
                this.y++;
                return;
            }
            return;
        }
        K();
    }

    protected void V() {
        this.c0 = A();
        this.M.a(false);
    }

    protected void L() {
        if (this.d0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
                return;
            }
            return;
        }
        if (this.b.e0().isApplicationPaused()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k("AppLovinFullscreenActivity", "Skip video resume - app paused");
                return;
            }
            return;
        }
        long j = this.f0;
        if (j >= 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Resuming video at position " + j + "ms for MediaPlayer: " + this.M);
            }
            this.M.a(true);
            this.X.b();
            this.f0 = -1L;
            if (this.M.isPlaying()) {
                return;
            }
            S();
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Invalid last video position, isVideoPlaying=" + this.M.isPlaying());
        }
    }

    protected void S() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.I();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.a();
        }
    }

    protected void C() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.F();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.b();
        }
    }

    protected boolean D() {
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (bVar == null) {
            return false;
        }
        if (this.H && bVar.c1()) {
            return true;
        }
        return E();
    }

    protected boolean E() {
        return A() >= this.a.o0();
    }

    protected int A() {
        ck ckVar = this.M;
        if (ckVar == null) {
            return 0;
        }
        long currentPosition = ckVar.getCurrentPosition();
        if (this.e0) {
            return 100;
        }
        if (currentPosition > 0) {
            return (int) ((currentPosition / this.b0) * 100.0f);
        }
        return this.c0;
    }

    protected boolean Q() {
        return k() && !D();
    }

    public void T() {
        V();
        long jU = this.a.U();
        if (jU > 0) {
            this.q = 0L;
            Long l = (Long) this.b.a(sj.C2);
            Integer num = (Integer) this.b.a(sj.F2);
            ProgressBar progressBar = new ProgressBar(this.d, null, android.R.attr.progressBarStyleHorizontal);
            this.T = progressBar;
            a(progressBar, this.a.T(), num.intValue());
            this.Y.a("POSTITIAL_PROGRESS_BAR", l.longValue(), new c(jU, num, l));
            this.Y.b();
        }
        this.K.a(this.k, this.j, this.i, this.T);
        a("javascript:al_onPoststitialShow(" + this.x + "," + this.y + ");", this.a.D());
        if (this.k != null) {
            if (this.a.p() >= 0) {
                a(this.k, this.a.p(), new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.J();
                    }
                });
            } else {
                this.k.setVisibility(0);
            }
        }
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
        ProgressBar progressBar2 = this.T;
        if (progressBar2 != null) {
            arrayList.add(new ng(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        this.a.getAdEventTracker().b(this.i, arrayList);
        r();
        this.d0 = true;
    }

    class c implements u4.b {
        final /* synthetic */ long a;
        final /* synthetic */ Integer b;
        final /* synthetic */ Long c;

        c(long j, Integer num, Long l) {
            this.a = j;
            this.b = num;
            this.c = l;
        }

        @Override // com.applovin.impl.u4.b
        public void a() {
            t9.this.T.setProgress((int) ((t9.this.q / this.a) * this.b.intValue()));
            t9.this.q += this.c.longValue();
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return t9.this.q < this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        this.p = SystemClock.elapsedRealtime();
    }

    protected void W() {
        boolean z = this.a0;
        this.a0 = !z;
        this.M.a(z ? 1.0f : 0.0f);
        d(this.a0);
        a(this.a0, 0L);
    }

    @Override // com.applovin.impl.o9
    protected void o() {
        super.a(A(), this.Z, D(), this.i0);
    }

    protected void M() {
        long jW;
        long millis;
        if (this.a.V() >= 0 || this.a.W() >= 0) {
            if (this.a.V() >= 0) {
                jW = this.a.V();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.a;
                long j = this.b0;
                long j2 = j > 0 ? j : 0L;
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
                    j2 += millis;
                }
                jW = (long) (j2 * (((double) this.a.W()) / 100.0d));
            }
            b(jW);
        }
    }

    @Override // com.applovin.impl.o9
    public void b(boolean z) {
        super.b(z);
        if (z) {
            a(0L);
            if (this.d0) {
                this.Y.b();
                return;
            }
            return;
        }
        if (this.d0) {
            this.Y.c();
        } else {
            x();
        }
    }

    @Override // com.applovin.impl.o9
    public void i() {
        super.i();
        this.K.a(this.R);
        this.K.a((View) this.O);
        if (!k() || this.d0) {
            R();
        }
    }

    @Override // com.applovin.impl.jb.a
    public void b() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        B();
    }

    @Override // com.applovin.impl.o9
    public void h() {
        super.h();
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        this.K.a(this.l);
        this.p = SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.a.getAdIdNumber() && this.Z) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.e0 || this.M.isPlaying()) {
                    return;
                }
                d("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }

    private class e implements qh.c, com.applovin.exoplayer2.ui.d.e, AppLovinTouchToClickListener.OnClickListener {
        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(int i) {
            qh.c.CC.$default$a(this, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(fo foVar, int i) {
            qh.c.CC.$default$a(this, foVar, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(ph phVar) {
            qh.c.CC.$default$a(this, phVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(po poVar, to toVar) {
            qh.c.CC.$default$a(this, poVar, toVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh.b bVar) {
            qh.c.CC.$default$a(this, bVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh.f fVar, qh.f fVar2, int i) {
            qh.c.CC.$default$a(this, fVar, fVar2, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh qhVar, qh.d dVar) {
            qh.c.CC.$default$a(this, qhVar, dVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(sd sdVar, int i) {
            qh.c.CC.$default$a(this, sdVar, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(ud udVar) {
            qh.c.CC.$default$a(this, udVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(boolean z, int i) {
            qh.c.CC.$default$a(this, z, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b() {
            qh.c.CC.$default$b(this);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(nh nhVar) {
            qh.c.CC.$default$b(this, nhVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(boolean z) {
            qh.c.CC.$default$b(this, z);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(boolean z, int i) {
            qh.c.CC.$default$b(this, z, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void c(int i) {
            qh.c.CC.$default$c(this, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void c(boolean z) {
            qh.c.CC.$default$c(this, z);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void d(boolean z) {
            qh.c.CC.$default$d(this, z);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void e(int i) {
            qh.c.CC.$default$e(this, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void e(boolean z) {
            qh.c.CC.$default$e(this, z);
        }

        private e() {
        }

        @Override // com.applovin.impl.qh.c
        public void b(int i) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Player state changed to state " + i + " and will play when ready: " + t9.this.M.l());
            }
            if (i == 2) {
                t9.this.S();
                return;
            }
            if (i != 3) {
                if (i == 4) {
                    com.applovin.impl.sdk.n nVar2 = t9.this.c;
                    if (com.applovin.impl.sdk.n.a()) {
                        t9.this.c.a("AppLovinFullscreenActivity", "Video completed");
                    }
                    t9 t9Var = t9.this;
                    t9Var.e0 = true;
                    if (!t9Var.s) {
                        t9Var.T();
                        return;
                    } else {
                        if (t9Var.k()) {
                            t9.this.R();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            t9 t9Var2 = t9.this;
            t9Var2.M.a(!t9Var2.a0 ? 1 : 0);
            t9 t9Var3 = t9.this;
            t9Var3.t = (int) TimeUnit.MILLISECONDS.toSeconds(t9Var3.M.getDuration());
            t9 t9Var4 = t9.this;
            t9Var4.c(t9Var4.M.getDuration());
            t9.this.M();
            com.applovin.impl.sdk.n nVar3 = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "MediaPlayer prepared: " + t9.this.M);
            }
            t9.this.X.b();
            t9 t9Var5 = t9.this;
            if (t9Var5.O != null) {
                t9Var5.N();
            }
            t9.this.C();
            if (t9.this.E.b()) {
                t9.this.x();
            }
        }

        @Override // com.applovin.impl.qh.c
        public void a(nh nhVar) {
            t9.this.d("Video view error (" + yp.a(nhVar) + ")");
            t9.this.f();
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            t9.this.a(motionEvent, (Bundle) null);
        }

        @Override // com.applovin.exoplayer2.ui.d.e
        public void d(int i) {
            if (i == 0) {
                t9.this.L.c();
            }
        }

        /* synthetic */ e(t9 t9Var, a aVar) {
            this();
        }
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t9 t9Var = t9.this;
            if (view == t9Var.O) {
                t9Var.U();
                return;
            }
            if (view == t9Var.Q) {
                t9Var.W();
                return;
            }
            com.applovin.impl.sdk.n nVar = t9Var.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }

        /* synthetic */ f(t9 t9Var, a aVar) {
            this();
        }
    }

    private class d implements rr.a {
        private d() {
        }

        @Override // com.applovin.impl.rr.a
        public void b(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            t9.this.a(lVar.getAndClearLastClickEvent(), (Bundle) null);
        }

        @Override // com.applovin.impl.rr.a
        public void a(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            t9.this.f();
        }

        @Override // com.applovin.impl.rr.a
        public void d(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            t9.this.U();
        }

        @Override // com.applovin.impl.rr.a
        public void c(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Fully Watched from video button...");
            }
            t9.this.H = true;
        }

        /* synthetic */ d(t9 t9Var, a aVar) {
            this();
        }

        @Override // com.applovin.impl.rr.a
        public void a(com.applovin.impl.adview.l lVar, Bundle bundle) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Attempting to launch Direct Download from video button...");
            }
            t9.this.a(lVar.getAndClearLastClickEvent(), bundle);
        }

        @Override // com.applovin.impl.rr.a
        public void b(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Attempting to report a template error from video button...");
            }
            tp.b(uri, t9.this.i.getController().i(), t9.this.b);
        }

        @Override // com.applovin.impl.rr.a
        public void a(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = t9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                t9.this.c.a("AppLovinFullscreenActivity", "Attempting to load a url from video button...");
            }
            tp.a(uri, t9.this.i.getController(), t9.this.b);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        tr.a(this.R, str, "AppLovinFullscreenActivity", this.b);
    }

    @Override // com.applovin.impl.o9
    protected void a(final String str, long j) {
        super.a(str, j);
        if (this.R == null || j < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str);
            }
        }, j);
    }

    private void a(ProgressBar progressBar, int i, int i2) {
        progressBar.setMax(i2);
        progressBar.setPadding(0, 0, 0, 0);
        if (z3.f()) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // com.applovin.impl.o9
    public void a(ViewGroup viewGroup) {
        this.K.a(this.Q, this.O, this.R, this.N, this.S, this.P, this.L, this.i, this.j, null, viewGroup);
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.M.a(true);
        if (this.a.f1()) {
            this.E.b(this.a, new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.H();
                }
            });
        }
        if (this.Z) {
            S();
        }
        this.i.renderAd(this.a);
        if (this.O != null) {
            this.b.i0().a(new jn(this.b, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.N();
                }
            }), tm.b.TIMEOUT, this.a.n0(), true);
        }
        super.c(this.a0);
    }

    @Override // com.applovin.impl.o9
    public void a(long j) {
        a(new Runnable() { // from class: com.applovin.impl.t9$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.L();
            }
        }, j);
    }
}

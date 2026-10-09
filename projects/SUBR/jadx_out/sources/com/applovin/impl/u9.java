package com.applovin.impl;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
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
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class u9 extends o9 implements AppLovinCommunicatorSubscriber {
    private final v9 K;
    private MediaPlayer L;
    protected final AppLovinVideoView M;
    protected final o N;
    protected final com.applovin.impl.adview.g O;
    protected h3 P;
    protected final ImageView Q;
    protected com.applovin.impl.adview.l R;
    protected final ProgressBar S;
    protected ProgressBar T;
    protected ImageView U;
    private final e V;
    private final d W;
    private final Handler X;
    private final Handler Y;
    protected final u4 Z;
    protected final u4 a0;
    private final boolean b0;
    protected boolean c0;
    protected long d0;
    private int e0;
    private int f0;
    protected boolean g0;
    private boolean h0;
    private final AtomicBoolean i0;
    private final AtomicBoolean j0;
    private long k0;
    private long l0;

    public void T() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Showing postitial...");
        }
        e(this.a.j1());
        long jU = this.a.U();
        if (jU > 0) {
            this.q = 0L;
            Long l = (Long) this.b.a(sj.C2);
            Integer num = (Integer) this.b.a(sj.F2);
            ProgressBar progressBar = new ProgressBar(this.d, null, R.attr.progressBarStyleHorizontal);
            this.T = progressBar;
            a(progressBar, this.a.T(), num.intValue());
            this.a0.a("POSTITIAL_PROGRESS_BAR", l.longValue(), new c(jU, num, l));
            this.a0.b();
        }
        this.K.a(this.k, this.j, this.i, this.T);
        a("javascript:al_onPoststitialShow(" + this.x + "," + this.y + ");", this.a.D());
        if (this.k != null) {
            if (this.a.p() >= 0) {
                a(this.k, this.a.p(), new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.K();
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
        this.g0 = true;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdPresenter";
    }

    @Override // com.applovin.impl.o9
    public void t() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "Destroying video components");
        }
        try {
            if (((Boolean) this.b.a(sj.b6)).booleanValue()) {
                tr.d(this.R);
                this.R = null;
            }
            if (this.b0) {
                AppLovinCommunicator.getInstance(this.d).unsubscribe(this, "video_caching_failed");
            }
            AppLovinVideoView appLovinVideoView = this.M;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.M.stopPlayback();
            }
            MediaPlayer mediaPlayer = this.L;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.n.c("AppLovinFullscreenActivity", "Unable to destroy presenter", th);
        }
        super.t();
    }

    @Override // com.applovin.impl.o9
    public void x() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Pausing video");
        }
        this.f0 = this.M.getCurrentPosition();
        this.M.pause();
        this.Z.c();
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Paused video at position " + this.f0 + "ms");
        }
    }

    protected void d(String str) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.a);
        }
        if (this.i0.compareAndSet(false, true)) {
            if (yp.a(sj.O0, this.b)) {
                this.b.A().d(this.a, com.applovin.impl.sdk.j.m());
            }
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.C;
            if (appLovinAdDisplayListener instanceof pb) {
                ((pb) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            this.b.D().a(this.a instanceof aq ? "handleVastVideoError" : "handleVideoError", str, this.a);
            f();
        }
    }

    private void d(boolean z) {
        if (z3.f()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.d.getDrawable(z ? com.applovin.sdk.R.drawable.applovin_ic_unmute_to_mute : com.applovin.sdk.R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.Q.setScaleType(ImageView.ScaleType.FIT_XY);
                this.Q.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        ImageViewUtils.setImageUri(this.Q, z ? this.a.M() : this.a.g0(), this.b);
    }

    public u9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.K = new v9(this.a, this.d, this.b);
        a aVar = null;
        this.U = null;
        e eVar = new e(this, aVar);
        this.V = eVar;
        d dVar = new d(this, aVar);
        this.W = dVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.X = handler;
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.Y = handler2;
        u4 u4Var = new u4(handler, this.b);
        this.Z = u4Var;
        this.a0 = new u4(handler2, this.b);
        boolean zK0 = this.a.K0();
        this.b0 = zK0;
        this.c0 = yp.e(this.b);
        this.f0 = -1;
        this.i0 = new AtomicBoolean();
        this.j0 = new AtomicBoolean();
        this.k0 = -2L;
        this.l0 = 0L;
        if (bVar.hasVideoUrl()) {
            AppLovinVideoView appLovinVideoView = new AppLovinVideoView(activity);
            this.M = appLovinVideoView;
            appLovinVideoView.setOnPreparedListener(eVar);
            appLovinVideoView.setOnCompletionListener(eVar);
            appLovinVideoView.setOnErrorListener(eVar);
            appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(jVar, sj.j0, activity, eVar));
            bVar.e().putString("video_view_address", zq.a(appLovinVideoView));
            f fVar = new f(this, aVar);
            if (bVar.m0() >= 0) {
                com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.d0(), activity);
                this.O = gVar;
                gVar.setVisibility(8);
                gVar.setOnClickListener(fVar);
            } else {
                this.O = null;
            }
            if (a(this.c0, jVar)) {
                ImageView imageView = new ImageView(activity);
                this.Q = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(fVar);
                d(this.c0);
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
                o oVar = new o(activity, ((Integer) jVar.a(sj.w2)).intValue(), R.attr.progressBarStyleLarge);
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
                ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleHorizontal);
                this.S = progressBar;
                a(progressBar, bVar.s0(), num.intValue());
                u4Var.a("PROGRESS_BAR", l.longValue(), new b(num));
                return;
            }
            this.S = null;
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
            u9 u9Var = u9.this;
            if (u9Var.P != null) {
                long seconds = ((long) this.a) - TimeUnit.MILLISECONDS.toSeconds(u9Var.M.getCurrentPosition());
                if (seconds <= 0) {
                    u9.this.u = true;
                } else if (u9.this.P()) {
                    u9.this.P.setProgress((int) seconds);
                }
            }
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return u9.this.P();
        }
    }

    class b implements u4.b {
        final /* synthetic */ Integer a;

        b(Integer num) {
            this.a = num;
        }

        @Override // com.applovin.impl.u4.b
        public void a() {
            u9 u9Var = u9.this;
            if (u9Var.g0) {
                u9Var.S.setVisibility(8);
            } else {
                u9.this.S.setProgress((int) ((u9Var.M.getCurrentPosition() / u9.this.d0) * this.a.intValue()));
            }
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return !u9.this.g0;
        }
    }

    @Override // com.applovin.impl.o9
    public void y() {
        a((ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        a(250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.j0.compareAndSet(false, true)) {
            a(this.O, this.a.m0(), new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.H();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        this.k0 = -1L;
        this.l0 = SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.impl.o9
    public void f() {
        this.Z.a();
        this.a0.a();
        this.X.removeCallbacksAndMessages(null);
        this.Y.removeCallbacksAndMessages(null);
        o();
        super.f();
    }

    protected void c(long j) {
        this.d0 = j;
    }

    @Override // com.applovin.impl.jb.a
    public void c() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    private void L() {
        com.applovin.impl.adview.l lVar;
        qq qqVarK0 = this.a.k0();
        if (qqVarK0 == null || !qqVarK0.j() || this.g0 || (lVar = this.R) == null) {
            return;
        }
        final boolean z = lVar.getVisibility() == 4;
        final long jH = qqVarK0.h();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(z, jH);
            }
        });
    }

    protected boolean P() {
        return (this.u || this.g0 || !this.M.isPlaying()) ? false : true;
    }

    public void U() {
        this.k0 = SystemClock.elapsedRealtime() - this.l0;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.k0 + "ms");
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

    private void e(boolean z) {
        this.e0 = A();
        if (z) {
            this.M.pause();
        } else {
            this.M.stopPlayback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z, long j) {
        if (z) {
            zq.a(this.R, j, (Runnable) null);
        } else {
            zq.b(this.R, j, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        if (this.g0) {
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
        if (this.f0 >= 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Resuming video at position " + this.f0 + "ms for MediaPlayer: " + this.L);
            }
            this.M.seekTo(this.f0);
            this.M.start();
            this.Z.b();
            this.f0 = -1;
            a(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.G();
                }
            }, 250L);
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Invalid last video position");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.a();
            final o oVar2 = this.N;
            Objects.requireNonNull(oVar2);
            a(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    oVar2.b();
                }
            }, 2000L);
        }
    }

    protected void S() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.J();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        o oVar = this.N;
        if (oVar != null) {
            oVar.a();
        }
    }

    protected void C() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda0
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
        if (this.H && this.a.c1()) {
            return true;
        }
        return E();
    }

    protected boolean E() {
        return A() >= this.a.o0();
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
        L();
    }

    protected int A() {
        long currentPosition = this.M.getCurrentPosition();
        if (this.h0) {
            return 100;
        }
        if (currentPosition > 0) {
            return (int) ((currentPosition / this.d0) * 100.0f);
        }
        return this.e0;
    }

    protected boolean Q() {
        return k() && !D();
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
            u9.this.T.setProgress((int) ((u9.this.q / this.a) * this.b.intValue()));
            u9.this.q += this.c.longValue();
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return u9.this.q < this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K() {
        this.p = SystemClock.elapsedRealtime();
    }

    protected void V() {
        MediaPlayer mediaPlayer = this.L;
        if (mediaPlayer == null) {
            return;
        }
        try {
            float f2 = this.c0 ? 1.0f : 0.0f;
            mediaPlayer.setVolume(f2, f2);
            boolean z = !this.c0;
            this.c0 = z;
            d(z);
            a(this.c0, 0L);
        } catch (Throwable unused) {
        }
    }

    @Override // com.applovin.impl.o9
    protected void o() {
        super.a(A(), this.b0, D(), this.k0);
    }

    protected void N() {
        long jW;
        long millis;
        if (this.a.V() >= 0 || this.a.W() >= 0) {
            if (this.a.V() >= 0) {
                jW = this.a.V();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.a;
                long j = this.d0;
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
    public void i() {
        super.i();
        this.K.a(this.R);
        this.K.a((View) this.O);
        if (!k() || this.g0) {
            R();
        }
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
            if (messageData.getLong("ad_id") == this.a.getAdIdNumber() && this.b0) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.h0 || this.M.isPlaying()) {
                    return;
                }
                d("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }

    @Override // com.applovin.impl.o9
    public void b(boolean z) {
        super.b(z);
        if (z) {
            a(0L);
            if (this.g0) {
                this.a0.b();
                return;
            }
            return;
        }
        if (this.g0) {
            this.a0.c();
        } else {
            x();
        }
    }

    private class e implements MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnCompletionListener, AppLovinTouchToClickListener.OnClickListener {
        private e() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            u9.this.L = mediaPlayer;
            mediaPlayer.setOnInfoListener(u9.this.V);
            mediaPlayer.setOnErrorListener(u9.this.V);
            float f = !u9.this.c0 ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            u9.this.t = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
            u9.this.c(mediaPlayer.getDuration());
            u9.this.N();
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "MediaPlayer prepared: " + u9.this.L);
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "MediaPlayer Info: (" + i + ", " + i2 + ")");
            }
            if (i == 701) {
                u9.this.S();
                return false;
            }
            if (i != 3) {
                if (i != 702) {
                    return false;
                }
                u9.this.C();
                return false;
            }
            u9.this.Z.b();
            u9 u9Var = u9.this;
            if (u9Var.O != null) {
                u9Var.O();
            }
            u9.this.C();
            if (!u9.this.E.b()) {
                return false;
            }
            u9.this.x();
            return false;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            u9.this.d("Video view error (" + i + "," + i2 + ")");
            u9.this.M.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Video completed");
            }
            u9.this.h0 = true;
            u9 u9Var = u9.this;
            if (!u9Var.s) {
                u9Var.T();
            } else if (u9Var.k()) {
                u9.this.R();
            }
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            u9.this.a(motionEvent, (Bundle) null);
        }

        /* synthetic */ e(u9 u9Var, a aVar) {
            this();
        }
    }

    @Override // com.applovin.impl.jb.a
    public void b() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        B();
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u9 u9Var = u9.this;
            if (view == u9Var.O) {
                u9Var.U();
                return;
            }
            if (view == u9Var.Q) {
                u9Var.V();
                return;
            }
            com.applovin.impl.sdk.n nVar = u9Var.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }

        /* synthetic */ f(u9 u9Var, a aVar) {
            this();
        }
    }

    private class d implements rr.a {
        private d() {
        }

        @Override // com.applovin.impl.rr.a
        public void b(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            u9.this.a(lVar.getAndClearLastClickEvent(), (Bundle) null);
        }

        @Override // com.applovin.impl.rr.a
        public void a(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            u9.this.f();
        }

        @Override // com.applovin.impl.rr.a
        public void d(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            u9.this.U();
        }

        @Override // com.applovin.impl.rr.a
        public void c(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Fully Watched from video button...");
            }
            u9.this.H = true;
        }

        /* synthetic */ d(u9 u9Var, a aVar) {
            this();
        }

        @Override // com.applovin.impl.rr.a
        public void a(com.applovin.impl.adview.l lVar, Bundle bundle) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Attempting to launch Direct Download from video button...");
            }
            u9.this.a(lVar.getAndClearLastClickEvent(), bundle);
        }

        @Override // com.applovin.impl.rr.a
        public void b(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Attempting to report a template error from video button...");
            }
            tp.b(uri, u9.this.i.getController().i(), u9.this.b);
        }

        @Override // com.applovin.impl.rr.a
        public void a(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.n nVar = u9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                u9.this.c.a("AppLovinFullscreenActivity", "Attempting to load a url from video button...");
            }
            tp.a(uri, u9.this.i.getController(), u9.this.b);
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
        a(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda6
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
        String str;
        this.K.a(this.Q, this.O, this.R, this.N, this.S, this.P, this.M, this.i, this.j, this.U, viewGroup);
        if (z3.i() && (str = this.b.f0().getExtraParameters().get("audio_focus_request")) != null) {
            this.M.setAudioFocusRequest(Integer.parseInt(str));
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (a(!this.b0)) {
            return;
        }
        this.M.setVideoURI(this.a.u0());
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        if (this.a.f1()) {
            this.E.b(this.a, new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.I();
                }
            });
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.M.start();
        if (this.b0) {
            S();
        }
        this.i.renderAd(this.a);
        if (this.O != null) {
            this.b.i0().a(new jn(this.b, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.O();
                }
            }), tm.b.TIMEOUT, this.a.n0(), true);
        }
        super.c(this.c0);
    }

    @Override // com.applovin.impl.o9
    public void a(long j) {
        a(new Runnable() { // from class: com.applovin.impl.u9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.M();
            }
        }, j);
    }
}

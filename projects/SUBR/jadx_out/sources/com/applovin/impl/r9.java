package com.applovin.impl;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class r9 extends t9 {
    private final aq k0;
    private final Set l0;

    public r9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.l0 = hashSet;
        aq aqVar = (aq) bVar;
        this.k0 = aqVar;
        aq.d dVar = aq.d.VIDEO;
        hashSet.addAll(aqVar.a(dVar, lq.a));
        a(aq.d.IMPRESSION);
        a(dVar, "creativeView");
        aqVar.getAdEventTracker().g();
    }

    @Override // com.applovin.impl.o9
    public void u() {
        super.u();
        a(this.d0 ? aq.d.COMPANION : aq.d.VIDEO, "pause");
        this.k0.getAdEventTracker().z();
    }

    @Override // com.applovin.impl.o9
    public void v() {
        super.v();
        a(this.d0 ? aq.d.COMPANION : aq.d.VIDEO, "resume");
        this.k0.getAdEventTracker().A();
    }

    @Override // com.applovin.impl.t9, com.applovin.impl.o9
    public void f() {
        if (this.k0 != null) {
            a(aq.d.VIDEO, "close");
            a(aq.d.COMPANION, "close");
        }
        super.f();
    }

    @Override // com.applovin.impl.t9, com.applovin.impl.o9
    public void y() {
        a((ViewGroup) null);
    }

    class a implements u4.b {
        a() {
        }

        @Override // com.applovin.impl.u4.b
        public void a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(r9.this.b0 - (r9.this.M.getDuration() - r9.this.M.getCurrentPosition()));
            int iA = r9.this.A();
            HashSet hashSet = new HashSet();
            for (kq kqVar : new HashSet(r9.this.l0)) {
                if (kqVar.a(seconds, iA)) {
                    hashSet.add(kqVar);
                    r9.this.l0.remove(kqVar);
                }
            }
            r9.this.a(hashSet);
            if (iA >= 25 && iA < 50) {
                r9.this.k0.getAdEventTracker().x();
                return;
            }
            if (iA >= 50 && iA < 75) {
                r9.this.k0.getAdEventTracker().y();
            } else if (iA >= 75) {
                r9.this.k0.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.u4.b
        public boolean b() {
            return !r9.this.d0;
        }
    }

    @Override // com.applovin.impl.t9
    protected void c(long j) {
        super.c(j);
        this.k0.getAdEventTracker().b(TimeUnit.MILLISECONDS.toSeconds(j), yp.e(this.b));
    }

    @Override // com.applovin.impl.t9, com.applovin.impl.o9
    public void x() {
        this.X.c();
        super.x();
    }

    @Override // com.applovin.impl.t9
    public void B() {
        a(aq.d.VIDEO, "skip");
        this.k0.getAdEventTracker().B();
        super.B();
    }

    @Override // com.applovin.impl.t9
    protected void S() {
        super.S();
        aq aqVar = this.k0;
        if (aqVar != null) {
            aqVar.getAdEventTracker().j();
        }
    }

    @Override // com.applovin.impl.t9
    protected void C() {
        super.C();
        aq aqVar = this.k0;
        if (aqVar != null) {
            aqVar.getAdEventTracker().i();
        }
    }

    @Override // com.applovin.impl.t9
    public void d(String str) {
        if (StringUtils.containsAtLeastOneSubstring(str, this.b.c(sj.X4))) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Not firing trackers for media error: " + str);
            }
        } else {
            a(aq.d.ERROR, fq.MEDIA_FILE_ERROR);
            this.k0.getAdEventTracker().b(str);
        }
        super.d(str);
    }

    @Override // com.applovin.impl.t9
    public void W() {
        super.W();
        a(aq.d.VIDEO, this.a0 ? "mute" : "unmute");
        this.k0.getAdEventTracker().b(this.a0);
    }

    @Override // com.applovin.impl.t9
    public void T() {
        X();
        if (mq.a(this.k0)) {
            if (this.d0) {
                return;
            }
            a(aq.d.COMPANION, "creativeView");
            this.k0.getAdEventTracker().w();
            super.T();
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
        }
        f();
    }

    @Override // com.applovin.impl.t9
    public void a(MotionEvent motionEvent, Bundle bundle) {
        a(aq.d.VIDEO_CLICK);
        this.k0.getAdEventTracker().v();
        super.a(motionEvent, bundle);
    }

    private void X() {
        if (!E() || this.l0.isEmpty()) {
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.k("AppLovinFullscreenActivity", "Firing " + this.l0.size() + " un-fired video progress trackers when video was completed.");
        }
        a(this.l0);
    }

    @Override // com.applovin.impl.t9
    protected void M() {
        long jW;
        int iP;
        long millis = 0;
        if (this.k0.V() >= 0 || this.k0.W() >= 0) {
            if (this.k0.V() >= 0) {
                jW = this.k0.V();
            } else {
                aq aqVar = this.k0;
                nq nqVarV1 = aqVar.v1();
                if (nqVarV1 != null && nqVarV1.d() > 0) {
                    millis = TimeUnit.SECONDS.toMillis(nqVarV1.d());
                } else {
                    long j = this.b0;
                    if (j > 0) {
                        millis = j;
                    }
                }
                if (aqVar.Z0() && (iP = (int) aqVar.p()) > 0) {
                    millis += TimeUnit.SECONDS.toMillis(iP);
                }
                jW = (long) (millis * (((double) this.k0.W()) / 100.0d));
            }
            b(jW);
        }
    }

    private void a(aq.d dVar) {
        a(dVar, fq.UNSPECIFIED);
    }

    private void a(aq.d dVar, fq fqVar) {
        a(dVar, "", fqVar);
    }

    private void a(aq.d dVar, String str) {
        a(dVar, str, fq.UNSPECIFIED);
    }

    private void a(aq.d dVar, String str, fq fqVar) {
        a(this.k0.a(dVar, str), fqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set set) {
        a(set, fq.UNSPECIFIED);
    }

    private void a(Set set, fq fqVar) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.M.getCurrentPosition());
        oq oqVarW1 = this.k0.w1();
        Uri uriD = oqVarW1 != null ? oqVarW1.d() : null;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        mq.a(set, seconds, uriD, fqVar, this.b);
    }

    @Override // com.applovin.impl.t9, com.applovin.impl.o9
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        this.X.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new a());
        ArrayList arrayList = new ArrayList();
        o oVar = this.N;
        if (oVar != null) {
            arrayList.add(new ng(oVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.g gVar = this.O;
        if (gVar != null) {
            arrayList.add(new ng(gVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        h3 h3Var = this.P;
        if (h3Var != null) {
            arrayList.add(new ng(h3Var, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.S;
        if (progressBar != null) {
            arrayList.add(new ng(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.T;
        if (progressBar2 != null) {
            arrayList.add(new ng(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.Q;
        if (imageView != null) {
            arrayList.add(new ng(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.l lVar = this.R;
        if (lVar != null) {
            arrayList.add(new ng(lVar, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new ng(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.k0.getAdEventTracker().b(this.L, arrayList);
    }
}

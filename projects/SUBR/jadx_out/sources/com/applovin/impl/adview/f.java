package com.applovin.impl.adview;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.s6;
import com.applovin.impl.sj;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
class f extends Dialog implements s6 {
    private final Activity a;
    private final com.applovin.impl.sdk.j b;
    private final com.applovin.impl.sdk.n c;
    private final b d;
    private final com.applovin.impl.sdk.ad.a f;
    private RelativeLayout g;
    private e h;

    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            f.this.h.setClickable(true);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    f(com.applovin.impl.sdk.ad.a aVar, b bVar, Activity activity, com.applovin.impl.sdk.j jVar) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        if (aVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("No main view specified");
        }
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.b = jVar;
        this.c = jVar.I();
        this.a = activity;
        this.d = bVar;
        this.f = aVar;
        requestWindowFeature(1);
        setCancelable(false);
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.d.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.a);
        this.g = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.g.setBackgroundColor(-1157627904);
        this.g.addView(this.d);
        if (!this.f.r1()) {
            a(this.f.k1());
            g();
        }
        setContentView(this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.g.removeView(this.d);
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        try {
            if (this.h == null) {
                a();
            }
            this.h.setVisibility(0);
            this.h.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setAnimationListener(new a());
            this.h.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("ExpandedAdDialog", "Unable to fade in close button", th);
            }
            a();
        }
    }

    private void g() {
        this.a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.f$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.f();
            }
        });
    }

    public b c() {
        return this.d;
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.s6
    public void dismiss() {
        this.a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.f$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.e();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.d.a("javascript:al_onBackPressed();");
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.a.getWindow().getAttributes().flags, this.a.getWindow().getAttributes().flags);
                window.addFlags(16777216);
            } else if (com.applovin.impl.sdk.n.a()) {
                this.c.b("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("ExpandedAdDialog", "Setting window flags failed.", th);
            }
        }
    }

    private void a() {
        this.d.a("javascript:al_onCloseTapped();");
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (this.h.isClickable()) {
            this.h.performClick();
        }
    }

    private void a(e.a aVar) {
        if (this.h != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k("ExpandedAdDialog", "Attempting to create duplicate close button");
                return;
            }
            return;
        }
        e eVarA = e.a(aVar, this.a);
        this.h = eVarA;
        eVarA.setVisibility(8);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.f$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.a(view);
            }
        });
        this.h.setClickable(false);
        int iA = a(((Integer) this.b.a(sj.H1)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA);
        layoutParams.addRule(10);
        com.applovin.impl.sdk.j jVar = this.b;
        sj sjVar = sj.K1;
        layoutParams.addRule(((Boolean) jVar.a(sjVar)).booleanValue() ? 9 : 11);
        this.h.a(iA);
        int iA2 = a(((Integer) this.b.a(sj.J1)).intValue());
        int iA3 = a(((Integer) this.b.a(sj.I1)).intValue());
        layoutParams.setMargins(iA3, iA2, iA3, 0);
        this.g.addView(this.h, layoutParams);
        this.h.bringToFront();
        int iA4 = a(((Integer) this.b.a(sj.L1)).intValue());
        View view = new View(this.a);
        view.setBackgroundColor(0);
        int i = iA + iA4;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i);
        layoutParams2.addRule(10);
        layoutParams2.addRule(((Boolean) this.b.a(sjVar)).booleanValue() ? 9 : 11);
        layoutParams2.setMargins(iA3 - a(5), iA2 - a(5), iA3 - a(5), 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.f$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.b(view2);
            }
        });
        this.g.addView(view, layoutParams2);
        view.bringToFront();
    }

    public com.applovin.impl.sdk.ad.a b() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a();
    }

    private int a(int i) {
        return AppLovinSdkUtils.dpToPx(this.a, i);
    }
}

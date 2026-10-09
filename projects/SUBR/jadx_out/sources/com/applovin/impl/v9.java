package com.applovin.impl;

import android.app.Activity;
import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class v9 extends n9 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.applovin.impl.n9
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.g gVar) {
        super.a(gVar);
    }

    public v9(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.j jVar) {
        super(bVar, activity, jVar);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x009d  */
    /* JADX WARN: Code duplicated, block: B:20:0x010c  */
    /* JADX WARN: Code duplicated, block: B:23:0x012c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0142  */
    /* JADX WARN: Code duplicated, block: B:27:0x014a  */
    /* JADX WARN: Code duplicated, block: B:28:0x014e  */
    /* JADX WARN: Code duplicated, block: B:31:0x015d  */
    /* JADX WARN: Code duplicated, block: B:33:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:35:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:37:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:40:0x0214  */
    /* JADX WARN: Code duplicated, block: B:42:0x021e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0261  */
    /* JADX WARN: Code duplicated, block: B:48:0x026c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0272  */
    public void a(ImageView imageView, com.applovin.impl.adview.g gVar, final com.applovin.impl.adview.l lVar, o oVar, ProgressBar progressBar, h3 h3Var, View view, AppLovinAdView appLovinAdView, com.applovin.impl.adview.k kVar, ImageView imageView2, ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        aq aqVar;
        int i;
        int i2;
        qq qqVarK0;
        if (this.c.r0() == com.applovin.impl.sdk.ad.b.e.TOP) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2, 48);
        } else if (this.c.r0() == com.applovin.impl.sdk.ad.b.e.BOTTOM) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        } else {
            if (this.c.r0() == com.applovin.impl.sdk.ad.b.e.LEFT) {
                layoutParams = new FrameLayout.LayoutParams(-2, -1, 3);
            } else if (this.c.r0() == com.applovin.impl.sdk.ad.b.e.RIGHT) {
                layoutParams = new FrameLayout.LayoutParams(-2, -1, 5);
            } else {
                layoutParams = this.e;
            }
            appLovinAdView.setLayoutParams(this.e);
            this.d.addView(appLovinAdView);
            View view2 = new View(this.b);
            view2.setLayoutParams(this.e);
            view2.setBackgroundColor(Color.argb(254, 0, 0, 0));
            view2.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view3, MotionEvent motionEvent) {
                    return v9.a(view3, motionEvent);
                }
            });
            this.d.addView(view2);
            view.setLayoutParams(layoutParams);
            this.d.addView(view);
            if (lVar != null) {
                qqVarK0 = this.c.k0();
                LinearLayout linearLayout = new LinearLayout(this.b);
                linearLayout.setOrientation(1);
                linearLayout.setWeightSum(100.0f);
                linearLayout.setGravity(qqVarK0.e());
                ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                LinearLayout linearLayout2 = new LinearLayout(this.b);
                linearLayout2.setOrientation(0);
                linearLayout2.setWeightSum(100.0f);
                linearLayout2.setGravity(qqVarK0.e());
                ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, 0, qqVarK0.f());
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -1, qqVarK0.i());
                int iDpToPx = AppLovinSdkUtils.dpToPx(this.b, qqVarK0.g());
                layoutParams4.setMargins(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
                linearLayout2.addView(lVar, layoutParams4);
                linearLayout.addView(linearLayout2, layoutParams3);
                this.d.addView(linearLayout, layoutParams2);
                if (qqVarK0.a() > 0.0f) {
                    lVar.setVisibility(4);
                    long jC = yp.c(qqVarK0.a());
                    final long jB = qqVarK0.b();
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            zq.a(lVar, jB, (Runnable) null);
                        }
                    }, jC);
                }
                if (qqVarK0.c() > 0.0f) {
                    long jC2 = yp.c(qqVarK0.c());
                    final long jD = qqVarK0.d();
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            zq.b(lVar, jD, null);
                        }
                    }, jC2);
                }
            }
            if (gVar != null) {
                if (this.c.I0()) {
                    i = 48;
                    i2 = 3;
                } else {
                    i = 48;
                    i2 = 5;
                }
                a(this.c.l(), i | i2, gVar);
            }
            if (imageView != null) {
                int iDpToPx2 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.q2)).intValue());
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(iDpToPx2, iDpToPx2, ((Integer) this.a.a(sj.s2)).intValue());
                int iDpToPx3 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.r2)).intValue());
                layoutParams5.setMargins(iDpToPx3, iDpToPx3, iDpToPx3, iDpToPx3);
                this.d.addView(imageView, layoutParams5);
            }
            if (oVar != null) {
                this.d.addView(oVar, this.e);
            }
            if (h3Var != null) {
                int iDpToPx4 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.Y1)).intValue());
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(iDpToPx4, iDpToPx4, ((Integer) this.a.a(sj.X1)).intValue());
                int iDpToPx5 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.W1)).intValue());
                layoutParams6.setMargins(iDpToPx5, iDpToPx5, iDpToPx5, iDpToPx5);
                this.d.addView(h3Var, layoutParams6);
            }
            if (progressBar != null) {
                FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, 20, 80);
                layoutParams7.setMargins(0, 0, 0, ((Integer) this.a.a(sj.v2)).intValue());
                this.d.addView(progressBar, layoutParams7);
            }
            if (imageView2 != null) {
                aqVar = (aq) this.c;
                if (aqVar.x1()) {
                    int iDpToPx6 = AppLovinSdkUtils.dpToPx(this.b, aqVar.r1().g());
                    int iDpToPx7 = AppLovinSdkUtils.dpToPx(this.b, aqVar.r1().d());
                    int iDpToPx8 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.N4)).intValue());
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(iDpToPx6, iDpToPx7, 83);
                    layoutParams8.setMargins(iDpToPx8, iDpToPx8, iDpToPx8, iDpToPx8);
                    this.d.addView(imageView2, layoutParams8);
                }
            }
            if (kVar != null) {
                this.d.addView(kVar, this.e);
            }
            if (viewGroup != null) {
                viewGroup.addView(this.d);
            } else {
                this.b.setContentView(this.d);
            }
        }
        appLovinAdView.setLayoutParams(this.e);
        this.d.addView(appLovinAdView);
        View view3 = new View(this.b);
        view3.setLayoutParams(this.e);
        view3.setBackgroundColor(Color.argb(254, 0, 0, 0));
        view3.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                return v9.a(view4, motionEvent);
            }
        });
        this.d.addView(view3);
        view.setLayoutParams(layoutParams);
        this.d.addView(view);
        if (lVar != null) {
            qqVarK0 = this.c.k0();
            LinearLayout linearLayout3 = new LinearLayout(this.b);
            linearLayout3.setOrientation(1);
            linearLayout3.setWeightSum(100.0f);
            linearLayout3.setGravity(qqVarK0.e());
            ViewGroup.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -1);
            LinearLayout linearLayout4 = new LinearLayout(this.b);
            linearLayout4.setOrientation(0);
            linearLayout4.setWeightSum(100.0f);
            linearLayout4.setGravity(qqVarK0.e());
            ViewGroup.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, 0, qqVarK0.f());
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, -1, qqVarK0.i());
            int iDpToPx9 = AppLovinSdkUtils.dpToPx(this.b, qqVarK0.g());
            layoutParams11.setMargins(iDpToPx9, iDpToPx9, iDpToPx9, iDpToPx9);
            linearLayout4.addView(lVar, layoutParams11);
            linearLayout3.addView(linearLayout4, layoutParams10);
            this.d.addView(linearLayout3, layoutParams9);
            if (qqVarK0.a() > 0.0f) {
                lVar.setVisibility(4);
                long jC3 = yp.c(qqVarK0.a());
                final long jB2 = qqVarK0.b();
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        zq.a(lVar, jB2, (Runnable) null);
                    }
                }, jC3);
            }
            if (qqVarK0.c() > 0.0f) {
                long jC4 = yp.c(qqVarK0.c());
                final long jD2 = qqVarK0.d();
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.v9$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        zq.b(lVar, jD2, null);
                    }
                }, jC4);
            }
        }
        if (gVar != null) {
            if (this.c.I0()) {
                i = 48;
                i2 = 3;
            } else {
                i = 48;
                i2 = 5;
            }
            a(this.c.l(), i | i2, gVar);
        }
        if (imageView != null) {
            int iDpToPx10 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.q2)).intValue());
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(iDpToPx10, iDpToPx10, ((Integer) this.a.a(sj.s2)).intValue());
            int iDpToPx11 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.r2)).intValue());
            layoutParams12.setMargins(iDpToPx11, iDpToPx11, iDpToPx11, iDpToPx11);
            this.d.addView(imageView, layoutParams12);
        }
        if (oVar != null) {
            this.d.addView(oVar, this.e);
        }
        if (h3Var != null) {
            int iDpToPx12 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.Y1)).intValue());
            FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(iDpToPx12, iDpToPx12, ((Integer) this.a.a(sj.X1)).intValue());
            int iDpToPx13 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.W1)).intValue());
            layoutParams13.setMargins(iDpToPx13, iDpToPx13, iDpToPx13, iDpToPx13);
            this.d.addView(h3Var, layoutParams13);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-1, 20, 80);
            layoutParams14.setMargins(0, 0, 0, ((Integer) this.a.a(sj.v2)).intValue());
            this.d.addView(progressBar, layoutParams14);
        }
        if (imageView2 != null) {
            aqVar = (aq) this.c;
            if (aqVar.x1()) {
                int iDpToPx14 = AppLovinSdkUtils.dpToPx(this.b, aqVar.r1().g());
                int iDpToPx15 = AppLovinSdkUtils.dpToPx(this.b, aqVar.r1().d());
                int iDpToPx16 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.N4)).intValue());
                FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(iDpToPx14, iDpToPx15, 83);
                layoutParams15.setMargins(iDpToPx16, iDpToPx16, iDpToPx16, iDpToPx16);
                this.d.addView(imageView2, layoutParams15);
            }
        }
        if (kVar != null) {
            this.d.addView(kVar, this.e);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.d);
        } else {
            this.b.setContentView(this.d);
        }
    }

    @Override // com.applovin.impl.n9
    public /* bridge */ /* synthetic */ void a(View view) {
        super.a(view);
    }

    public void a(com.applovin.impl.adview.g gVar, com.applovin.impl.adview.k kVar, View view, ProgressBar progressBar) {
        if (view != null) {
            view.setVisibility(0);
        }
        e0.a(this.d, view);
        if (gVar != null) {
            a(this.c.l(), (this.c.A0() ? 3 : 5) | 48, gVar);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 20, ((Boolean) this.a.a(sj.D2)).booleanValue() ? 80 : 48);
            layoutParams.setMargins(0, 0, 0, ((Integer) this.a.a(sj.E2)).intValue());
            this.d.addView(progressBar, layoutParams);
        }
        if (kVar != null) {
            this.d.addView(kVar, this.e);
        }
    }
}

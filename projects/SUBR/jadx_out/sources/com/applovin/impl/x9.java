package com.applovin.impl;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class x9 extends n9 {
    @Override // com.applovin.impl.n9
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.g gVar) {
        super.a(gVar);
    }

    public x9(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.j jVar) {
        super(bVar, activity, jVar);
    }

    public void a(ImageView imageView, com.applovin.impl.adview.g gVar, com.applovin.impl.adview.g gVar2, o oVar, com.applovin.impl.adview.k kVar, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.d.addView(appLovinAdView);
        if (gVar != null) {
            a(this.c.l(), (this.c.I0() ? 3 : 5) | 48, gVar);
        }
        if (gVar2 != null) {
            a(this.c.l(), (this.c.A0() ? 3 : 5) | 48, gVar2);
        }
        if (imageView != null) {
            int iDpToPx = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.q2)).intValue());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPx, iDpToPx, ((Integer) this.a.a(sj.s2)).intValue());
            int iDpToPx2 = AppLovinSdkUtils.dpToPx(this.b, ((Integer) this.a.a(sj.r2)).intValue());
            layoutParams.setMargins(iDpToPx2, iDpToPx2, iDpToPx2, iDpToPx2);
            this.d.addView(imageView, layoutParams);
        }
        if (oVar != null) {
            this.d.addView(oVar, this.e);
        }
        if (kVar != null) {
            this.d.addView(kVar, new ViewGroup.LayoutParams(-1, -1));
        }
        if (viewGroup != null) {
            viewGroup.addView(this.d);
        } else {
            this.b.setContentView(this.d);
        }
    }
}

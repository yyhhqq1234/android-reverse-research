package com.applovin.impl;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
abstract class n9 {
    final com.applovin.impl.sdk.j a;
    final Activity b;
    final com.applovin.impl.sdk.ad.b c;
    final ViewGroup d;
    final FrameLayout.LayoutParams e;

    n9(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.j jVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        this.e = layoutParams;
        this.c = bVar;
        this.a = jVar;
        this.b = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.d = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout.setLayoutParams(layoutParams);
    }

    public void a(com.applovin.impl.adview.g gVar) {
        if (gVar == null || gVar.getParent() != null) {
            return;
        }
        a(this.c.l(), (this.c.A0() ? 3 : 5) | 48, gVar);
    }

    void a(com.applovin.impl.sdk.ad.b.d dVar, int i, com.applovin.impl.adview.g gVar) {
        gVar.a(dVar.a, dVar.e, dVar.d, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(gVar.getLayoutParams());
        int i2 = dVar.c;
        layoutParams.setMargins(i2, dVar.b, i2, 0);
        layoutParams.gravity = i;
        this.d.addView(gVar, layoutParams);
    }

    public void a(View view) {
        this.d.removeView(view);
    }
}

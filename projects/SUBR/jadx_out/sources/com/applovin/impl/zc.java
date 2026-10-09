package com.applovin.impl;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class zc extends FrameLayout implements View.OnClickListener {
    private a a;

    interface a {
        void a(zc zcVar);
    }

    public void setListener(a aVar) {
        this.a = aVar;
    }

    public zc(bd bdVar, Context context) {
        super(context);
        setOnClickListener(this);
        com.applovin.impl.adview.i iVar = new com.applovin.impl.adview.i(context);
        int iDpToPx = AppLovinSdkUtils.dpToPx(context, bdVar.e());
        iVar.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx, iDpToPx, 17));
        iVar.a(iDpToPx);
        addView(iVar);
        int iDpToPx2 = AppLovinSdkUtils.dpToPx(context, bdVar.e() + (bdVar.c() * 2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPx2, iDpToPx2, 8388661);
        int iDpToPx3 = AppLovinSdkUtils.dpToPx(context, bdVar.f());
        int iDpToPx4 = AppLovinSdkUtils.dpToPx(context, bdVar.d());
        layoutParams.setMargins(iDpToPx4, iDpToPx3, iDpToPx4, 0);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.a(this);
    }
}

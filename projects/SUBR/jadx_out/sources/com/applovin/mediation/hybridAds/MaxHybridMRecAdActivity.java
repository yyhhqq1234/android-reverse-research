package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import android.view.View;
import com.applovin.impl.ad;
import com.applovin.impl.bd;
import com.applovin.impl.sdk.j;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;

/* JADX INFO: loaded from: classes.dex */
public class MaxHybridMRecAdActivity extends ad {
    private View f;

    @Override // com.applovin.impl.ad, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(this.f, "MaxHybridMRecAdActivity");
    }

    public void a(bd bdVar, View view, j jVar, MaxAdapterListener maxAdapterListener) {
        super.a(bdVar, jVar, maxAdapterListener);
        this.f = view;
    }
}

package org.json;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import org.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;

/* JADX INFO: loaded from: classes3.dex */
public class gi extends j7<g2> implements InterstitialAdListener {
    public gi(po poVar, j1 j1Var, BaseAdAdapter<?, AdapterAdInteractionListener> baseAdAdapter, j5 j5Var, g2 g2Var) {
        super(poVar, j1Var, baseAdAdapter, new z2(j1Var.g(), j1Var.g().getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), j5Var, g2Var);
    }
}

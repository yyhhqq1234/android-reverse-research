package org.json;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import org.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;

/* JADX INFO: loaded from: classes3.dex */
public class rp extends m7<s2> implements RewardedVideoAdListener {
    public rp(po poVar, j1 j1Var, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, j5 j5Var, s2 s2Var) {
        super(poVar, j1Var, baseAdAdapter, new z2(j1Var.g(), j1Var.g().getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), j5Var, s2Var);
    }
}

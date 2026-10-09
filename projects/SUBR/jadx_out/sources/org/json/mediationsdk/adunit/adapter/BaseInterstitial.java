package org.json.mediationsdk.adunit.adapter;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.BaseAdapter;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import org.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseInterstitial<NetworkAdapter extends BaseAdapter> extends BaseAdInteractionAdapter<NetworkAdapter, InterstitialAdListener> {
    public BaseInterstitial(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.INTERSTITIAL, networkSettings);
    }
}

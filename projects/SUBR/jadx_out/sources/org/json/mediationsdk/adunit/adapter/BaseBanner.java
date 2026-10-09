package org.json.mediationsdk.adunit.adapter;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.BaseAdapter;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseBanner<NetworkAdapter extends BaseAdapter> extends BaseAdAdapter<NetworkAdapter, BannerAdListener> implements AdapterBannerInterface<BannerAdListener> {
    public BaseBanner(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.BANNER, networkSettings);
    }
}

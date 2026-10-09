package org.json.mediationsdk.adunit.adapter;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.BaseAdapter;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.listener.NativeAdListener;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseNativeAd<NetworkAdapter extends BaseAdapter> extends BaseAdAdapter<NetworkAdapter, NativeAdListener> implements AdapterNativeAdInterface<NativeAdListener> {
    public BaseNativeAd(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.NATIVE_AD, networkSettings);
    }
}

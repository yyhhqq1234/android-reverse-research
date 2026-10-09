package org.json.mediationsdk.adunit.adapter.internal;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAdInteractionAdapter<NetworkAdapter extends AdapterBaseInterface, Listener extends AdapterAdInteractionListener> extends BaseAdAdapter<NetworkAdapter, Listener> implements AdapterAdFullScreenInterface<Listener> {
    public BaseAdInteractionAdapter(IronSource.AD_UNIT ad_unit, NetworkSettings networkSettings) {
        super(ad_unit, networkSettings);
    }
}

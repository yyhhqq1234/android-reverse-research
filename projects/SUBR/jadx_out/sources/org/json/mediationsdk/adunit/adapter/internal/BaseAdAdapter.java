package org.json.mediationsdk.adunit.adapter.internal;

import java.util.UUID;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.c;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAdAdapter<NetworkAdapter extends AdapterBaseInterface, Listener> {
    private final IronSource.AD_UNIT mAdUnit;
    protected final UUID mAdUnitObjectId;
    protected final NetworkSettings mNetworkSettings;

    public BaseAdAdapter(IronSource.AD_UNIT ad_unit, NetworkSettings networkSettings) {
        this(ad_unit, networkSettings, null);
    }

    public BaseAdAdapter(IronSource.AD_UNIT ad_unit, NetworkSettings networkSettings, UUID uuid) {
        this.mAdUnit = ad_unit;
        this.mNetworkSettings = networkSettings;
        this.mAdUnitObjectId = uuid;
    }

    public NetworkAdapter getNetworkAdapter() {
        NetworkAdapter networkadapter = (NetworkAdapter) c.b().b(this.mNetworkSettings, this.mAdUnit, this.mAdUnitObjectId);
        if (networkadapter != null) {
            return networkadapter;
        }
        return null;
    }

    protected NetworkSettings getNetworkSettings() {
        return this.mNetworkSettings;
    }

    public void releaseMemory() {
    }
}

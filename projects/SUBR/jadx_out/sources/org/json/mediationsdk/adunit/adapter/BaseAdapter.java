package org.json.mediationsdk.adunit.adapter;

import java.util.List;
import org.json.mediationsdk.AdapterNetworkData;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAdapter implements AdapterBaseInterface, AdapterMetaDataInterface, AdapterConsentInterface, AdapterDebugInterface, AdapterSettingsInterface, AdapterNetworkDataInterface {
    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public LoadWhileShowSupportState getBannerLoadWhileShowSupportedState(NetworkSettings networkSettings) {
        return LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public LoadWhileShowSupportState getLoadWhileShowSupportedState(NetworkSettings networkSettings) {
        return LoadWhileShowSupportState.NONE;
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return true;
    }

    @Override // org.json.mediationsdk.adunit.adapter.AdapterDebugInterface
    public void setAdapterDebug(boolean z) {
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean z) {
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String str, List<String> list) {
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface
    public void setNetworkData(AdapterNetworkData adapterNetworkData) {
    }
}

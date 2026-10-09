package org.json.mediationsdk.adunit.adapter.internal;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterSettingsInterface {
    LoadWhileShowSupportState getBannerLoadWhileShowSupportedState(NetworkSettings networkSettings);

    LoadWhileShowSupportState getLoadWhileShowSupportedState(NetworkSettings networkSettings);

    boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit);
}

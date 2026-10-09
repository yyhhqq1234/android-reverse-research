package org.json.mediationsdk.adunit.adapter;

import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.BaseAdapter;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import org.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseRewardedVideo<NetworkAdapter extends BaseAdapter> extends BaseAdInteractionAdapter<NetworkAdapter, RewardedVideoAdListener> {
    public BaseRewardedVideo(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.REWARDED_VIDEO, networkSettings);
    }
}

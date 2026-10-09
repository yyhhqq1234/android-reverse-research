package org.json.mediationsdk.sdk;

import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public interface LevelPlayRewardedVideoBaseListener {
    void onAdClicked(Placement placement, AdInfo adInfo);

    void onAdClosed(AdInfo adInfo);

    void onAdOpened(AdInfo adInfo);

    void onAdRewarded(Placement placement, AdInfo adInfo);

    void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo);
}

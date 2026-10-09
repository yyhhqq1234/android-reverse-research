package org.json.mediationsdk.sdk;

import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public interface LevelPlayRewardedVideoManualListener extends LevelPlayRewardedVideoBaseListener {
    void onAdLoadFailed(IronSourceError ironSourceError);

    void onAdReady(AdInfo adInfo);
}

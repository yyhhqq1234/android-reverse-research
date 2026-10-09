package org.json.mediationsdk.sdk;

import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public interface LevelPlayInterstitialListener {
    @Deprecated
    void onAdClicked(AdInfo adInfo);

    @Deprecated
    void onAdClosed(AdInfo adInfo);

    @Deprecated
    void onAdLoadFailed(IronSourceError ironSourceError);

    @Deprecated
    void onAdOpened(AdInfo adInfo);

    @Deprecated
    void onAdReady(AdInfo adInfo);

    @Deprecated
    void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo);

    @Deprecated
    void onAdShowSucceeded(AdInfo adInfo);
}

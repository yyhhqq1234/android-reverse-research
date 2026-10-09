package org.json.mediationsdk.sdk;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public interface RewardedVideoSmashListener {
    void onRewardedVideoAdClicked();

    void onRewardedVideoAdClosed();

    void onRewardedVideoAdEnded();

    void onRewardedVideoAdOpened();

    void onRewardedVideoAdRewarded();

    void onRewardedVideoAdShowFailed(IronSourceError ironSourceError);

    void onRewardedVideoAdStarted();

    void onRewardedVideoAdVisible();

    void onRewardedVideoAvailabilityChanged(boolean z);

    void onRewardedVideoInitFailed(IronSourceError ironSourceError);

    void onRewardedVideoInitSuccess();

    void onRewardedVideoLoadFailed(IronSourceError ironSourceError);

    void onRewardedVideoLoadSuccess();
}

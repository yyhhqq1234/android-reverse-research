package org.json.unity.androidbridge;

/* JADX INFO: loaded from: classes3.dex */
interface IUnityRewardedAdListener {
    void onAdClicked(String adInfo);

    void onAdClosed(String adInfo);

    void onAdDisplayFailed(String error, String adInfo);

    void onAdDisplayed(String adInfo);

    void onAdInfoChanged(String adInfo);

    void onAdLoadFailed(String error);

    void onAdLoaded(String adInfo);

    void onAdRewarded(String adInfo, String name, int amount);
}

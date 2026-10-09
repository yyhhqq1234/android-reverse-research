package org.json.unity.androidbridge;

/* JADX INFO: loaded from: classes3.dex */
public interface UnityLevelPlayRewardedVideoListener {
    void onAdAvailable(String adInfo);

    void onAdClicked(String placement, String adInfo);

    void onAdClosed(String adInfo);

    void onAdOpened(String adInfo);

    void onAdRewarded(String placement, String adInfo);

    void onAdShowFailed(String error, String adInfo);

    void onAdUnavailable();
}

package org.json.unity.androidbridge;

/* JADX INFO: loaded from: classes3.dex */
public interface IUnityBannerAdListener {
    void onAdClicked(String adInfo);

    void onAdCollapsed(String adInfo);

    void onAdDisplayFailed(String adInfo, String error);

    void onAdDisplayed(String adInfo);

    void onAdExpanded(String adInfo);

    void onAdLeftApplication(String adInfo);

    void onAdLoadFailed(String error);

    void onAdLoaded(String adInfo);
}

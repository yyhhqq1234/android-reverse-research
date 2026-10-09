package org.json.unity.androidbridge;

/* JADX INFO: loaded from: classes3.dex */
public interface UnityLevelPlayBannerListener {
    void onAdClicked(String adInfo);

    void onAdLeftApplication(String adInfo);

    void onAdLoadFailed(String Error);

    void onAdLoaded(String adInfo);

    void onAdScreenDismissed(String adInfo);

    void onAdScreenPresented(String adInfo);
}

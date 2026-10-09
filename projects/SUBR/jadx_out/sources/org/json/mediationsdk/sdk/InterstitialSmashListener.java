package org.json.mediationsdk.sdk;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public interface InterstitialSmashListener {
    void onInterstitialAdClicked();

    void onInterstitialAdClosed();

    void onInterstitialAdLoadFailed(IronSourceError ironSourceError);

    void onInterstitialAdOpened();

    void onInterstitialAdReady();

    void onInterstitialAdShowFailed(IronSourceError ironSourceError);

    void onInterstitialAdShowSucceeded();

    void onInterstitialAdVisible();

    void onInterstitialInitFailed(IronSourceError ironSourceError);

    void onInterstitialInitSuccess();
}

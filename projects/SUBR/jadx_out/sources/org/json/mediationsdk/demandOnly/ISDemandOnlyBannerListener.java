package org.json.mediationsdk.demandOnly;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public interface ISDemandOnlyBannerListener {
    void onBannerAdClicked(String str);

    void onBannerAdLeftApplication(String str);

    void onBannerAdLoadFailed(String str, IronSourceError ironSourceError);

    void onBannerAdLoaded(String str);

    void onBannerAdShown(String str);
}

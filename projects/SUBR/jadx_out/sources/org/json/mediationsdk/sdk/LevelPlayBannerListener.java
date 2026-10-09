package org.json.mediationsdk.sdk;

import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public interface LevelPlayBannerListener {
    @Deprecated
    void onAdClicked(AdInfo adInfo);

    @Deprecated
    void onAdLeftApplication(AdInfo adInfo);

    @Deprecated
    void onAdLoadFailed(IronSourceError ironSourceError);

    @Deprecated
    void onAdLoaded(AdInfo adInfo);

    @Deprecated
    void onAdScreenDismissed(AdInfo adInfo);

    @Deprecated
    void onAdScreenPresented(AdInfo adInfo);
}

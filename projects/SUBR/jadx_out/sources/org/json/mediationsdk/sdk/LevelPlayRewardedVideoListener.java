package org.json.mediationsdk.sdk;

import org.json.mediationsdk.adunit.adapter.utility.AdInfo;

/* JADX INFO: loaded from: classes3.dex */
public interface LevelPlayRewardedVideoListener extends LevelPlayRewardedVideoBaseListener {
    void onAdAvailable(AdInfo adInfo);

    void onAdUnavailable();
}

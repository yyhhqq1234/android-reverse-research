package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.sdk.AppLovinAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
public interface qb extends AppLovinAdLoadListener {
    void failedToReceiveAdV2(AppLovinError appLovinError);
}

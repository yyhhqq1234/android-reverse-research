package com.netease.epay.sdk.pay.model;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class GetPayActiveResponse {
    public String activeUrl;
    public boolean hasPromotion;

    public boolean hasUrl() {
        return !TextUtils.isEmpty(this.activeUrl);
    }
}

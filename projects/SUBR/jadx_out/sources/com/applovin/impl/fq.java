package com.applovin.impl;

import com.google.android.gms.nearby.messages.Strategy;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public enum fq {
    UNSPECIFIED(-1),
    RESOURCE_REJECTED(1),
    API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED(2),
    FAILED_TO_LOAD_RESOURCE(3),
    XML_PARSING(100),
    GENERAL_WRAPPER_ERROR(Strategy.TTL_SECONDS_DEFAULT),
    TIMED_OUT(301),
    WRAPPER_LIMIT_REACHED(302),
    NO_WRAPPER_RESPONSE(303),
    GENERAL_LINEAR_ERROR(CommonGatewayClient.CODE_400),
    NO_MEDIA_FILE_PROVIDED(com.ironsource.g3.a.b.b),
    MEDIA_FILE_TIMEOUT(402),
    MEDIA_FILE_ERROR(com.ironsource.g3.a.b.e),
    GENERAL_COMPANION_AD_ERROR(600),
    UNABLE_TO_FETCH_COMPANION_AD_RESOURCE(IronSourceError.ERROR_BN_LOAD_WHILE_LONG_INITIATION),
    CAN_NOT_FIND_COMPANION_AD_RESOURCE(IronSourceError.ERROR_BN_LOAD_PLACEMENT_CAPPED);

    private final int a;

    fq(int i) {
        this.a = i;
    }

    public int b() {
        return this.a;
    }
}

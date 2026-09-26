package com.netease.epay.sdk.base.network;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class EpayNetRequest {
    public boolean isHome;
    public IParamsCallback preParamsRequestInit;
    public JSONObject reqParams;
    public String url;

    public EpayNetRequest(String _url, boolean _isHome, JSONObject _reqParams, IParamsCallback _preParamsRequestInit) {
        this.url = _url;
        this.isHome = _isHome;
        this.reqParams = _reqParams;
        this.preParamsRequestInit = _preParamsRequestInit;
    }

    public EpayNetRequest() {
    }

    public String toString() {
        return this.url;
    }
}

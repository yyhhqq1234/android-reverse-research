package com.netease.epay.sdk.base.hybrid.msg;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OpenEpayAppMsg extends BaseMsg {
    public String downloadURL;
    public String routeURL;

    public OpenEpayAppMsg(JSONObject jsonObject) {
        if (jsonObject != null) {
            this.routeURL = jsonObject.optString("routeURL");
            this.downloadURL = jsonObject.optString("downloadURL");
        }
    }
}

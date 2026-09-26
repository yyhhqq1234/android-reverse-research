package com.netease.epay.sdk.base.hybrid.msg;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShowToastMsg extends BaseMsg {
    public String title;

    public ShowToastMsg(JSONObject jsonObject) {
        if (jsonObject != null) {
            this.title = jsonObject.optString("title");
        }
    }
}

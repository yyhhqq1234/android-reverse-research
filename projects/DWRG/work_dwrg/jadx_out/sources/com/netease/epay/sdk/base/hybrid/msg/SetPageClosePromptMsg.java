package com.netease.epay.sdk.base.hybrid.msg;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SetPageClosePromptMsg extends BaseMsg {
    public int status;
    public String title;

    public SetPageClosePromptMsg(JSONObject jsonObject) {
        if (jsonObject != null) {
            this.title = jsonObject.optString("title");
            this.status = jsonObject.optInt("status", 0);
        }
    }
}

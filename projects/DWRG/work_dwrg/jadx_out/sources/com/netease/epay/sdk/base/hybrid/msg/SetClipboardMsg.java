package com.netease.epay.sdk.base.hybrid.msg;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SetClipboardMsg extends BaseMsg {
    public String data;

    public SetClipboardMsg(JSONObject jsonObject) {
        super(jsonObject);
        if (jsonObject != null) {
            this.data = jsonObject.optString("data");
        }
    }
}

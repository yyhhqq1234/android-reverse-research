package com.netease.epay.sdk.base.hybrid.msg;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OpenOuterAPPMsg extends BaseMsg {
    public String backupURL;
    public String openURL;
    public String packageName;

    public OpenOuterAPPMsg(JSONObject jsonObject) {
        super(jsonObject);
        if (jsonObject != null) {
            this.openURL = jsonObject.optString("openURL");
            this.backupURL = jsonObject.optString("backupURL");
            this.packageName = jsonObject.optString("packageName");
        }
    }
}

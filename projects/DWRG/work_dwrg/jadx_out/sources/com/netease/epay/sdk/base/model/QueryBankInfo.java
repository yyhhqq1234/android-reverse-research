package com.netease.epay.sdk.base.model;

import com.netease.epay.sdk.base.util.LogicUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QueryBankInfo {
    public boolean ifShow;
    public ArrayList<SupportBanks> supportBanks;
    public String toastMsg;

    public String toString() {
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (this.supportBanks == null || i2 >= this.supportBanks.size()) {
                break;
            }
            JSONObject jSONObject = new JSONObject();
            LogicUtil.jsonPut(jSONObject, "bankId", this.supportBanks.get(i2).bankId);
            LogicUtil.jsonPut(jSONObject, "bankName", this.supportBanks.get(i2).bankName);
            LogicUtil.jsonPut(jSONObject, "cardType", this.supportBanks.get(i2).cardType);
            jSONArray.put(jSONObject);
            i = i2 + 1;
        }
        return jSONArray.toString();
    }
}

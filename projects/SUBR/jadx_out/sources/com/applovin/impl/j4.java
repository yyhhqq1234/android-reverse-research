package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j4 extends i4 {
    @Override // com.applovin.impl.i4
    public String toString() {
        return "ConsentFlowState{id=" + b() + "type=" + c() + "isInitialState=" + d() + "title=" + g() + "message=" + f() + "actions=" + e() + "}";
    }

    public j4(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        super(jSONObject, jVar);
    }

    public String g() {
        return b("title");
    }

    public String f() {
        return b(OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE);
    }

    public List e() {
        k4 k4VarA;
        JSONArray jSONArray = JsonUtils.getJSONArray(this.b, "transitions", null);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject != null && (k4VarA = k4.a(jSONObject, this.a)) != null) {
                arrayList.add(k4VarA);
            }
        }
        return arrayList;
    }
}

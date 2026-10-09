package org.json;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
class sn extends e {
    private final String i = go.a;

    sn(int i) {
        this.g = i;
    }

    @Override // org.json.e
    public String a() {
        return go.a;
    }

    @Override // org.json.e
    public String a(ArrayList<ob> arrayList, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        this.f = jSONObject;
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ob> it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = a(it.next());
                if (jSONObjectA != null) {
                    jSONArray.put(jSONObjectA);
                }
            }
        }
        return a(jSONArray);
    }

    @Override // org.json.e
    public String c() {
        return "outcome";
    }
}

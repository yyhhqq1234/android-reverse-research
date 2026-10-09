package org.json.sdk.controller;

import android.content.Context;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.aq;
import org.json.environment.StringUtils;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;
import org.json.mm;
import org.json.oj;
import org.json.sdk.utils.Logger;
import org.json.wt;

/* JADX INFO: loaded from: classes3.dex */
public class u {
    private static final String d = "u";
    private static final String e = "updateToken";
    private static final String f = "getToken";
    private static final String g = "functionName";
    private static final String h = "functionParams";
    private static final String i = "success";
    private static final String j = "fail";
    private Context b;
    private mm a = new mm();
    private wt c = new wt();

    private static class b {
        String a;
        JSONObject b;
        String c;
        String d;

        private b() {
        }
    }

    public u(Context context) {
        this.b = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString("functionName");
        bVar.b = jSONObject.optJSONObject("functionParams");
        bVar.c = jSONObject.optString("success");
        bVar.d = jSONObject.optString("fail");
        return bVar;
    }

    private void a(b bVar, oj ojVar) {
        try {
            JSONObject jSONObjectA = this.c.a();
            Iterator<String> itKeys = jSONObjectA.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObjectA.get(next);
                if (obj instanceof String) {
                    jSONObjectA.put(next, StringUtils.encodeURI((String) obj));
                }
            }
            ojVar.a(true, bVar.c, jSONObjectA);
        } catch (Exception e2) {
            l9.d().a(e2);
            ojVar.a(false, bVar.d, e2.getMessage());
        }
    }

    void a(String str, oj ojVar) throws Exception {
        b bVarA = a(str);
        if (e.equals(bVarA.a)) {
            a(bVarA.b, bVarA, ojVar);
            return;
        }
        if (f.equals(bVarA.a)) {
            a(bVarA, ojVar);
            return;
        }
        Logger.i(d, "unhandled API request " + str);
    }

    public void a(JSONObject jSONObject, b bVar, oj ojVar) {
        aq aqVar = new aq();
        try {
            this.a.a(jSONObject);
            ojVar.a(true, bVar.c, aqVar);
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Logger.i(d, "updateToken exception " + e2.getMessage());
            ojVar.a(false, bVar.d, aqVar);
        }
    }
}

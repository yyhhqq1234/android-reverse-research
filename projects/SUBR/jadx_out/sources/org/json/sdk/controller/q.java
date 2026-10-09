package org.json.sdk.controller;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.aq;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;
import org.json.oj;
import org.json.sdk.utils.Logger;
import org.json.z3;

/* JADX INFO: loaded from: classes3.dex */
public class q {
    private static final String b = "q";
    private static final String c = "getPermissions";
    private static final String d = "isPermissionGranted";
    private static final String e = "permissions";
    private static final String f = "permission";
    private static final String g = "status";
    private static final String h = "functionName";
    private static final String i = "functionParams";
    private static final String j = "success";
    private static final String k = "fail";
    private static final String l = "unhandledPermission";
    private Context a;

    private static class b {
        String a;
        JSONObject b;
        String c;
        String d;

        private b() {
        }
    }

    public q(Context context) {
        this.a = context;
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

    void a(String str, oj ojVar) throws Exception {
        b bVarA = a(str);
        if (c.equals(bVarA.a)) {
            a(bVarA.b, bVarA, ojVar);
            return;
        }
        if (d.equals(bVarA.a)) {
            b(bVarA.b, bVarA, ojVar);
            return;
        }
        Logger.i(b, "PermissionsJSAdapter unhandled API request " + str);
    }

    public void a(JSONObject jSONObject, b bVar, oj ojVar) {
        aq aqVar = new aq();
        try {
            aqVar.a(e, z3.a(this.a, jSONObject.getJSONArray(e)));
            ojVar.a(true, bVar.c, aqVar);
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Logger.i(b, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter " + e2.getMessage());
            aqVar.b("errMsg", e2.getMessage());
            ojVar.a(false, bVar.d, aqVar);
        }
    }

    public void b(JSONObject jSONObject, b bVar, oj ojVar) {
        String str;
        boolean z;
        aq aqVar = new aq();
        try {
            String string = jSONObject.getString(f);
            aqVar.b(f, string);
            if (z3.d(this.a, string)) {
                aqVar.b("status", String.valueOf(z3.c(this.a, string)));
                str = bVar.c;
                z = true;
            } else {
                aqVar.b("status", l);
                str = bVar.d;
                z = false;
            }
            ojVar.a(z, str, aqVar);
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            aqVar.b("errMsg", e2.getMessage());
            ojVar.a(false, bVar.d, aqVar);
        }
    }
}

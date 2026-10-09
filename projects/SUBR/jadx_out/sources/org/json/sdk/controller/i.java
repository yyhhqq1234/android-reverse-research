package org.json.sdk.controller;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.aq;
import org.json.jl;
import org.json.oe;
import org.json.oj;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class i {
    private static final String c = "i";
    private static final String d = "getDeviceData";
    private static final String e = "deviceDataFunction";
    private static final String f = "deviceDataParams";
    private static final String g = "success";
    private static final String h = "fail";
    private Context a;
    private final oe b = jl.P().f();

    private static class b {
        String a;
        JSONObject b;
        String c;
        String d;

        private b() {
        }
    }

    public i(Context context) {
        this.a = context;
    }

    private aq a() {
        aq aqVar = new aq();
        aqVar.b(SDKUtils.encodeString(y8.i.i0), SDKUtils.encodeString(String.valueOf(this.b.c())));
        aqVar.b(SDKUtils.encodeString(y8.i.j0), SDKUtils.encodeString(String.valueOf(this.b.h(this.a))));
        aqVar.b(SDKUtils.encodeString(y8.i.k0), SDKUtils.encodeString(String.valueOf(this.b.G(this.a))));
        aqVar.b(SDKUtils.encodeString(y8.i.l0), SDKUtils.encodeString(String.valueOf(this.b.l(this.a))));
        aqVar.b(SDKUtils.encodeString(y8.i.m0), SDKUtils.encodeString(String.valueOf(this.b.c(this.a))));
        aqVar.b(SDKUtils.encodeString(y8.i.n0), SDKUtils.encodeString(String.valueOf(this.b.d(this.a))));
        return aqVar;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString(e);
        bVar.b = jSONObject.optJSONObject(f);
        bVar.c = jSONObject.optString("success");
        bVar.d = jSONObject.optString("fail");
        return bVar;
    }

    void a(String str, oj ojVar) throws Exception {
        b bVarA = a(str);
        if (d.equals(bVarA.a)) {
            ojVar.a(true, bVarA.c, a());
            return;
        }
        Logger.i(c, "unhandled API request " + str);
    }
}

package org.json.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.aq;
import org.json.en;
import org.json.l9;
import org.json.oj;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class o {
    private static final String c = "o";
    private static final String d = "activate";
    private static final String e = "startSession";
    private static final String f = "finishSession";
    private static final String g = "impressionOccurred";
    private static final String h = "getOmidData";
    private static final String i = "omidFunction";
    private static final String j = "omidParams";
    private static final String k = "success";
    private static final String l = "fail";
    private static final String m = "%s | unsupported OMID API";
    private final Context a;
    private final en b = new en();

    private static class b {
        String a;
        JSONObject b;
        String c;
        String d;

        private b() {
        }
    }

    public o(Context context) {
        this.a = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString(i);
        bVar.b = jSONObject.optJSONObject(j);
        bVar.c = jSONObject.optString("success");
        bVar.d = jSONObject.optString("fail");
        return bVar;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void a(String str, oj ojVar) throws Exception {
        byte b2;
        b bVarA = a(str);
        aq aqVar = new aq();
        JSONObject jSONObject = bVarA.b;
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("adViewId", "");
            if (!TextUtils.isEmpty(strOptString)) {
                aqVar.b("adViewId", strOptString);
            }
        }
        try {
            String str2 = bVarA.a;
            switch (str2.hashCode()) {
                case -1655974669:
                    if (!str2.equals(d)) {
                        b2 = -1;
                    } else {
                        b2 = 0;
                    }
                    break;
                case -984459207:
                    if (!str2.equals(h)) {
                        b2 = -1;
                    } else {
                        b2 = 4;
                    }
                    break;
                case 70701699:
                    if (!str2.equals(f)) {
                        b2 = -1;
                    } else {
                        b2 = 2;
                    }
                    break;
                case 1208109646:
                    if (!str2.equals(g)) {
                        b2 = -1;
                    } else {
                        b2 = 3;
                    }
                    break;
                case 1850541012:
                    if (!str2.equals(e)) {
                        b2 = -1;
                    } else {
                        b2 = 1;
                    }
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 != 0) {
                if (b2 == 1) {
                    this.b.d(bVarA.b);
                } else if (b2 == 2) {
                    this.b.b(bVarA.b);
                } else if (b2 == 3) {
                    this.b.c(bVarA.b);
                } else if (b2 != 4) {
                    throw new IllegalArgumentException(String.format(m, bVarA.a));
                }
                ojVar.a(true, bVarA.c, aqVar);
            }
            this.b.a(this.a);
            aqVar = this.b.a();
            ojVar.a(true, bVarA.c, aqVar);
        } catch (Exception e2) {
            l9.d().a(e2);
            aqVar.b("errMsg", e2.getMessage());
            Logger.i(c, "OMIDJSAdapter " + bVarA.a + " Exception: " + e2.getMessage());
            ojVar.a(false, bVarA.d, aqVar);
        }
    }
}

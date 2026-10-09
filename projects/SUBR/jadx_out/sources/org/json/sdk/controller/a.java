package org.json.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.aq;
import org.json.cg;
import org.json.cv;
import org.json.l9;
import org.json.oj;
import org.json.ou;
import org.json.xf;

/* JADX INFO: loaded from: classes3.dex */
public class a implements xf {
    private static final String d = "loadWithUrl";
    private static final String e = "sendMessage";
    public static final String f = "removeAdView";
    public static final String g = "webviewAction";
    public static final String h = "handleGetViewVisibility";
    private static final String i = "functionName";
    private static final String j = "functionParams";
    private static final String k = "success";
    private static final String l = "fail";
    public static final String m = "errMsg";
    private static final String n = "%s | unsupported AdViews API";
    private cv a;
    private cg b = cg.a();
    private Context c;

    private static class b {
        String a;
        JSONObject b;
        String c;
        String d;

        private b() {
        }
    }

    public a(Context context) {
        this.c = context;
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

    public void a(cv cvVar) {
        this.a = cvVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void a(String str, oj ojVar) throws Exception {
        byte b2;
        b bVarA = a(str);
        aq aqVar = new aq();
        try {
            String str2 = bVarA.a;
            switch (str2.hashCode()) {
                case -1384357108:
                    if (!str2.equals(f)) {
                        b2 = -1;
                    } else {
                        b2 = 2;
                    }
                    break;
                case 691453791:
                    if (!str2.equals("sendMessage")) {
                        b2 = -1;
                    } else {
                        b2 = 1;
                    }
                    break;
                case 842351363:
                    if (!str2.equals("loadWithUrl")) {
                        b2 = -1;
                    } else {
                        b2 = 0;
                    }
                    break;
                case 1182065477:
                    if (!str2.equals("handleGetViewVisibility")) {
                        b2 = -1;
                    } else {
                        b2 = 3;
                    }
                    break;
                case 1491535759:
                    if (!str2.equals(g)) {
                        b2 = -1;
                    } else {
                        b2 = 4;
                    }
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                this.b.a(this, bVarA.b, this.c, bVarA.c, bVarA.d);
                return;
            }
            if (b2 == 1) {
                this.b.d(bVarA.b, bVarA.c, bVarA.d);
                return;
            }
            if (b2 == 2) {
                this.b.c(bVarA.b, bVarA.c, bVarA.d);
            } else if (b2 == 3) {
                this.b.a(bVarA.b, bVarA.c, bVarA.d);
            } else {
                if (b2 != 4) {
                    throw new IllegalArgumentException(String.format(n, bVarA.a));
                }
                this.b.b(bVarA.b, bVarA.c, bVarA.d);
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            aqVar.b("errMsg", e2.getMessage());
            String strC = this.b.c(bVarA.b);
            if (!TextUtils.isEmpty(strC)) {
                aqVar.b("adViewId", strC);
            }
            ojVar.a(false, bVarA.d, aqVar);
        }
    }

    @Override // org.json.xf
    public void a(String str, String str2, String str3) {
        a(str, ou.a(str2, str3));
    }

    @Override // org.json.xf
    public void a(String str, JSONObject jSONObject) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(str, jSONObject);
    }
}

package org.json;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class zf {
    private xf a;
    private WebView c;
    private String d;
    private String e = "zf";
    private String[] f = {"handleGetViewVisibility"};
    private final String[] g = {vf.h, vf.i, vf.g, "handleGetViewVisibility", vf.j};
    private ju b = new ju();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ JSONObject d;

        a(String str, String str2, String str3, JSONObject jSONObject) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!zf.this.b(this.a)) {
                    String str = "ISNAdViewLogic | handleMessageFromController | cannot handle command: " + this.a;
                    Log.e(zf.this.e, str);
                    zf.this.a(this.b, str);
                    return;
                }
                if (this.a.equalsIgnoreCase("handleGetViewVisibility")) {
                    zf.this.e(this.c);
                } else if (this.a.equalsIgnoreCase(vf.j) || this.a.equalsIgnoreCase(vf.i)) {
                    zf.this.a(this.d.getString("params"), this.c, this.b);
                }
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
                String str2 = "ISNAdViewLogic | handleMessageFromController | Error while trying handle message: " + this.a;
                Log.e(zf.this.e, str2);
                zf.this.a(this.b, str2);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                zf.this.c.evaluateJavascript(this.a, null);
            } catch (Throwable th) {
                l9.d().a(th);
                Log.e(zf.this.e, "injectJavaScriptIntoWebView | Error while trying inject JS into external adUnit: " + this.b + "Android API level: " + Build.VERSION.SDK_INT);
            }
        }
    }

    private String a(String str) {
        return String.format(vf.u, str);
    }

    private JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", jSONObject.getString("id"));
            jSONObject2.put("data", this.b.a());
        } catch (Exception e) {
            l9.d().a(e);
            Log.e(this.e, "Error while trying execute method buildVisibilityMessageForAdUnit | params: " + jSONObject);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        for (String str2 : this.g) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(vf.a, a());
    }

    private void d(String str) {
        Cif.a.d(new b("javascript:try{" + str + "}catch(e){console.log(\"JS exception: \" + JSON.stringify(e));}", str));
    }

    private boolean h(String str) {
        for (String str2 : this.f) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean i(String str) {
        return str.equalsIgnoreCase(Build.VERSION.SDK_INT <= 22 ? vf.l : vf.k);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(vf.s, this.b.a());
            jSONObject.put(vf.p, jSONObject2);
            jSONObject.put("adViewId", c());
            return jSONObject;
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    public void a(WebView webView) {
        this.c = webView;
    }

    public void a(xf xfVar) {
        this.a = xfVar;
    }

    public void a(String str, int i, boolean z) {
        this.b.a(str, i, z);
        if (i(str)) {
            d();
        }
    }

    public void a(String str, String str2) {
        xf xfVar = this.a;
        if (xfVar != null) {
            xfVar.a(str, str2, this.d);
        }
    }

    public void a(String str, String str2, String str3) throws JSONException {
        if (this.c == null) {
            String str4 = "No external adUnit attached to ISNAdView while trying to send message: " + str;
            Log.e(this.e, str4);
            this.a.a(str3, str4, this.d);
            return;
        }
        try {
            new JSONObject(str);
        } catch (JSONException e) {
            l9.d().a(e);
            str = "\"" + str + "\"";
        }
        d(a(str));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adViewId", this.d);
        a(str2, jSONObject);
    }

    public void a(String str, JSONObject jSONObject) {
        xf xfVar = this.a;
        if (xfVar != null) {
            xfVar.a(str, jSONObject);
        }
    }

    void a(String str, JSONObject jSONObject, String str2, String str3) {
        if (this.a == null) {
            kg.a(zp.t, new fg().a(rb.y, "mDelegate is null").a());
        } else {
            Cif.a.d(new a(str, str3, str2, jSONObject));
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        a(a(jSONObject).toString(), str, str2);
    }

    public void b() {
        this.a = null;
        this.b = null;
    }

    public String c() {
        return this.d;
    }

    public void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("method");
            if (TextUtils.isEmpty(strOptString) || !h(strOptString)) {
                a(jSONObject.optString(vf.v, vf.c), jSONObject);
            } else if (strOptString.equalsIgnoreCase("handleGetViewVisibility")) {
                a(jSONObject, (String) null, (String) null);
            }
        } catch (JSONException e) {
            l9.d().a(e);
            Log.e(this.e, "ISNAdViewLogic | receiveMessageFromExternal | Error while trying handle message: " + str);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void e() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(vf.b, a());
    }

    public void e(String str) throws JSONException {
        JSONObject jSONObjectA = this.b.a();
        jSONObjectA.put("adViewId", this.d);
        a(str, jSONObjectA);
    }

    public void f(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adViewId", this.d);
            a(str, jSONObject);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void g(String str) {
        this.d = str;
    }
}

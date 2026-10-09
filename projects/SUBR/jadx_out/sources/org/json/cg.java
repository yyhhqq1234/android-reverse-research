package org.json;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class cg implements y2 {
    private static final String b = "cg";
    private static cg c;
    private final Map<String, ug> a = Collections.synchronizedMap(new HashMap());

    class a implements Runnable {
        final /* synthetic */ bg a;
        final /* synthetic */ Context b;
        final /* synthetic */ String c;

        a(bg bgVar, Context context, String str) {
            this.a = bgVar;
            this.b = context;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            cg.this.a.put(this.c, new wf(this.a, this.b));
        }
    }

    public static synchronized cg a() {
        if (c == null) {
            c = new cg();
        }
        return c;
    }

    private uf a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString(y8.h.O));
            String string = jSONObject2.get("height").toString();
            String string2 = jSONObject2.get("width").toString();
            return new uf(Integer.parseInt(string2), Integer.parseInt(string), jSONObject2.get("label").toString());
        } catch (Exception e) {
            l9.d().a(e);
            return new uf();
        }
    }

    private uf b(JSONObject jSONObject) {
        uf ufVar = new uf();
        try {
            return a(jSONObject);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return ufVar;
        }
    }

    private boolean d(JSONObject jSONObject) {
        return jSONObject.optBoolean(y8.h.s0);
    }

    @Override // org.json.y2
    public ug a(String str) {
        if (str.isEmpty() || !this.a.containsKey(str)) {
            return null;
        }
        return this.a.get(str);
    }

    public void a(xf xfVar, JSONObject jSONObject, Context context, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "loadWithUrl fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        uf ufVarB = b(jSONObject);
        if (this.a.containsKey(string)) {
            Logger.i(b, "sendMessageToAd fail - collection already contain adViewId");
            throw new Exception("collection already contain adViewId");
        }
        bg bgVar = new bg(xfVar, context, string, ufVarB);
        bgVar.e(IronSourceStorageUtils.getNetworkStorageDir(context));
        bgVar.b(jSONObject, str, str2);
        if (d(jSONObject)) {
            Cif.a.d(new a(bgVar, context, string));
        } else {
            this.a.put(string, bgVar);
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        ug ugVar = this.a.get(string);
        if (ugVar != null) {
            ugVar.a(jSONObject, str, str2);
        }
    }

    public void b(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "performWebViewAction fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "performWebViewAction fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        ug ugVar = this.a.get(string);
        String string2 = jSONObject.getString(y8.h.v0);
        if (ugVar != null) {
            ugVar.a(string2, str, str2);
        }
    }

    public String c(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null || !jSONObject.has("adViewId")) {
            return (jSONObject == null || !jSONObject.has("params")) ? "" : new JSONObject(jSONObject.getString("params")).getString("adViewId");
        }
        return jSONObject.getString("adViewId");
    }

    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        ug ugVar = this.a.get(string);
        this.a.remove(string);
        if (ugVar != null) {
            ugVar.a(str, str2);
        }
    }

    public void d(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = new JSONObject(jSONObject.getString("params")).getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "sendMessageToAd fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "sendMessageToAd fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        ug ugVar = this.a.get(string);
        if (ugVar != null) {
            ugVar.c(jSONObject, str, str2);
        }
    }
}

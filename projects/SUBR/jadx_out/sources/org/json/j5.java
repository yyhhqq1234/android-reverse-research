package org.json;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.mediationsdk.d;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class j5 {
    public static final String A = "nurl";
    public static final String o = "adMarkup";
    public static final String p = "instance";
    public static final String q = "adData";
    public static final String r = "price";
    public static final String s = "serverData";
    public static final String t = "loadTimeout";
    public static final String u = "order";
    public static final String v = "show";
    public static final String w = "price";
    public static final String x = "notifications";
    public static final String y = "burl";
    public static final String z = "lurl";
    private String a;
    private String b;
    private JSONObject c;
    private String d;
    private Integer e;
    private int f;
    private int g;
    private int h;
    private final List<String> i;
    private final List<String> j;
    private final List<String> k;
    private ImpressionData l;
    private xk m;
    private boolean n;

    public j5(String str) {
        this.a = null;
        this.b = "";
        this.c = null;
        this.d = "";
        this.e = null;
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = null;
        this.m = null;
        this.n = true;
        this.a = str;
    }

    public j5(JSONObject jSONObject) {
        this(jSONObject, -1, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0082 A[Catch: Exception -> 0x00e2, TryCatch #0 {Exception -> 0x00e2, blocks: (B:3:0x0043, B:5:0x0049, B:6:0x004f, B:8:0x0055, B:12:0x0068, B:13:0x006a, B:15:0x0082, B:16:0x0095, B:18:0x00b3, B:20:0x00bd, B:22:0x00c5, B:23:0x00d4, B:9:0x005a, B:11:0x0060), top: B:28:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x00b3 A[Catch: Exception -> 0x00e2, TryCatch #0 {Exception -> 0x00e2, blocks: (B:3:0x0043, B:5:0x0049, B:6:0x004f, B:8:0x0055, B:12:0x0068, B:13:0x006a, B:15:0x0082, B:16:0x0095, B:18:0x00b3, B:20:0x00bd, B:22:0x00c5, B:23:0x00d4, B:9:0x005a, B:11:0x0060), top: B:28:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:22:0x00c5 A[Catch: Exception -> 0x00e2, TryCatch #0 {Exception -> 0x00e2, blocks: (B:3:0x0043, B:5:0x0049, B:6:0x004f, B:8:0x0055, B:12:0x0068, B:13:0x006a, B:15:0x0082, B:16:0x0095, B:18:0x00b3, B:20:0x00bd, B:22:0x00c5, B:23:0x00d4, B:9:0x005a, B:11:0x0060), top: B:28:0x0043 }] */
    public j5(JSONObject jSONObject, int i, JSONObject jSONObject2) {
        xk xkVarA;
        String string;
        this.a = null;
        this.b = "";
        this.c = null;
        this.d = "";
        this.e = null;
        this.f = -1;
        this.g = -1;
        this.h = -1;
        ArrayList arrayList = new ArrayList();
        this.i = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.j = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.k = arrayList3;
        this.l = null;
        this.m = null;
        this.n = true;
        try {
            if (jSONObject.has(p)) {
                this.a = jSONObject.getString(p);
            }
            if (!jSONObject.has("adMarkup")) {
                string = jSONObject.has(s) ? jSONObject.getJSONObject(s).toString() : string;
                this.c = jSONObject.optJSONObject("adData");
                this.d = jSONObject.optString("price", "0");
                if (jSONObject.has(x)) {
                    JSONObject jSONObject3 = jSONObject.getJSONObject(x);
                    a(jSONObject3, y, arrayList);
                    a(jSONObject3, z, arrayList2);
                    a(jSONObject3, A, arrayList3);
                }
                this.l = new ImpressionData(jj.a(jSONObject2, jSONObject.optJSONObject(d.d)));
                if (jSONObject.has(d.e)) {
                    xkVarA = xk.a(jSONObject.getJSONObject(d.e));
                } else {
                    xkVarA = null;
                }
                this.m = xkVarA;
                this.e = jSONObject.has(t) ? Integer.valueOf((int) TimeUnit.MILLISECONDS.toSeconds(jSONObject.getLong(t))) : null;
                a(jSONObject.optJSONObject(u), i);
            }
            string = jSONObject.getString("adMarkup");
            this.b = string;
            this.c = jSONObject.optJSONObject("adData");
            this.d = jSONObject.optString("price", "0");
            if (jSONObject.has(x)) {
                JSONObject jSONObject4 = jSONObject.getJSONObject(x);
                a(jSONObject4, y, arrayList);
                a(jSONObject4, z, arrayList2);
                a(jSONObject4, A, arrayList3);
            }
            this.l = new ImpressionData(jj.a(jSONObject2, jSONObject.optJSONObject(d.d)));
            if (jSONObject.has(d.e)) {
                xkVarA = xk.a(jSONObject.getJSONObject(d.e));
            } else {
                xkVarA = null;
            }
            this.m = xkVarA;
            this.e = jSONObject.has(t) ? Integer.valueOf((int) TimeUnit.MILLISECONDS.toSeconds(jSONObject.getLong(t))) : null;
            a(jSONObject.optJSONObject(u), i);
        } catch (Exception e) {
            l9.d().a(e);
            this.n = false;
            IronLog.INTERNAL.error("exception " + e.getMessage());
        }
    }

    private void a(JSONObject jSONObject, int i) {
        this.f = i;
        this.g = i;
        this.h = i;
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt(v, i);
            this.g = iOptInt;
            this.h = jSONObject.optInt("price", iOptInt);
        }
    }

    private void a(JSONObject jSONObject, String str, List<String> list) throws JSONException {
        if (jSONObject.has(str)) {
            list.addAll(jj.b(jSONObject.getJSONArray(str)));
        }
    }

    public ImpressionData a(String str) {
        ImpressionData impressionData = this.l;
        if (impressionData == null) {
            return null;
        }
        ImpressionData impressionData2 = new ImpressionData(impressionData);
        impressionData2.replaceMacroForPlacementWithValue(d.r, str);
        return impressionData2;
    }

    public JSONObject a() {
        return this.c;
    }

    public List<String> b() {
        return this.i;
    }

    public String c() {
        return this.a;
    }

    public xk d() {
        return this.m;
    }

    public int e() {
        return this.f;
    }

    public Integer f() {
        return this.e;
    }

    public List<String> g() {
        return this.j;
    }

    public List<String> h() {
        return this.k;
    }

    public String i() {
        return this.d;
    }

    public int j() {
        return this.h;
    }

    public String k() {
        return this.b;
    }

    public int l() {
        return this.g;
    }

    public boolean m() {
        return this.n;
    }
}

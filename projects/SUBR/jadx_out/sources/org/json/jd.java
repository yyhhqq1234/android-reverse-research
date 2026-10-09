package org.json;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class jd {
    public static final String b = "userId";
    public static final String c = "appKey";
    private static jd d;
    private JSONObject a = new JSONObject();

    private jd() {
    }

    public static synchronized jd a() {
        if (d == null) {
            d = new jd();
        }
        return d;
    }

    public synchronized String a(String str) {
        return this.a.optString(str);
    }

    public synchronized void a(String str, Object obj) {
        try {
            this.a.put(str, obj);
        } catch (Exception e) {
            l9.d().a(e);
        }
    }

    public synchronized void a(Map<String, Object> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                a(str, map.get(str));
            }
        }
    }

    public synchronized JSONObject b() {
        return this.a;
    }
}

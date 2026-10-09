package org.json;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ju {
    private int b = 4;
    private int c = 4;
    private HashMap<String, Boolean> a = new a();

    class a extends HashMap<String, Boolean> {
        a() {
            put(vf.k, Boolean.valueOf(ju.this.b == 0));
            put(vf.l, Boolean.valueOf(ju.this.c == 0));
            Boolean bool = Boolean.FALSE;
            put(vf.m, bool);
            put(vf.n, bool);
        }
    }

    ju() {
    }

    public JSONObject a() {
        return new JSONObject(this.a);
    }

    void a(String str, int i, boolean z) {
        if (this.a.containsKey(str)) {
            this.a.put(str, Boolean.valueOf(i == 0));
        }
        this.a.put(vf.m, Boolean.valueOf(z));
        this.a.put(vf.n, Boolean.valueOf((this.a.get(vf.l).booleanValue() || this.a.get(vf.k).booleanValue()) && this.a.get(vf.m).booleanValue()));
    }
}

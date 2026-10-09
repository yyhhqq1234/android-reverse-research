package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class ls {
    private final JSONObject a;

    public ls(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public boolean a() {
        return this.a.optBoolean("uxt", false);
    }

    public boolean b() {
        return this.a.optBoolean(y8.a.n, false);
    }

    public boolean c() {
        return this.a.optBoolean(y8.a.o, false);
    }

    public boolean d() {
        return this.a.optBoolean(y8.a.k, false);
    }

    public boolean e() {
        return this.a.optBoolean(y8.a.m, false);
    }
}

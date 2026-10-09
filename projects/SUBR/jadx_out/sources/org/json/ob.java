package org.json;

import java.util.UUID;
import kotlin.UByte$$ExternalSyntheticBackport0;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class ob {
    static final String e = "euid";
    static final String f = "esat";
    static final String g = "esfr";
    static final int h = 1;
    private int a;
    private long b;
    private int c;
    private final JSONObject d;

    public ob(int i, long j, String str) throws JSONException {
        this(i, j, new JSONObject(str));
    }

    public ob(int i, long j, JSONObject jSONObject) {
        this.c = 1;
        this.a = i;
        this.b = j;
        jSONObject = jSONObject == null ? new JSONObject() : jSONObject;
        this.d = jSONObject;
        if (!jSONObject.has(e)) {
            a(e, UUID.randomUUID().toString());
        }
        if (jSONObject.has(f)) {
            this.c = jSONObject.optInt(f, 1);
        } else {
            a(f, Integer.valueOf(this.c));
        }
    }

    public ob(int i, JSONObject jSONObject) {
        this(i, new n9.a().a(), jSONObject);
    }

    public String a() {
        return this.d.toString();
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(String str) {
        a(g, str);
        int i = this.c + 1;
        this.c = i;
        a(f, Integer.valueOf(i));
    }

    public void a(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        try {
            this.d.put(str, obj);
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public JSONObject b() {
        return this.d;
    }

    public int c() {
        return this.a;
    }

    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ob obVar = (ob) obj;
        return this.a == obVar.a && this.b == obVar.b && this.c == obVar.c && C0168uj.a(this.d, obVar.d);
    }

    public int hashCode() {
        return (((((this.a * 31) + UByte$$ExternalSyntheticBackport0.m(this.b)) * 31) + this.d.toString().hashCode()) * 31) + this.c;
    }

    public String toString() {
        return ("{\"eventId\":" + c() + ",\"timestamp\":" + d() + "," + a().substring(1) + "}").replace(",", "\n");
    }
}

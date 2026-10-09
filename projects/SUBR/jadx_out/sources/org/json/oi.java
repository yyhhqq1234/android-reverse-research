package org.json;

import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.metadata.a;

/* JADX INFO: loaded from: classes3.dex */
public class oi {
    private final boolean a;
    private String b;
    private String c;
    private boolean d;
    private uf e;
    private Map<String, String> f;
    private fn g;
    private String h;
    private boolean i;
    private boolean j;

    oi(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, String str3, Map<String, String> map, fn fnVar, uf ufVar) {
        this.b = str;
        this.c = str2;
        this.a = z;
        this.d = z2;
        this.f = map;
        this.g = fnVar;
        this.e = ufVar;
        this.i = z3;
        this.j = z4;
        this.h = str3;
    }

    public Map<String, String> a() {
        HashMap map = new HashMap();
        map.put("instanceId", this.b);
        map.put("instanceName", this.c);
        map.put("rewarded", Boolean.toString(this.a));
        map.put("inAppBidding", Boolean.toString(this.d));
        map.put("isOneFlow", Boolean.toString(this.i));
        map.put(y8.r, String.valueOf(2));
        uf ufVar = this.e;
        map.put("width", ufVar != null ? Integer.toString(ufVar.c()) : "0");
        uf ufVar2 = this.e;
        map.put("height", ufVar2 != null ? Integer.toString(ufVar2.a()) : "0");
        uf ufVar3 = this.e;
        map.put("label", ufVar3 != null ? ufVar3.b() : "");
        map.put(y8.v, Boolean.toString(i()));
        if (this.j) {
            map.put("isMultipleAdObjects", a.g);
        }
        String str = this.h;
        if (str != null) {
            map.put("adUnitId", str);
        }
        Map<String, String> map2 = this.f;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public void a(fn fnVar) {
        this.g = fnVar;
    }

    public void a(String str) {
        this.h = str;
    }

    public final fn b() {
        return this.g;
    }

    public String c() {
        return this.h;
    }

    public Map<String, String> d() {
        return this.f;
    }

    public String e() {
        return this.b;
    }

    public String f() {
        return this.c.replaceAll("IronSource_", "");
    }

    public String g() {
        return this.c;
    }

    public uf h() {
        return this.e;
    }

    public boolean i() {
        return h() != null && h().d();
    }

    public boolean j() {
        return this.d;
    }

    public boolean k() {
        return j() || m();
    }

    public boolean l() {
        return this.j;
    }

    public boolean m() {
        return this.i;
    }

    public boolean n() {
        return this.a;
    }
}

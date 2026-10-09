package com.applovin.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class y0 implements km.b, im.b {
    private final com.applovin.impl.sdk.j a;
    private final a b;
    private w0 c;
    private String d;

    public interface a {
        void a(w0 w0Var, String str);

        void a(b bVar, String str);
    }

    public enum b {
        APP_DETAILS_NOT_FOUND,
        INVALID_DEVELOPER_URI,
        APPADSTXT_NOT_FOUND,
        MISSING_APPLOVIN_ENTRIES,
        MISSING_NON_APPLOVIN_ENTRIES
    }

    public y0(com.applovin.impl.sdk.j jVar, a aVar) {
        this.a = jVar;
        this.b = aVar;
    }

    @Override // com.applovin.impl.im.b
    public void a(b bVar, String str) {
        this.b.a(bVar, str);
    }

    @Override // com.applovin.impl.im.b
    public void a(String str, String str2) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split("\n");
        int length = strArrSplit.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            x0 x0Var = new x0(strArrSplit[i2], i);
            if (x0Var.h()) {
                String strB = x0Var.b();
                List arrayList2 = map.containsKey(strB) ? (List) map.get(strB) : new ArrayList();
                if (arrayList2 != null) {
                    arrayList2.add(x0Var);
                    map.put(strB, arrayList2);
                }
            } else {
                arrayList.add(x0Var);
            }
            i2++;
            i = i3;
        }
        this.c = new w0(map, arrayList);
        this.d = str2;
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AppAdsTxtService", "app-ads.txt fetched: " + this.c);
        }
        this.b.a(this.c, str2);
    }

    @Override // com.applovin.impl.km.b
    public void a(b bVar) {
        this.b.a(bVar, (String) null);
    }

    @Override // com.applovin.impl.km.b
    public void a(String str) {
        this.a.i0().a(new im(this.a, str, this));
    }

    public void a() {
        w0 w0Var = this.c;
        if (w0Var != null) {
            this.b.a(w0Var, this.d);
        } else {
            this.a.i0().a(new km(this.a, this));
        }
    }
}

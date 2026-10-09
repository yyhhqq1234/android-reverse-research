package com.applovin.impl;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class y5 implements b7 {
    private final Object a = new Object();
    private sd.e b;
    private a7 c;
    private pa.b d;
    private String e;

    private a7 a(sd.e eVar) {
        pa.b bVarA = this.d;
        if (bVarA == null) {
            bVarA = new c6.b().a(this.e);
        }
        Uri uri = eVar.b;
        qa qaVar = new qa(uri == null ? null : uri.toString(), eVar.f, bVarA);
        pp it = eVar.c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            qaVar.a((String) entry.getKey(), (String) entry.getValue());
        }
        x5 x5VarA = new x5.b().a(eVar.a, l9.d).a(eVar.d).b(eVar.e).a(tb.a(eVar.g)).a(qaVar);
        x5VarA.a(0, eVar.b());
        return x5VarA;
    }

    @Override // com.applovin.impl.b7
    public a7 a(sd sdVar) {
        a7 a7Var;
        b1.a(sdVar.b);
        sd.e eVar = sdVar.b.c;
        if (eVar != null && xp.a >= 18) {
            synchronized (this.a) {
                if (!xp.a(eVar, this.b)) {
                    this.b = eVar;
                    this.c = a(eVar);
                }
                a7Var = (a7) b1.a(this.c);
            }
            return a7Var;
        }
        return a7.a;
    }
}

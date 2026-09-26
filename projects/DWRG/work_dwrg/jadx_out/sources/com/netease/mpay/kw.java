package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.kv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kw implements kv.b {
    final /* synthetic */ kv.b a;
    final /* synthetic */ kv b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kw(kv kvVar, kv.b bVar) {
        this.b = kvVar;
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.kv.b
    public void a(int i) {
        this.b.o = true;
        this.a.a(i);
    }
}

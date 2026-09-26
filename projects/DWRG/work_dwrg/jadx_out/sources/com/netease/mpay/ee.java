package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.eu;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ee implements eu.b {
    final /* synthetic */ ed a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(ed edVar) {
        this.a = edVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.eu.b
    public void a(int i) {
        this.a.b(0);
        if (com.netease.mpay.widget.bd.a(String.valueOf(i), this.a.o) >= 0) {
            this.a.t = true;
            this.a.b(String.valueOf(i));
        }
    }
}

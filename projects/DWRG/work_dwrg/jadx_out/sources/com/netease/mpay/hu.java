package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.hl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hu implements Runnable {
    final /* synthetic */ hl.a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hu(hl.a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        hx hxVar;
        hxVar = this.a.c;
        hxVar.b(com.netease.mpay.widget.ao.a(hl.this.a));
    }
}

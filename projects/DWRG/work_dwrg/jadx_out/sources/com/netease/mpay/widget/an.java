package com.netease.mpay.widget;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.am;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class an implements Runnable {
    final /* synthetic */ am.b a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(am.b bVar) {
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        am.a aVar;
        int i;
        int i2;
        am.a aVar2;
        am.a aVar3;
        aVar = this.a.b;
        if (aVar != null) {
            i = this.a.c;
            i2 = am.this.c;
            if (i == i2) {
                aVar2 = this.a.b;
                aVar2.a(true);
                aVar3 = this.a.b;
                aVar3.cancel(true);
            }
        }
    }
}

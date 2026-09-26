package com.netease.mpay;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.z;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ih implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ ig b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(ig igVar, Context context) {
        this.b = igVar;
        this.a = context;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean a;
        com.netease.mpay.e.c.o m = com.netease.mpay.e.b.a(this.a).m();
        com.netease.mpay.e.b.aa a2 = m.a();
        if (a2.b == null || a2.b.size() < 1) {
            return;
        }
        Iterator it = a2.b.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.z zVar = (com.netease.mpay.e.b.z) it.next();
            if (z.a.INSTALLED == zVar.f) {
                a = new ig().a();
                zVar.f = a ? z.a.VALID : z.a.INVALID;
            }
        }
        m.a(new com.netease.mpay.e.b.aa(a2.b));
    }
}

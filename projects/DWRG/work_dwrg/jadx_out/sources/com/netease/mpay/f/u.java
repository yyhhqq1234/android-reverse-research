package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.i;
import com.netease.mpay.e.c.j;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements Runnable {
    final /* synthetic */ com.netease.mpay.e.b.af a;
    final /* synthetic */ t b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar, com.netease.mpay.e.b.af afVar) {
        this.b = tVar;
        this.a = afVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        String str;
        Iterator it = this.a.k.b.iterator();
        while (it.hasNext()) {
            i.a aVar = (i.a) it.next();
            activity = this.b.c;
            str = this.b.d;
            j.a.b(activity, str, aVar.a);
        }
    }
}

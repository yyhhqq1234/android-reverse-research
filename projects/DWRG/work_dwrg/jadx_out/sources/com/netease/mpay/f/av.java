package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.i;
import com.netease.mpay.e.c.j;
import com.netease.mpay.f.a.a;
import java.util.Iterator;

/* loaded from: classes.dex */
class av implements Runnable {
    final /* synthetic */ a.b a;
    final /* synthetic */ au b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(au auVar, a.b bVar) {
        this.b = auVar;
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        String str;
        if (((com.netease.mpay.server.response.m) this.a.b).w == null || ((com.netease.mpay.server.response.m) this.a.b).w.size() <= 0) {
            return;
        }
        Iterator it = ((com.netease.mpay.server.response.m) this.a.b).w.iterator();
        while (it.hasNext()) {
            i.a aVar = (i.a) it.next();
            activity = this.b.c;
            str = this.b.d;
            j.a.b(activity, str, aVar.b);
        }
    }
}

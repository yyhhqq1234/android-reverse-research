package com.netease.mpay.e.c;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class h extends com.netease.mpay.e.c.a.d {
    public h(Context context, String str) {
        super(context, str, "config.xml");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.e.b.c cVar) {
        Cdo.a("saveAppConfigs", cVar);
        c(b(cVar.a()));
    }

    private com.netease.mpay.e.b.c e() {
        if (c() != null) {
            return com.netease.mpay.e.b.c.a(a(c()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.netease.mpay.e.b.b a() {
        com.netease.mpay.e.b.c e;
        com.netease.mpay.e.b.b bVar = null;
        if (d() && (e = e()) != null && e.a != null) {
            com.netease.mpay.e.b.b bVar2 = new com.netease.mpay.e.b.b();
            Iterator it = e.a.iterator();
            while (true) {
                bVar = bVar2;
                if (!it.hasNext()) {
                    break;
                }
                com.netease.mpay.e.b.b bVar3 = (com.netease.mpay.e.b.b) it.next();
                if (bVar3.a.equals(this.c)) {
                    bVar = new com.netease.mpay.e.b.b();
                    bVar.b = bVar3.b;
                    bVar.a = bVar3.a;
                }
                bVar2 = bVar;
            }
            Cdo.a("getAppConfig", bVar);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.netease.mpay.e.b.b bVar) {
        com.netease.mpay.e.b.c cVar;
        if (d()) {
            com.netease.mpay.e.b.c e = e();
            if (e != null && e.a != null) {
                Iterator it = e.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        cVar = e;
                        break;
                    }
                    com.netease.mpay.e.b.b bVar2 = (com.netease.mpay.e.b.b) it.next();
                    if (bVar2.a.equals(bVar.a)) {
                        e.a.remove(bVar2);
                        cVar = e;
                        break;
                    }
                }
            } else {
                cVar = new com.netease.mpay.e.b.c();
                cVar.a = new ArrayList();
            }
            cVar.a.add(bVar);
            a(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        com.netease.mpay.e.b.c e;
        if (!d() || (e = e()) == null || e.a == null) {
            return;
        }
        Iterator it = e.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.b bVar = (com.netease.mpay.e.b.b) it.next();
            if (bVar.a.equals(this.c)) {
                e.a.remove(bVar);
                a(e);
                return;
            }
        }
    }
}

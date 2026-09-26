package com.netease.mpay.e.c;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class d extends com.netease.mpay.e.c.a.d {
    public d(Context context, String str) {
        super(context, str, "devices.xml");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.e.b.g gVar) {
        Cdo.a("saveDeviceStore", gVar);
        c(b(gVar.a()));
    }

    private com.netease.mpay.e.b.g b() {
        if (c() != null) {
            return com.netease.mpay.e.b.g.a(this.b, this.c, a(c()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.netease.mpay.e.b.f a() {
        com.netease.mpay.e.b.g b;
        if (!d() || (b = b()) == null || b.a == null) {
            return null;
        }
        Iterator it = b.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.f fVar = (com.netease.mpay.e.b.f) it.next();
            if (fVar.h.equals(this.c)) {
                Cdo.a("getDeviceInfoExt", fVar);
                return fVar;
            }
        }
        return new com.netease.mpay.e.b.f(this.b, this.c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.netease.mpay.e.b.f fVar) {
        com.netease.mpay.e.b.g gVar;
        Cdo.a("saveDeviceInfoExt", fVar);
        if (d()) {
            com.netease.mpay.e.b.g b = b();
            if (b != null && b.a != null) {
                Iterator it = b.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        gVar = b;
                        break;
                    }
                    com.netease.mpay.e.b.f fVar2 = (com.netease.mpay.e.b.f) it.next();
                    if (fVar2.h.equals(fVar.h)) {
                        b.a.remove(fVar2);
                        gVar = b;
                        break;
                    }
                }
            } else {
                gVar = new com.netease.mpay.e.b.g();
                gVar.a = new ArrayList();
            }
            gVar.a.add(fVar);
            a(gVar);
        }
    }
}

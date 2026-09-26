package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class aq extends au {
    public aq(Activity activity, String str, String str2, au.a aVar) {
        super(activity, str, str2, false, true, aVar);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.server.response.m a(com.netease.mpay.e.b bVar, com.netease.mpay.e.b.f fVar, String str) {
        try {
            return (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.aa(this.d, fVar.j, fVar.i, str));
        } catch (com.netease.mpay.server.a e) {
            if ((TextUtils.isEmpty(str) || !(e instanceof a.l)) && !(e instanceof a.f)) {
                throw e;
            }
            bVar.k().a();
            return (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.aa(this.d, fVar.j, fVar.i, null));
        }
    }

    private com.netease.mpay.server.response.m a(au.b bVar, com.netease.mpay.e.b.o oVar) {
        bVar.a(oVar);
        return (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ba(this.d, oVar.c, bVar.c.j, oVar.d, this.e, false));
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        ArrayList a = bVar.a.c().a(2);
        com.netease.mpay.e.b.o oVar = a.size() > 0 ? (com.netease.mpay.e.b.o) a.get(0) : null;
        String b = bVar.a.k().b();
        com.netease.mpay.server.response.m a2 = (oVar == null || TextUtils.isEmpty(oVar.c) || TextUtils.isEmpty(oVar.d) || TextUtils.isEmpty(b)) ? a(bVar.a, bVar.c, b) : a(bVar, oVar);
        Iterator it = a.iterator();
        while (it.hasNext()) {
            bVar.a.c().a(((com.netease.mpay.e.b.o) it.next()).c, (String) null);
        }
        a(bVar, a2, null, true);
        return a2;
    }
}

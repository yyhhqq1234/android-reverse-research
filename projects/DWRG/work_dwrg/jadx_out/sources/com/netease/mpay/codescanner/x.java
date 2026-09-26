package com.netease.mpay.codescanner;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.codescanner.m;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
class x implements au.a {
    final /* synthetic */ m.a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(m.a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        com.netease.mpay.e.b bVar;
        bVar = m.this.f;
        bVar.c().c(m.this.h.c, m.this.d.b());
        switch (aVar) {
            case ERR_SMS_VERIFY:
                hi.a().a((Activity) m.this.a, (com.netease.mpay.b.m) new m.d(m.this.d.d(), m.this.h.c, m.this.u), true, (Integer) null);
                return;
            case ERR_SET_PASS:
                hi.a().a((Activity) m.this.a, (com.netease.mpay.b.m) new m.g(m.this.d.d(), m.this.h.c, m.b.LOGIN, m.this.u), true, (Integer) null);
                return;
            case ERR_LOGOUT:
                m.this.h.d = null;
                m.this.a(m.this.h);
                return;
            default:
                m.this.d(str);
                return;
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        if (mVar.d()) {
            hi.a().a((Activity) m.this.a, (com.netease.mpay.b.m) new m.e(m.this.d.d(), m.this.h.c, mVar.v, m.this.u), true, (Integer) null);
        } else {
            m.this.a(m.this.h.c, m.this.d.b);
        }
    }
}

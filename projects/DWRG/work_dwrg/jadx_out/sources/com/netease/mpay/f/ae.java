package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class ae extends n {
    public ae(Activity activity, String str, String str2, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        super.f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ag a(d.C0045d c0045d) {
        com.netease.mpay.server.response.ag agVar = (com.netease.mpay.server.response.ag) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bf(this.d, c0045d.a().j, this.b.c, this.b.d));
        c0045d.a.e().a(agVar.a);
        com.netease.mpay.e.b.al c = c0045d.a.e().c(this.b.c);
        if (c == null || c.a == null) {
            c = agVar.b;
        } else {
            c.a(agVar.b);
        }
        c0045d.a.e().a(this.b.c, c);
        agVar.b = c;
        return agVar;
    }
}

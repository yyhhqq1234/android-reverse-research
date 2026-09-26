package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
public class bc extends au {
    private String j;
    private String k;
    private boolean l;

    public bc(Activity activity, String str, String str2, String str3, String str4, boolean z, au.a aVar) {
        super(activity, str, str2, z, true, aVar);
        this.j = str3;
        this.k = str4;
        this.l = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        com.netease.mpay.server.response.m mVar = this.l ? (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.x(bVar.c.j, this.e, this.j, com.netease.mpay.widget.bd.f(this.k), bVar.a.e().a(this.c), bVar.d.c, bVar.d.d)) : (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ai(bVar.c.j, this.e, this.j, com.netease.mpay.widget.bd.f(this.k), bVar.a.e().a(this.c)));
        a(bVar, mVar, new com.netease.mpay.e.b.x(false), !mVar.u.booleanValue());
        return mVar;
    }
}

package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bs extends au {
    private String j;
    private String k;
    private boolean l;

    public bs(Activity activity, String str, String str2, String str3, String str4, boolean z, au.a aVar) {
        super(activity, str, str2, false, true, aVar);
        this.j = str3;
        this.k = str4;
        this.l = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        com.netease.mpay.e.b.o a = bVar.a.c().a(this.j);
        if (a == null || TextUtils.isEmpty(a.d)) {
            throw new a.f(this.c.getString(RIdentifier.h.u));
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bj(bVar.c.j, a.c, a.d, this.k, bVar.a.e().a(this.c), this.l));
        if (1 == mVar.c) {
            a(bVar, mVar, new com.netease.mpay.e.b.ah(true), true);
        } else {
            a(bVar, mVar, new com.netease.mpay.e.b.x(true), !mVar.u.booleanValue());
        }
        return mVar;
    }
}

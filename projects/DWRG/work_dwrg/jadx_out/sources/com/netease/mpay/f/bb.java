package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
public class bb extends au {
    private String j;
    private String k;
    private String l;

    public bb(Activity activity, String str, String str2, String str3, String str4, String str5, au.a aVar) {
        super(activity, str, str2, false, true, aVar);
        this.j = str3;
        this.k = str4;
        this.l = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ag(bVar.c.j, this.e, this.j, this.k, this.l, bVar.a.e().a(this.c)));
        if (TextUtils.isEmpty(this.l)) {
            a(bVar, mVar, new com.netease.mpay.e.b.x(true), !mVar.u.booleanValue());
        } else {
            a(bVar, mVar, new com.netease.mpay.e.b.ah(true), true);
        }
        return mVar;
    }
}

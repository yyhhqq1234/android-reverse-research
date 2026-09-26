package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
public class m extends au {
    private String j;
    private String k;
    private String l;

    public m(Activity activity, String str, String str2, String str3, String str4, String str5, boolean z, au.a aVar) {
        super(activity, str, str2, false, z, aVar);
        this.j = str3;
        this.k = str4;
        this.l = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.e(this.d, bVar.c.j, this.j, this.k, this.l, bVar.a.e().a(this.c), this.e));
        a(bVar, mVar, new com.netease.mpay.e.b.ah(true), true);
        return mVar;
    }
}

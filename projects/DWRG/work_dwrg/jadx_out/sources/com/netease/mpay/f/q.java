package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class q extends au {
    private String j;
    private String k;
    private String l;

    public q(Activity activity, String str, String str2, String str3, String str4, String str5, au.a aVar) {
        super(activity, str, str2, false, false, aVar);
        this.j = str3;
        this.k = str4;
        this.l = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        if (TextUtils.isEmpty(this.j) || TextUtils.isEmpty(this.k) || TextUtils.isEmpty(this.l)) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.al));
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.r(this.d, bVar.c.j, bVar.c.i, this.j, this.k, this.l));
        a(bVar, mVar, new com.netease.mpay.e.b.j(this.j, this.l, this.k), true);
        return mVar;
    }
}

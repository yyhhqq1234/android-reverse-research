package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
public class br extends au {
    private String j;
    private String k;
    private int l;

    public br(Activity activity, String str, String str2, String str3, String str4, int i, boolean z, boolean z2, au.a aVar) {
        super(activity, str, str2, z, z2, aVar);
        this.j = str3;
        this.k = str4;
        this.l = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public br(Activity activity, String str, String str2, String str3, String str4, boolean z, au.a aVar) {
        this(activity, str, str2, str3, com.netease.mpay.widget.bd.f(str4), com.netease.mpay.widget.bd.d(str4), z, true, aVar);
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        com.netease.mpay.server.response.m mVar = this.b ? (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.z(this.d, bVar.c.j, bVar.c.i, this.j, this.k, bVar.c.l, this.l, bVar.d.c, bVar.d.d)) : (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.be(this.d, bVar.c.j, bVar.c.i, this.j, this.k, bVar.c.l, this.l));
        a(bVar, mVar, new com.netease.mpay.e.b.ah(false), true);
        return mVar;
    }
}

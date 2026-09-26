package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bm extends au {
    private com.netease.mpay.e.b.o j;

    public bm(Activity activity, String str, String str2, com.netease.mpay.e.b.o oVar, boolean z, au.a aVar) {
        super(activity, str, str2, false, z, null);
        this.j = oVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        if (this.j == null || TextUtils.isEmpty(this.j.c) || TextUtils.isEmpty(this.j.d)) {
            throw new a.f(this.c.getString(RIdentifier.h.u));
        }
        bVar.a(this.j);
        switch (this.j.f) {
            case 4:
                com.netease.mpay.a.a.a(this.c, this.j);
                break;
        }
        com.netease.mpay.server.a.ba baVar = new com.netease.mpay.server.a.ba(this.d, this.j.c, bVar.c.j, this.j.d, this.e, 7 == this.j.f || com.netease.mpay.e.b.ah.c(this.j));
        if (1 == this.j.f) {
            baVar.c(this.j.a(true));
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) new com.netease.mpay.server.d(this.c, this.d, this.e).a(baVar);
        a(bVar, mVar, this.j, null, true);
        return mVar;
    }
}

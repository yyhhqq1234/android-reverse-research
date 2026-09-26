package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.auth.a;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bg extends au {
    private a.C0033a j;

    public bg(Activity activity, String str, String str2, a.C0033a c0033a, boolean z, au.a aVar) {
        super(activity, str, str2, z, true, aVar);
        this.j = c0033a;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        String string = this.c.getString(RIdentifier.h.aw);
        if (this.j == null || TextUtils.isEmpty(this.j.a) || TextUtils.isEmpty(this.j.b)) {
            throw new a.f(string);
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.aq(bVar.c.j, this.j.a, this.j.b));
        a(bVar, mVar, null, true);
        return mVar;
    }
}

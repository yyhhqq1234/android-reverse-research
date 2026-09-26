package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bu extends au {
    private String j;

    public bu(Activity activity, String str, String str2, String str3, boolean z, au.a aVar) {
        super(activity, str, str2, z, true, aVar);
        this.j = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        String string = this.c.getString(RIdentifier.h.aw);
        if (TextUtils.isEmpty(this.j)) {
            throw new a.f(string);
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.bl(bVar.c.j, this.j));
        a(bVar, mVar, null, true);
        return mVar;
    }
}

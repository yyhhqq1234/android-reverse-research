package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;

/* loaded from: classes.dex */
public class bt extends au {
    private Oauth2AccessToken j;

    public bt(Activity activity, String str, String str2, Oauth2AccessToken oauth2AccessToken, boolean z, au.a aVar) {
        super(activity, str, str2, z, true, aVar);
        this.j = oauth2AccessToken;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        String string = this.c.getString(RIdentifier.h.aw);
        if (this.j == null) {
            throw new a.f(string);
        }
        String uid = this.j.getUid();
        String token = this.j.getToken();
        if (TextUtils.isEmpty(uid) || TextUtils.isEmpty(token)) {
            throw new a.f(string);
        }
        com.netease.mpay.server.response.m mVar = (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.bk(this.d, bVar.c.j, uid, token));
        a(bVar, mVar, null, true);
        com.netease.mpay.social.g.a(this.c, this.d, this.e, this.j);
        return mVar;
    }
}

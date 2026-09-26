package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.netease.mpay.f.au;
import com.netease.mpay.server.a;

/* loaded from: classes.dex */
public class ap extends au {
    private GoogleApiClient j;
    private String k;

    public ap(Activity activity, String str, String str2, GoogleApiClient googleApiClient, String str3, boolean z, au.a aVar) {
        super(activity, str, str2, z, false, aVar);
        this.j = googleApiClient;
        this.k = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au
    protected com.netease.mpay.server.response.m a(au.b bVar) {
        try {
            com.netease.mpay.server.response.m mVar = this.b ? (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.w(this.d, bVar.c.j, this.k, bVar.d.c, bVar.d.d)) : (com.netease.mpay.server.response.m) bVar.b.a(new com.netease.mpay.server.a.u(this.d, bVar.c.j, this.k));
            a(bVar, mVar, null, true);
            return mVar;
        } catch (com.netease.mpay.server.a e) {
            if (bVar.d == null && (e instanceof a.f) && this.j.isConnected()) {
                Auth.GoogleSignInApi.signOut(this.j);
            }
            throw e;
        }
    }
}

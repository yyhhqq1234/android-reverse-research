package com.netease.mpay.a;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.netease.mpay.b.ao;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.oy;
import com.netease.mpay.server.response.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements au.a {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        GoogleApiClient googleApiClient;
        GoogleApiClient googleApiClient2;
        googleApiClient = this.a.h;
        if (!googleApiClient.isConnected() || (!aVar.a() && b.a.ERR_BIND_ACCOUNT_EXIST != aVar)) {
            this.a.a(aVar, str);
            return;
        }
        GoogleSignInApi googleSignInApi = Auth.GoogleSignInApi;
        googleApiClient2 = this.a.h;
        googleSignInApi.signOut(googleApiClient2).setResultCallback(new i(this, aVar, str));
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, m mVar) {
        FragmentActivity fragmentActivity;
        String str2;
        String str3;
        FragmentActivity fragmentActivity2;
        fragmentActivity = this.a.a;
        str2 = this.a.b;
        String str4 = mVar.i;
        int i = mVar.c;
        str3 = this.a.g;
        new oy(fragmentActivity, str2, str4, i, str3).a(mVar.e, mVar.f);
        ao aoVar = new ao(str, mVar);
        fragmentActivity2 = this.a.a;
        aoVar.a(fragmentActivity2);
    }
}

package com.netease.mpay.a;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.netease.mpay.b.an;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.ap;
import com.netease.mpay.f.bm;
import com.netease.mpay.server.response.t;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class f implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private FragmentActivity a;
    private String b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f = false;
    private String g;
    private GoogleApiClient h;

    public f(FragmentActivity fragmentActivity, String str, String str2, boolean z, boolean z2, boolean z3) {
        this.d = false;
        this.e = false;
        this.a = fragmentActivity;
        this.b = str;
        this.g = str2;
        this.d = z;
        this.c = z2;
        this.e = z3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b.a aVar, String str) {
        new an(str, aVar.a() && this.d).a(this.a);
    }

    private void a(String str) {
        new an(str, false).a(this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.a.startActivityForResult(Auth.GoogleSignInApi.getSignInIntent(this.h), 9000);
    }

    private void c() {
        if (!this.e) {
            d();
            return;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.b);
        o b = bVar.c().b(this.g);
        com.netease.mpay.e.b.f a = bVar.d().a();
        if (a == null || a.j == null || a.i == null || b == null || b.f != 5 || TextUtils.isEmpty(b.d)) {
            d();
        } else {
            new bm(this.a, this.b, this.g, b, false, new j(this)).h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        a(this.a.getString(RIdentifier.h.aw));
    }

    public void a() {
        this.h = new GoogleApiClient.Builder(this.a).enableAutoManage(this.a, this).addApi(Auth.GOOGLE_SIGN_IN_API, new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestServerAuthCode(t.a(this.a)).build()).addOnConnectionFailedListener(this).addConnectionCallbacks(this).build();
        this.f = this.c || this.d;
        if (this.f) {
            return;
        }
        b();
    }

    public void a(int i, int i2, Intent intent) {
        if (i == 9000) {
            if (i2 != -1) {
                if (i2 == 0) {
                    a(this.a.getString(RIdentifier.h.ad));
                    return;
                } else {
                    c();
                    return;
                }
            }
            GoogleSignInResult signInResultFromIntent = Auth.GoogleSignInApi.getSignInResultFromIntent(intent);
            String serverAuthCode = (signInResultFromIntent == null || !signInResultFromIntent.isSuccess() || signInResultFromIntent.getSignInAccount() == null) ? null : signInResultFromIntent.getSignInAccount().getServerAuthCode();
            if (TextUtils.isEmpty(serverAuthCode)) {
                c();
            } else {
                new ap(this.a, this.b, this.g, this.h, serverAuthCode, this.d, new h(this)).h();
            }
        }
    }

    public void onConnected(@Nullable Bundle bundle) {
        if (this.f) {
            this.f = false;
            Auth.GoogleSignInApi.signOut(this.h).setResultCallback(new g(this));
        }
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        if (connectionResult.getErrorCode() == 13) {
            a(this.a.getString(RIdentifier.h.ad));
        } else {
            c();
        }
    }

    public void onConnectionSuspended(int i) {
        c();
    }
}

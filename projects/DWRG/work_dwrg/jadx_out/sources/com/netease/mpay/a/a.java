package com.netease.mpay.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.dodola.rocoo.Hack;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.r;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.Arrays;

/* loaded from: classes.dex */
public class a {
    private final String a;
    private final String b;
    private final String c;
    private AccessToken d;
    private CallbackManager e;
    private Activity f;
    private String g;
    private String h;
    private String i;
    private String j;
    private boolean k;
    private String l;
    private com.netease.mpay.e.b m;
    private FacebookCallback n;

    public a(Activity activity, String str, String str2, String str3) {
        this(activity, str, str2, str3, false);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public a(Activity activity, String str, String str2, String str3, boolean z) {
        this.a = "email";
        this.b = "name";
        this.c = ResIdReader.RES_TYPE_ID;
        this.k = false;
        this.l = null;
        this.n = new b(this);
        this.f = activity;
        this.j = str;
        this.g = str3;
        this.l = str2;
        this.k = z;
        this.m = new com.netease.mpay.e.b(this.f, this.j);
    }

    public static void a(Context context, o oVar) {
        if (context == null || oVar == null) {
            return;
        }
        if (!FacebookSdk.isInitialized()) {
            FacebookSdk.sdkInitialize(context.getApplicationContext());
        }
        AccessToken a = new r.a(context, com.netease.mpay.e.b.k.a(oVar)).a();
        if (a != null) {
            AccessToken.setCurrentAccessToken(a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AccessToken accessToken) {
        GraphRequest newMeRequest = GraphRequest.newMeRequest(accessToken, new c(this, accessToken));
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,email");
        newMeRequest.setParameters(bundle);
        newMeRequest.executeAsync();
    }

    private void a(boolean z) {
        this.e = CallbackManager.Factory.create();
        LoginManager loginManager = LoginManager.getInstance();
        if (z) {
            loginManager.setLoginBehavior(LoginBehavior.WEB_ONLY);
        } else {
            loginManager.setLoginBehavior(LoginBehavior.NATIVE_WITH_FALLBACK);
        }
        loginManager.registerCallback(this.e, this.n);
        loginManager.logInWithReadPermissions(this.f, Arrays.asList("public_profile", "email"));
    }

    public static void b(Context context, o oVar) {
        String a = com.netease.mpay.e.b.k.a(oVar);
        if (a != null) {
            new r.a(context, a).b();
        }
    }

    public void a() {
        if (!FacebookSdk.isInitialized()) {
            FacebookSdk.sdkInitialize(this.f.getApplicationContext());
        }
        AccessToken.setCurrentAccessToken((AccessToken) null);
        if (this.g == null || this.g.trim().length() <= 0 || this.k) {
            a(this.m.c().a(4).size() > 0);
        } else {
            a(this.m.c().a(4).size() != 1);
        }
    }

    public void a(int i, int i2, Intent intent) {
        this.e.onActivityResult(i, i2, intent);
        Cdo.a("resultcode:" + i2);
    }
}

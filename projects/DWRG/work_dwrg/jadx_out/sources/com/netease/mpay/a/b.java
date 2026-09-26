package com.netease.mpay.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.login.LoginResult;
import com.netease.mpay.Cdo;
import com.netease.mpay.b.an;
import com.netease.mpay.b.aq;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements FacebookCallback {
    final /* synthetic */ a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(LoginResult loginResult) {
        AccessToken accessToken;
        Profile.fetchProfileForCurrentAccessToken();
        this.a.d = loginResult.getAccessToken();
        this.a.a(loginResult.getAccessToken());
        accessToken = this.a.d;
        AccessToken.setCurrentAccessToken(accessToken);
    }

    public void onCancel() {
        Activity activity;
        AccessToken.setCurrentAccessToken((AccessToken) null);
        aq aqVar = new aq();
        activity = this.a.f;
        aqVar.a(activity);
    }

    public void onError(FacebookException facebookException) {
        Activity activity;
        Activity activity2;
        Cdo.b(facebookException.getMessage());
        AccessToken.setCurrentAccessToken((AccessToken) null);
        activity = this.a.f;
        an anVar = new an(activity.getString(RIdentifier.h.ai), false);
        activity2 = this.a.f;
        anVar.a(activity2);
    }
}

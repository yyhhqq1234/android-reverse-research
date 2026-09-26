package com.netease.mpay;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class on implements WeiboAuthListener {
    final /* synthetic */ om a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public on(om omVar) {
        this.a = omVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
    public void onCancel() {
        new com.netease.mpay.b.aq().a(this.a.a);
    }

    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
    public void onComplete(Bundle bundle) {
        com.netease.mpay.b.aj ajVar;
        com.netease.mpay.b.aj ajVar2;
        Oauth2AccessToken oauth2AccessToken;
        this.a.g = Oauth2AccessToken.parseAccessToken(bundle);
        FragmentActivity fragmentActivity = this.a.a;
        ajVar = this.a.d;
        String a = ajVar.a();
        ajVar2 = this.a.d;
        String b = ajVar2.b();
        oauth2AccessToken = this.a.g;
        new com.netease.mpay.f.bt(fragmentActivity, a, b, oauth2AccessToken, false, new oo(this)).h();
    }

    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
    public void onWeiboException(WeiboException weiboException) {
        new com.netease.mpay.b.aq().a(this.a.a);
    }
}

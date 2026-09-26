package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.auth.sso.SsoHandler;

/* loaded from: classes.dex */
public class om extends a {
    private com.netease.mpay.b.aj d;
    private SsoHandler e;
    private AuthInfo f;
    private Oauth2AccessToken g;
    private WeiboAuthListener h;

    public om(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.h = new on(this);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.aj(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (this.e != null) {
            this.e.authorizeCallBack(i, i2, intent);
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.d.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
            return;
        }
        this.f = new AuthInfo(this.a, this.d.a, this.d.b, null);
        this.e = new SsoHandler(this.a, this.f);
        this.e.authorize(this.h);
    }
}

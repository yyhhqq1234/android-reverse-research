package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.auth.sso.SsoHandler;

/* loaded from: classes.dex */
class op implements DialogInterface.OnClickListener {
    final /* synthetic */ oo a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public op(oo ooVar) {
        this.a = ooVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        SsoHandler ssoHandler;
        WeiboAuthListener weiboAuthListener;
        ssoHandler = this.a.a.a.e;
        weiboAuthListener = this.a.a.a.h;
        ssoHandler.authorize(weiboAuthListener);
    }
}

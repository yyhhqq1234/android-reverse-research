package com.netease.mpay.social;

import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements RequestListener {
    final /* synthetic */ k a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar) {
        this.a = kVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.sina.weibo.sdk.net.RequestListener
    public void onComplete(String str) {
        this.a.a(i.a(str));
    }

    @Override // com.sina.weibo.sdk.net.RequestListener
    public void onWeiboException(WeiboException weiboException) {
        this.a.h.a(1);
    }
}

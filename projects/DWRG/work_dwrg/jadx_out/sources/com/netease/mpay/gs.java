package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.social.Friend;
import com.netease.mpay.social.GetFriendsCallback;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gs implements RequestListener {
    final /* synthetic */ GetFriendsCallback a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gs(MpayApi mpayApi, GetFriendsCallback getFriendsCallback) {
        this.b = mpayApi;
        this.a = getFriendsCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.sina.weibo.sdk.net.RequestListener
    public void onComplete(String str) {
        com.netease.mpay.social.i a = com.netease.mpay.social.i.a(str);
        Friend friend = new Friend();
        friend.mUid = new com.netease.mpay.e.b(this.b.a, this.b.c).c().b(this.b.d).c;
        friend.mUserType = 3;
        friend.mRelationType = 0;
        friend.mNickName = a.c;
        friend.mAvatarUrl = a.A;
        this.a.onSuccessed(new Friend[]{friend});
    }

    @Override // com.sina.weibo.sdk.net.RequestListener
    public void onWeiboException(WeiboException weiboException) {
        Cdo.c("GetFriendsCallback.onFailed");
        this.a.onFailed(1);
    }
}

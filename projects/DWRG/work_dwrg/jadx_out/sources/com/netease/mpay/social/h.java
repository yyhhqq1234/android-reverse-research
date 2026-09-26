package com.netease.mpay.social;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.constant.WBPageConstants;
import com.sina.weibo.sdk.net.RequestListener;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class h extends f {
    public h(Context context, String str, Oauth2AccessToken oauth2AccessToken) {
        super(context, str, oauth2AccessToken);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(long j, int i, int i2, RequestListener requestListener) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("uid", String.valueOf(j)));
        arrayList.add(new com.netease.mpay.widget.a.a(WBPageConstants.ParamKey.COUNT, String.valueOf(i)));
        arrayList.add(new com.netease.mpay.widget.a.a(WBPageConstants.ParamKey.PAGE, String.valueOf(i2)));
        a("https://api.weibo.com/2/friendships/friends/bilateral.json", arrayList, 0, requestListener);
    }

    public void a(long j, int i, int i2, boolean z, RequestListener requestListener) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(WBPageConstants.ParamKey.COUNT, String.valueOf(i)));
        arrayList.add(new com.netease.mpay.widget.a.a("cursor", String.valueOf(i2)));
        arrayList.add(new com.netease.mpay.widget.a.a("trim_status", String.valueOf(z ? 1 : 0)));
        arrayList.add(new com.netease.mpay.widget.a.a("uid", String.valueOf(j)));
        a("https://api.weibo.com/2/friendships/friends.json", arrayList, 0, requestListener);
    }
}

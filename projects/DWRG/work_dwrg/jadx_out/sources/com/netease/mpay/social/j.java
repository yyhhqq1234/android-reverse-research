package com.netease.mpay.social;

import android.content.Context;
import android.util.SparseArray;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class j extends f {
    private static final SparseArray d = new SparseArray();

    static {
        d.put(0, "https://api.weibo.com/2/users/show.json");
        d.put(1, "https://api.weibo.com/2/users/domain_show.json");
        d.put(2, "https://api.weibo.com/2/users/counts.json");
    }

    public j(Context context, String str, Oauth2AccessToken oauth2AccessToken) {
        super(context, str, oauth2AccessToken);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(long j, RequestListener requestListener) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("uid", String.valueOf(j)));
        a((String) d.get(0), arrayList, 0, requestListener);
    }
}

package com.netease.mpay.social;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.HashMap;

/* loaded from: classes.dex */
public class m {
    public String a;
    public int b;
    public String c;
    public String d;
    public String e;
    public boolean f = false;

    public m() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static m a(String str, Context context, String str2) {
        if (str == null) {
            return null;
        }
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(com.netease.mpay.e.a.b(bd.a(str), context, str2)), String.class, String.class);
            m mVar = new m();
            mVar.a = (String) a.remove("weibo_uid");
            mVar.b = Integer.valueOf((String) a.remove("friend_type")).intValue();
            mVar.c = (String) a.remove("sdk_uid");
            mVar.e = (String) a.remove("weibo_avatar_url");
            mVar.d = (String) a.remove("weibo_name");
            String str3 = (String) a.remove("exchanged");
            mVar.f = str3 != null && str3.equals("1");
            return mVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public String a(Context context, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("weibo_uid", this.a);
        hashMap.put("friend_type", String.valueOf(this.b));
        hashMap.put("sdk_uid", this.c);
        hashMap.put("weibo_avatar_url", this.e);
        hashMap.put("weibo_name", this.d);
        hashMap.put("exchanged", this.f ? "1" : "0");
        return bd.b(com.netease.mpay.e.a.a(com.netease.mpay.e.a.a(hashMap), context, str));
    }

    public boolean a() {
        return !TextUtils.isEmpty(this.c);
    }
}

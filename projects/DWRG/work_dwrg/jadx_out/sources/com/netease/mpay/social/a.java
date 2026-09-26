package com.netease.mpay.social;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bd;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public class a {
    private Context a;
    private String b;
    private String c;
    private String d;

    /* renamed from: com.netease.mpay.social.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0052a {
        public long a;
        public long b;
        public long c;
        public HashMap d = new HashMap();

        public C0052a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = context.getString(RIdentifier.h.dQ);
        this.d = new com.netease.mpay.e.b(context, str).c().b(str2).c;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public C0052a a() {
        String string = this.a.getSharedPreferences(this.c, 0).getString("weibo_friends_" + this.d, null);
        if (string == null) {
            return null;
        }
        HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(com.netease.mpay.e.a.b(bd.a(string), this.a, this.b)), String.class, String.class);
        C0052a c0052a = new C0052a();
        c0052a.a = Long.valueOf((String) a.remove("weibo_exp_time")).longValue();
        c0052a.b = Long.valueOf((String) a.remove("nonsdk_exp_time")).longValue();
        c0052a.c = Long.valueOf((String) a.remove("all_exp_time")).longValue();
        Set<String> keySet = a.keySet();
        HashMap hashMap = new HashMap();
        for (String str : keySet) {
            hashMap.put(str, m.a((String) a.get(str), this.a, this.b));
        }
        c0052a.d = hashMap;
        return c0052a;
    }

    public void a(C0052a c0052a) {
        if (c0052a == null || c0052a.d == null) {
            return;
        }
        HashMap hashMap = c0052a.d;
        Set<String> keySet = hashMap.keySet();
        HashMap hashMap2 = new HashMap();
        for (String str : keySet) {
            hashMap2.put(str, ((m) hashMap.get(str)).a(this.a, this.b));
        }
        hashMap2.put("weibo_exp_time", String.valueOf(c0052a.a));
        hashMap2.put("nonsdk_exp_time", String.valueOf(c0052a.b));
        hashMap2.put("all_exp_time", String.valueOf(c0052a.c));
        String b = bd.b(com.netease.mpay.e.a.a(com.netease.mpay.e.a.a(hashMap2), this.a, this.b));
        SharedPreferences.Editor edit = this.a.getSharedPreferences(this.c, 0).edit();
        edit.putString("weibo_friends_" + this.d, b);
        edit.commit();
    }

    public void b() {
        SharedPreferences sharedPreferences = this.a.getSharedPreferences(this.c, 0);
        String str = "weibo_friends_" + this.d;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(str);
        edit.commit();
    }
}

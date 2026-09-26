package com.netease.mpay.e.b;

import android.support.annotation.Nullable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.o;
import java.util.HashMap;

/* loaded from: classes.dex */
public class k extends o.a {
    String a;
    String b;
    String c;
    String d;

    public k(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static String a(o oVar) {
        if (a(oVar, 4)) {
            return (String) oVar.n.get("ext_uid");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static HashMap a(com.netease.mpay.server.response.m mVar) {
        return new HashMap();
    }

    @Override // com.netease.mpay.e.b.o.a
    HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put("ext_uid", this.a);
        hashMap.put("ext_email", this.b);
        hashMap.put("ext_token", this.c);
        hashMap.put("ext_cache_name", this.d);
        return hashMap;
    }
}

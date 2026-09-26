package com.netease.mpay.e.b;

import android.support.annotation.Nullable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.o;
import java.util.HashMap;

/* loaded from: classes.dex */
public class j extends o.a {
    private String a;
    private String b;
    private String c;

    public j(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static String a(o oVar) {
        if (a(oVar, 6)) {
            return (String) oVar.n.get("external_uid");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static HashMap a(com.netease.mpay.server.response.m mVar) {
        return new HashMap();
    }

    public static String b(o oVar) {
        if (a(oVar, 6)) {
            return (String) oVar.n.get("platform_id");
        }
        return null;
    }

    public static String c(o oVar) {
        if (a(oVar, 6)) {
            return (String) oVar.n.get("display_name");
        }
        return null;
    }

    @Override // com.netease.mpay.e.b.o.a
    HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put("external_uid", this.a);
        hashMap.put("platform_id", this.b);
        hashMap.put("display_name", this.c);
        return hashMap;
    }
}

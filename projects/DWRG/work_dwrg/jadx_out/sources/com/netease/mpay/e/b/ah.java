package com.netease.mpay.e.b;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.o;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ah extends o.a {
    private boolean a;

    public ah(boolean z) {
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static String a(o oVar) {
        if (a(oVar, 1)) {
            return (String) oVar.n.get("urs");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static HashMap a(com.netease.mpay.server.response.m mVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("urs", mVar.k);
        hashMap.put("related_display_mobile", mVar.n);
        return hashMap;
    }

    public static void a(o oVar, String str) {
        if (oVar == null) {
            return;
        }
        if (oVar.n == null) {
            oVar.n = new HashMap();
        }
        oVar.n.put("urs", str);
    }

    @NonNull
    public static String b(o oVar) {
        return c(oVar) ? (String) oVar.n.get("related_display_mobile") : "";
    }

    public static boolean c(o oVar) {
        return a(oVar, 1) && TextUtils.equals((CharSequence) oVar.n.get("login_by_sms"), "1");
    }

    @Override // com.netease.mpay.e.b.o.a
    @NonNull
    HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put("login_by_sms", this.a ? "1" : "0");
        return hashMap;
    }
}

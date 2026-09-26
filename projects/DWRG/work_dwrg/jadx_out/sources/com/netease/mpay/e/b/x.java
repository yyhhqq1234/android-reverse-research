package com.netease.mpay.e.b;

import android.support.annotation.Nullable;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.e.b.o;
import java.util.HashMap;

/* loaded from: classes.dex */
public class x extends o.a {
    private boolean a;

    public x(boolean z) {
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static String a(o oVar) {
        if (a(oVar, 7)) {
            return (String) oVar.n.get(BaseConstants.NET_KEY_mobile);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static HashMap a(com.netease.mpay.server.response.m mVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(BaseConstants.NET_KEY_mobile, mVar.k);
        return hashMap;
    }

    public static void a(o oVar, String str) {
        if (oVar == null) {
            return;
        }
        if (oVar.n == null) {
            oVar.n = new HashMap();
        }
        oVar.n.put(BaseConstants.NET_KEY_mobile, str);
    }

    @Override // com.netease.mpay.e.b.o.a
    HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put("from_sms", this.a ? "1" : "0");
        return hashMap;
    }
}

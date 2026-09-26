package com.netease.mpay;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jr implements com.netease.mpay.f.a.b {
    final /* synthetic */ jg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jr(jg jgVar) {
        this.a = jgVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.widget.s sVar;
        this.a.b(3);
        if (aVar.a()) {
            this.a.b(str);
        } else {
            sVar = this.a.f;
            sVar.a(str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.h hVar) {
        com.netease.mpay.b.s sVar;
        if (hVar == null || !hVar.a || TextUtils.isEmpty(hVar.b)) {
            this.a.b(3);
            new ar.g().a(this.a.a);
        } else {
            this.a.b(2);
            String str = hVar.b;
            sVar = this.a.d;
            new ar.a(null, str, com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(sVar.e.b, "cz_wydk"), "cz_wydk_cz")).a(this.a.a);
        }
    }
}

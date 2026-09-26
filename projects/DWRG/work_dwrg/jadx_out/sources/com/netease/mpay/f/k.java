package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class k extends com.netease.mpay.f.a.d {
    private String a;
    private String b;

    public k(Activity activity, String str, String str2, String str3, String str4, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = str3;
        this.b = str4;
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.ae) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bd(this.d, c0045d.a().j, this.a, this.b));
    }
}

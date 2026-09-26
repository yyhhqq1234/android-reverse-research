package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class x extends com.netease.mpay.f.a.d {
    private String a;

    public x(Activity activity, String str, String str2, String str3, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.e = str2;
        this.a = str3;
        super.c();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.i b(d.C0045d c0045d) {
        com.netease.mpay.e.b.o b = c0045d.a.c().b(this.e);
        return (com.netease.mpay.server.response.i) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.p(c0045d.b().j, this.a, b != null ? b.c : null, b != null ? b.d : null));
    }
}

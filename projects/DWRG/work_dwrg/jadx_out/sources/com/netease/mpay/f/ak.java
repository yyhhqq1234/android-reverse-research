package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class ak extends com.netease.mpay.f.a.d {
    private com.netease.mpay.e.b.o a;

    public ak(Activity activity, String str, String str2, com.netease.mpay.e.b.o oVar, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = oVar;
        f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.x b(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.x) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ak(c0045d.b().j, com.netease.mpay.e.b.x.a(this.a), this.a.d));
    }
}

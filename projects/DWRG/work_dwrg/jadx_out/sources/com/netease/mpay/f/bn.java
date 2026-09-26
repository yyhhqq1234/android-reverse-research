package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class bn extends com.netease.mpay.f.a.d {
    public bn(Activity activity, String str, String str2) {
        super(activity, str, str2, null);
        super.f();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        com.netease.mpay.e.b.f a = c0045d.a();
        if (!a.a(this.c) && a.o >= c0045d.a.e().a().H) {
            return null;
        }
        a.o = ((com.netease.mpay.server.response.g) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.l(a.j, a, c0045d.a.e().a(this.c)))).a;
        c0045d.a.d().a(a);
        return null;
    }
}

package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class at extends com.netease.mpay.f.a.d {
    private String a;
    private String b;

    public at(Activity activity, String str, String str2, String str3, com.netease.mpay.f.a.b bVar) {
        super(activity, str, "webLogin", bVar);
        this.a = str2;
        this.b = str3;
        super.c();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ab b(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.ab) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.as(this.a, this.b));
    }
}

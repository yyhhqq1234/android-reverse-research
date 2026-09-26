package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class b extends com.netease.mpay.f.a.d {
    private String a;
    private String b;

    public b(Activity activity, String str, String str2, String str3, String str4, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = str3;
        this.b = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.a b(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.a) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a(this.d, c0045d.a().j, this.a, this.b));
    }
}

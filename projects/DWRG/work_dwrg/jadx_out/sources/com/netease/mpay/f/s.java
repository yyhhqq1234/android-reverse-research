package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class s extends n {
    private String a;
    private String j;
    private String k;
    private String l;

    public s(Activity activity, String str, String str2, String str3, String str4, String str5, String str6, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = str3;
        this.j = str4;
        this.k = str5;
        this.l = str6;
        super.c();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void a(d.C0045d c0045d) {
        new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.t(this.d, c0045d.a().j, this.b.c, this.b.d, this.a, this.j, this.l, this.k));
        return null;
    }
}

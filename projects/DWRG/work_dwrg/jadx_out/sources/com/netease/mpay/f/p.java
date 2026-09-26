package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class p extends com.netease.mpay.f.a.d {
    private String a;
    private String b;
    private String j;
    private int k;
    private String l;

    public p(Activity activity, String str, String str2, String str3, String str4, String str5, int i, String str6, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = str3;
        this.b = str4;
        this.j = str5;
        this.k = i;
        this.l = str6;
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.h b(d.C0045d c0045d) {
        return (com.netease.mpay.server.response.h) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.m(this.d, c0045d.a().j, this.a, this.b, this.j, this.k, this.l));
    }
}

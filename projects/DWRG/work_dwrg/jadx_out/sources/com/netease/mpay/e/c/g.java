package com.netease.mpay.e.c;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class g extends com.netease.mpay.e.c.a.c {
    private i a;
    private h d;

    public g(Context context, String str) {
        super(context, str);
        this.a = new i(context, str);
        this.d = new h(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a() {
        this.a.b();
        this.a.c();
        this.d.b();
    }

    public void a(com.netease.mpay.e.b.l lVar) {
        this.a.a(lVar);
    }

    public void a(String str) {
        com.netease.mpay.e.b.d dVar = new com.netease.mpay.e.b.d();
        dVar.a = str;
        this.a.a(dVar);
        com.netease.mpay.e.b.b bVar = new com.netease.mpay.e.b.b();
        bVar.a = this.c;
        bVar.b = str;
        this.d.a(bVar);
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] a(byte[] bArr) {
        return null;
    }

    public String b() {
        com.netease.mpay.e.b.d a = this.a.a();
        if (a != null && !TextUtils.isEmpty(a.a)) {
            return a.a;
        }
        com.netease.mpay.e.b.b a2 = this.d.a();
        if (a2 != null) {
            return a2.b;
        }
        return null;
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] b(byte[] bArr) {
        return null;
    }

    public com.netease.mpay.e.b.l c() {
        return this.a.d();
    }
}

package com.netease.mpay.e.c;

import android.content.Context;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class c extends com.netease.mpay.e.c.a.c {
    private e a;
    private d d;

    public c(Context context, String str) {
        super(context, str);
        this.a = new e(this.b, this.c);
        this.d = new d(this.b, this.c);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public com.netease.mpay.e.b.f a() {
        com.netease.mpay.e.b.f a = this.a.a();
        if (a == null) {
            a = this.d.a();
            if (a != null) {
                this.a.a(a);
            }
        } else {
            this.d.a(a);
        }
        return a != null ? a : new com.netease.mpay.e.b.f(this.b, this.c);
    }

    public void a(com.netease.mpay.e.b.f fVar) {
        this.a.a(fVar);
        this.d.a(fVar);
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] a(byte[] bArr) {
        return null;
    }

    public void b() {
        com.netease.mpay.e.b.f a = a();
        a.j = null;
        a.k = null;
        a.i = null;
        this.a.a(a);
        this.d.a(a);
    }

    @Override // com.netease.mpay.e.c.a.c
    protected byte[] b(byte[] bArr) {
        return null;
    }
}

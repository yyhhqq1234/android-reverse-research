package com.applovin.impl;

import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
final class yq extends xl {
    private final ah b;
    private final ah c;
    private int d;
    private boolean e;
    private boolean f;
    private int g;

    public yq(qo qoVar) {
        super(qoVar);
        this.b = new ah(yf.a);
        this.c = new ah(4);
    }

    @Override // com.applovin.impl.xl
    protected boolean a(ah ahVar) throws xl.a {
        int iW = ahVar.w();
        int i = (iW >> 4) & 15;
        int i2 = iW & 15;
        if (i2 == 7) {
            this.g = i;
            return i != 5;
        }
        throw new xl.a("Video format not supported: " + i2);
    }

    @Override // com.applovin.impl.xl
    protected boolean b(ah ahVar, long j) throws ch {
        int iW = ahVar.w();
        long jK = j + (((long) ahVar.k()) * 1000);
        if (iW == 0 && !this.e) {
            ah ahVar2 = new ah(new byte[ahVar.a()]);
            ahVar.a(ahVar2.c(), 0, ahVar.a());
            w1 w1VarB = w1.b(ahVar2);
            this.d = w1VarB.b;
            this.a.a(new e9.b().f(MimeTypes.VIDEO_H264).a(w1VarB.f).q(w1VarB.c).g(w1VarB.d).b(w1VarB.e).a(w1VarB.a).a());
            this.e = true;
            return false;
        }
        if (iW != 1 || !this.e) {
            return false;
        }
        int i = this.g == 1 ? 1 : 0;
        if (!this.f && i == 0) {
            return false;
        }
        byte[] bArrC = this.c.c();
        bArrC[0] = 0;
        bArrC[1] = 0;
        bArrC[2] = 0;
        int i2 = 4 - this.d;
        int i3 = 0;
        while (ahVar.a() > 0) {
            ahVar.a(this.c.c(), i2, this.d);
            this.c.f(0);
            int iA = this.c.A();
            this.b.f(0);
            this.a.a(this.b, 4);
            this.a.a(ahVar, iA);
            i3 = i3 + 4 + iA;
        }
        this.a.a(jK, i, i3, 0, null);
        this.f = true;
        return true;
    }
}

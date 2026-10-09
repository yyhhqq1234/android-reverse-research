package com.applovin.impl;

import com.unity3d.services.core.device.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class ha implements p7 {
    private final nj a;
    private String b;
    private qo c;
    private a d;
    private boolean e;
    private long l;
    private final boolean[] f = new boolean[3];
    private final xf g = new xf(32, 128);
    private final xf h = new xf(33, 128);
    private final xf i = new xf(34, 128);
    private final xf j = new xf(39, 128);
    private final xf k = new xf(40, 128);
    private long m = -9223372036854775807L;
    private final ah n = new ah();

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public ha(nj njVar) {
        this.a = njVar;
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        c();
        while (ahVar.a() > 0) {
            int iD = ahVar.d();
            int iE = ahVar.e();
            byte[] bArrC = ahVar.c();
            this.l += (long) ahVar.a();
            this.c.a(ahVar, ahVar.a());
            while (iD < iE) {
                int iA = yf.a(bArrC, iD, iE, this.f);
                if (iA == iE) {
                    a(bArrC, iD, iE);
                    return;
                }
                int iA2 = yf.a(bArrC, iA);
                int i = iA - iD;
                if (i > 0) {
                    a(bArrC, iD, iA);
                }
                int i2 = iE - iA;
                long j = this.l - ((long) i2);
                a(j, i2, i < 0 ? -i : 0, this.m);
                b(j, i2, iA2, this.m);
                iD = iA + 3;
            }
        }
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.b = dVar.b();
        qo qoVarA = l8Var.a(dVar.c(), 2);
        this.c = qoVarA;
        this.d = new a(qoVarA);
        this.a.a(l8Var, dVar);
    }

    private static void b(bh bhVar) {
        int iF = bhVar.f();
        boolean zC = false;
        int i = 0;
        for (int i2 = 0; i2 < iF; i2++) {
            if (i2 != 0) {
                zC = bhVar.c();
            }
            if (zC) {
                bhVar.g();
                bhVar.f();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (bhVar.c()) {
                        bhVar.g();
                    }
                }
            } else {
                int iF2 = bhVar.f();
                int iF3 = bhVar.f();
                int i4 = iF2 + iF3;
                for (int i5 = 0; i5 < iF2; i5++) {
                    bhVar.f();
                    bhVar.g();
                }
                for (int i6 = 0; i6 < iF3; i6++) {
                    bhVar.f();
                    bhVar.g();
                }
                i = i4;
            }
        }
    }

    private void c() {
        b1.b(this.c);
        xp.a(this.d);
    }

    private static final class a {
        private final qo a;
        private long b;
        private boolean c;
        private int d;
        private long e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private long k;
        private long l;
        private boolean m;

        private static boolean a(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        private static boolean b(int i) {
            return i < 32 || i == 40;
        }

        public a(qo qoVar) {
            this.a = qoVar;
        }

        public void a(long j, int i, boolean z) {
            if (this.j && this.g) {
                this.m = this.c;
                this.j = false;
            } else if (this.h || this.g) {
                if (z && this.i) {
                    c(i + ((int) (j - this.b)));
                }
                this.k = this.b;
                this.l = this.e;
                this.m = this.c;
                this.i = true;
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void c(int i) {
            long j = this.l;
            if (j == -9223372036854775807L) {
                return;
            }
            boolean z = this.m;
            this.a.a(j, z ? 1 : 0, (int) (this.b - this.k), i, null);
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f) {
                int i3 = this.d;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    this.g = (bArr[i4] & 128) != 0;
                    this.f = false;
                } else {
                    this.d = i3 + (i2 - i);
                }
            }
        }

        public void a() {
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
        }

        public void a(long j, int i, int i2, long j2, boolean z) {
            this.g = false;
            this.h = false;
            this.e = j2;
            this.d = 0;
            this.b = j;
            if (!b(i2)) {
                if (this.i && !this.j) {
                    if (z) {
                        c(i);
                    }
                    this.i = false;
                }
                if (a(i2)) {
                    this.h = !this.j;
                    this.j = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.c = z2;
            this.f = z2 || i2 <= 9;
        }
    }

    private void a(long j, int i, int i2, long j2) {
        this.d.a(j, i, this.e);
        if (!this.e) {
            this.g.a(i2);
            this.h.a(i2);
            this.i.a(i2);
            if (this.g.a() && this.h.a() && this.i.a()) {
                this.c.a(a(this.b, this.g, this.h, this.i));
                this.e = true;
            }
        }
        if (this.j.a(i2)) {
            xf xfVar = this.j;
            this.n.a(this.j.d, yf.c(xfVar.d, xfVar.e));
            this.n.g(5);
            this.a.a(j2, this.n);
        }
        if (this.k.a(i2)) {
            xf xfVar2 = this.k;
            this.n.a(this.k.d, yf.c(xfVar2.d, xfVar2.e));
            this.n.g(5);
            this.a.a(j2, this.n);
        }
    }

    private void b(long j, int i, int i2, long j2) {
        this.d.a(j, i, i2, j2, this.e);
        if (!this.e) {
            this.g.b(i2);
            this.h.b(i2);
            this.i.b(i2);
        }
        this.j.b(i2);
        this.k.b(i2);
    }

    private void a(byte[] bArr, int i, int i2) {
        this.d.a(bArr, i, i2);
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.m = j;
        }
    }

    private static e9 a(String str, xf xfVar, xf xfVar2, xf xfVar3) {
        int i = xfVar.e;
        byte[] bArr = new byte[xfVar2.e + i + xfVar3.e];
        System.arraycopy(xfVar.d, 0, bArr, 0, i);
        System.arraycopy(xfVar2.d, 0, bArr, xfVar.e, xfVar2.e);
        System.arraycopy(xfVar3.d, 0, bArr, xfVar.e + xfVar2.e, xfVar3.e);
        bh bhVar = new bh(xfVar2.d, 0, xfVar2.e);
        bhVar.d(44);
        int iB = bhVar.b(3);
        bhVar.g();
        bhVar.d(88);
        bhVar.d(8);
        int i2 = 0;
        for (int i3 = 0; i3 < iB; i3++) {
            if (bhVar.c()) {
                i2 += 89;
            }
            if (bhVar.c()) {
                i2 += 8;
            }
        }
        bhVar.d(i2);
        if (iB > 0) {
            bhVar.d((8 - iB) * 2);
        }
        bhVar.f();
        int iF = bhVar.f();
        if (iF == 3) {
            bhVar.g();
        }
        int iF2 = bhVar.f();
        int iF3 = bhVar.f();
        if (bhVar.c()) {
            int iF4 = bhVar.f();
            int iF5 = bhVar.f();
            int iF6 = bhVar.f();
            int iF7 = bhVar.f();
            iF2 -= ((iF == 1 || iF == 2) ? 2 : 1) * (iF4 + iF5);
            iF3 -= (iF == 1 ? 2 : 1) * (iF6 + iF7);
        }
        bhVar.f();
        bhVar.f();
        int iF8 = bhVar.f();
        for (int i4 = bhVar.c() ? 0 : iB; i4 <= iB; i4++) {
            bhVar.f();
            bhVar.f();
            bhVar.f();
        }
        bhVar.f();
        bhVar.f();
        bhVar.f();
        bhVar.f();
        bhVar.f();
        bhVar.f();
        if (bhVar.c() && bhVar.c()) {
            a(bhVar);
        }
        bhVar.d(2);
        if (bhVar.c()) {
            bhVar.d(8);
            bhVar.f();
            bhVar.f();
            bhVar.g();
        }
        b(bhVar);
        if (bhVar.c()) {
            for (int i5 = 0; i5 < bhVar.f(); i5++) {
                bhVar.d(iF8 + 5);
            }
        }
        bhVar.d(2);
        float f = 1.0f;
        if (bhVar.c()) {
            if (bhVar.c()) {
                int iB2 = bhVar.b(8);
                if (iB2 == 255) {
                    int iB3 = bhVar.b(16);
                    int iB4 = bhVar.b(16);
                    if (iB3 != 0 && iB4 != 0) {
                        f = iB3 / iB4;
                    }
                } else {
                    float[] fArr = yf.b;
                    if (iB2 < fArr.length) {
                        f = fArr[iB2];
                    } else {
                        oc.d("H265Reader", "Unexpected aspect_ratio_idc value: " + iB2);
                    }
                }
            }
            if (bhVar.c()) {
                bhVar.g();
            }
            if (bhVar.c()) {
                bhVar.d(4);
                if (bhVar.c()) {
                    bhVar.d(24);
                }
            }
            if (bhVar.c()) {
                bhVar.f();
                bhVar.f();
            }
            bhVar.g();
            if (bhVar.c()) {
                iF3 *= 2;
            }
        }
        bhVar.a(xfVar2.d, 0, xfVar2.e);
        bhVar.d(24);
        return new e9.b().c(str).f(MimeTypes.VIDEO_H265).a(o3.a(bhVar)).q(iF2).g(iF3).b(f).a(Collections.singletonList(bArr)).a();
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.l = 0L;
        this.m = -9223372036854775807L;
        yf.a(this.f);
        this.g.b();
        this.h.b();
        this.i.b();
        this.j.b();
        this.k.b();
        a aVar = this.d;
        if (aVar != null) {
            aVar.a();
        }
    }

    private static void a(bh bhVar) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (!bhVar.c()) {
                    bhVar.f();
                } else {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        bhVar.e();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        bhVar.e();
                    }
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }
}

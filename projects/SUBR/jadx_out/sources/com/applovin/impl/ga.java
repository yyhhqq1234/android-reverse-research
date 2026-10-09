package com.applovin.impl;

import android.util.SparseArray;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ga implements p7 {
    private final nj a;
    private final boolean b;
    private final boolean c;
    private long g;
    private String i;
    private qo j;
    private b k;
    private boolean l;
    private boolean n;
    private final boolean[] h = new boolean[3];
    private final xf d = new xf(7, 128);
    private final xf e = new xf(8, 128);
    private final xf f = new xf(6, 128);
    private long m = -9223372036854775807L;
    private final ah o = new ah();

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public ga(nj njVar, boolean z, boolean z2) {
        this.a = njVar;
        this.b = z;
        this.c = z2;
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        c();
        int iD = ahVar.d();
        int iE = ahVar.e();
        byte[] bArrC = ahVar.c();
        this.g += (long) ahVar.a();
        this.j.a(ahVar, ahVar.a());
        while (true) {
            int iA = yf.a(bArrC, iD, iE, this.h);
            if (iA == iE) {
                a(bArrC, iD, iE);
                return;
            }
            int iB = yf.b(bArrC, iA);
            int i = iA - iD;
            if (i > 0) {
                a(bArrC, iD, iA);
            }
            int i2 = iE - iA;
            long j = this.g - ((long) i2);
            a(j, i2, i < 0 ? -i : 0, this.m);
            a(j, iB, this.m);
            iD = iA + 3;
        }
    }

    private void c() {
        b1.b(this.j);
        xp.a(this.k);
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.i = dVar.b();
        qo qoVarA = l8Var.a(dVar.c(), 2);
        this.j = qoVarA;
        this.k = new b(qoVarA, this.b, this.c);
        this.a.a(l8Var, dVar);
    }

    private static final class b {
        private final qo a;
        private final boolean b;
        private final boolean c;
        private final SparseArray d = new SparseArray();
        private final SparseArray e = new SparseArray();
        private final bh f;
        private byte[] g;
        private int h;
        private int i;
        private long j;
        private boolean k;
        private long l;
        private a m;
        private a n;
        private boolean o;
        private long p;
        private long q;
        private boolean r;

        public b(qo qoVar, boolean z, boolean z2) {
            this.a = qoVar;
            this.b = z;
            this.c = z2;
            this.m = new a();
            this.n = new a();
            byte[] bArr = new byte[128];
            this.g = bArr;
            this.f = new bh(bArr, 0, 0);
            b();
        }

        public void b() {
            this.k = false;
            this.o = false;
            this.n.a();
        }

        /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:54:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:56:0x0102  */
        /* JADX WARN: Code duplicated, block: B:58:0x010a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x010b  */
        /* JADX WARN: Code duplicated, block: B:60:0x0114  */
        /* JADX WARN: Code duplicated, block: B:63:0x011a  */
        /* JADX WARN: Code duplicated, block: B:65:0x0124 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x0125  */
        /* JADX WARN: Code duplicated, block: B:74:0x014a  */
        public void a(byte[] bArr, int i, int i2) {
            boolean z;
            boolean z2;
            boolean zC;
            boolean z3;
            int iF;
            int i3;
            int i4;
            int i5;
            int iE;
            int iE2;
            int iB;
            if (this.k) {
                int i6 = i2 - i;
                byte[] bArr2 = this.g;
                int length = bArr2.length;
                int i7 = this.h + i6;
                if (length < i7) {
                    this.g = Arrays.copyOf(bArr2, i7 * 2);
                }
                System.arraycopy(bArr, i, this.g, this.h, i6);
                int i8 = this.h + i6;
                this.h = i8;
                this.f.a(this.g, 0, i8);
                if (this.f.a(8)) {
                    this.f.g();
                    int iB2 = this.f.b(2);
                    this.f.d(5);
                    if (this.f.b()) {
                        this.f.f();
                        if (this.f.b()) {
                            int iF2 = this.f.f();
                            if (!this.c) {
                                this.k = false;
                                this.n.a(iF2);
                                return;
                            }
                            if (this.f.b()) {
                                int iF3 = this.f.f();
                                if (this.e.indexOfKey(iF3) < 0) {
                                    this.k = false;
                                    return;
                                }
                                yf.a aVar = (yf.a) this.e.get(iF3);
                                yf.b bVar = (yf.b) this.d.get(aVar.b);
                                if (bVar.h) {
                                    if (!this.f.a(2)) {
                                        return;
                                    } else {
                                        this.f.d(2);
                                    }
                                }
                                if (this.f.a(bVar.j)) {
                                    int iB3 = this.f.b(bVar.j);
                                    if (!bVar.i) {
                                        if (this.f.a(1)) {
                                            boolean zC2 = this.f.c();
                                            if (!zC2) {
                                                z = zC2;
                                            } else {
                                                if (!this.f.a(1)) {
                                                    return;
                                                }
                                                z = zC2;
                                                zC = this.f.c();
                                                z2 = true;
                                            }
                                            if (this.i == 5) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (z3) {
                                                iF = 0;
                                            } else if (!this.f.b()) {
                                                return;
                                            } else {
                                                iF = this.f.f();
                                            }
                                            i3 = bVar.k;
                                            if (i3 != 0) {
                                                if (this.f.a(bVar.l)) {
                                                    iB = this.f.b(bVar.l);
                                                    if (aVar.c || z) {
                                                        i4 = iB;
                                                    } else {
                                                        if (!this.f.b()) {
                                                            return;
                                                        }
                                                        iE = this.f.e();
                                                        i4 = iB;
                                                    }
                                                    i5 = 0;
                                                    iE2 = 0;
                                                    this.n.a(bVar, iB2, iF2, iB3, iF3, z, z2, zC, z3, iF, i4, iE, i5, iE2);
                                                    this.k = false;
                                                }
                                                return;
                                            }
                                            if (i3 == 1 || bVar.m) {
                                                i4 = 0;
                                            } else {
                                                if (!this.f.b()) {
                                                    return;
                                                }
                                                int iE3 = this.f.e();
                                                if (!aVar.c || z) {
                                                    i5 = iE3;
                                                    i4 = 0;
                                                    iE = 0;
                                                    iE2 = 0;
                                                } else {
                                                    if (!this.f.b()) {
                                                        return;
                                                    }
                                                    iE2 = this.f.e();
                                                    i5 = iE3;
                                                    i4 = 0;
                                                    iE = 0;
                                                }
                                            }
                                            this.n.a(bVar, iB2, iF2, iB3, iF3, z, z2, zC, z3, iF, i4, iE, i5, iE2);
                                            this.k = false;
                                            iE = 0;
                                            i5 = 0;
                                            iE2 = 0;
                                            this.n.a(bVar, iB2, iF2, iB3, iF3, z, z2, zC, z3, iF, i4, iE, i5, iE2);
                                            this.k = false;
                                        }
                                        return;
                                    }
                                    z = false;
                                    z2 = false;
                                    zC = false;
                                    if (this.i == 5) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (z3) {
                                        iF = 0;
                                    } else if (!this.f.b()) {
                                        return;
                                    } else {
                                        iF = this.f.f();
                                    }
                                    i3 = bVar.k;
                                    if (i3 != 0) {
                                        if (i3 == 1) {
                                        }
                                        i4 = 0;
                                    } else {
                                        if (this.f.a(bVar.l)) {
                                            return;
                                        }
                                        iB = this.f.b(bVar.l);
                                        if (aVar.c) {
                                        }
                                        i4 = iB;
                                    }
                                    iE = 0;
                                    i5 = 0;
                                    iE2 = 0;
                                    this.n.a(bVar, iB2, iF2, iB3, iF3, z, z2, zC, z3, iF, i4, iE, i5, iE2);
                                    this.k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        private static final class a {
            private boolean a;
            private boolean b;
            private yf.b c;
            private int d;
            private int e;
            private int f;
            private int g;
            private boolean h;
            private boolean i;
            private boolean j;
            private boolean k;
            private int l;
            private int m;
            private int n;
            private int o;
            private int p;

            private a() {
            }

            public boolean b() {
                int i;
                return this.b && ((i = this.e) == 7 || i == 2);
            }

            public void a() {
                this.b = false;
                this.a = false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean a(a aVar) {
                int i;
                int i2;
                int i3;
                boolean z;
                if (!this.a) {
                    return false;
                }
                if (!aVar.a) {
                    return true;
                }
                yf.b bVar = (yf.b) b1.b(this.c);
                yf.b bVar2 = (yf.b) b1.b(aVar.c);
                return (this.f == aVar.f && this.g == aVar.g && this.h == aVar.h && (!this.i || !aVar.i || this.j == aVar.j) && (((i = this.d) == (i2 = aVar.d) || (i != 0 && i2 != 0)) && (((i3 = bVar.k) != 0 || bVar2.k != 0 || (this.m == aVar.m && this.n == aVar.n)) && ((i3 != 1 || bVar2.k != 1 || (this.o == aVar.o && this.p == aVar.p)) && (z = this.k) == aVar.k && (!z || this.l == aVar.l))))) ? false : true;
            }

            public void a(yf.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.c = bVar;
                this.d = i;
                this.e = i2;
                this.f = i3;
                this.g = i4;
                this.h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.a = true;
                this.b = true;
            }

            public void a(int i) {
                this.e = i;
                this.b = true;
            }
        }

        public boolean a(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.i == 9 || (this.c && this.n.a(this.m))) {
                if (z && this.o) {
                    a(i + ((int) (j - this.j)));
                }
                this.p = this.j;
                this.q = this.l;
                this.r = false;
                this.o = true;
            }
            if (this.b) {
                z2 = this.n.b();
            }
            boolean z4 = this.r;
            int i2 = this.i;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.r = z5;
            return z5;
        }

        public boolean a() {
            return this.c;
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
        private void a(int i) {
            long j = this.q;
            if (j == -9223372036854775807L) {
                return;
            }
            boolean z = this.r;
            this.a.a(j, z ? 1 : 0, (int) (this.j - this.p), i, null);
        }

        public void a(yf.a aVar) {
            this.e.append(aVar.a, aVar);
        }

        public void a(yf.b bVar) {
            this.d.append(bVar.d, bVar);
        }

        public void a(long j, int i, long j2) {
            this.i = i;
            this.l = j2;
            this.j = j;
            if (!this.b || i != 1) {
                if (!this.c) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            a aVar = this.m;
            this.m = this.n;
            this.n = aVar;
            aVar.a();
            this.h = 0;
            this.k = true;
        }
    }

    private void a(long j, int i, int i2, long j2) {
        if (!this.l || this.k.a()) {
            this.d.a(i2);
            this.e.a(i2);
            if (!this.l) {
                if (this.d.a() && this.e.a()) {
                    ArrayList arrayList = new ArrayList();
                    xf xfVar = this.d;
                    arrayList.add(Arrays.copyOf(xfVar.d, xfVar.e));
                    xf xfVar2 = this.e;
                    arrayList.add(Arrays.copyOf(xfVar2.d, xfVar2.e));
                    xf xfVar3 = this.d;
                    yf.b bVarC = yf.c(xfVar3.d, 3, xfVar3.e);
                    xf xfVar4 = this.e;
                    yf.a aVarB = yf.b(xfVar4.d, 3, xfVar4.e);
                    this.j.a(new e9.b().c(this.i).f(MimeTypes.VIDEO_H264).a(o3.a(bVarC.a, bVarC.b, bVarC.c)).q(bVarC.e).g(bVarC.f).b(bVarC.g).a(arrayList).a());
                    this.l = true;
                    this.k.a(bVarC);
                    this.k.a(aVarB);
                    this.d.b();
                    this.e.b();
                }
            } else if (this.d.a()) {
                xf xfVar5 = this.d;
                this.k.a(yf.c(xfVar5.d, 3, xfVar5.e));
                this.d.b();
            } else if (this.e.a()) {
                xf xfVar6 = this.e;
                this.k.a(yf.b(xfVar6.d, 3, xfVar6.e));
                this.e.b();
            }
        }
        if (this.f.a(i2)) {
            xf xfVar7 = this.f;
            this.o.a(this.f.d, yf.c(xfVar7.d, xfVar7.e));
            this.o.f(4);
            this.a.a(j2, this.o);
        }
        if (this.k.a(j, i, this.l, this.n)) {
            this.n = false;
        }
    }

    private void a(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.a()) {
            this.d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.m = j;
        }
        this.n |= (i & 2) != 0;
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.g = 0L;
        this.n = false;
        this.m = -9223372036854775807L;
        yf.a(this.h);
        this.d.b();
        this.e.b();
        this.f.b();
        b bVar = this.k;
        if (bVar != null) {
            bVar.b();
        }
    }

    private void a(long j, int i, long j2) {
        if (!this.l || this.k.a()) {
            this.d.b(i);
            this.e.b(i);
        }
        this.f.b(i);
        this.k.a(j, i, j2);
    }
}

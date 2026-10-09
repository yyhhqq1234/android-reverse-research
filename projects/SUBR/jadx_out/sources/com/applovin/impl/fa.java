package com.applovin.impl;

import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class fa implements p7 {
    private static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final vp a;
    private final ah b;
    private final xf e;
    private b f;
    private long g;
    private String h;
    private qo i;
    private boolean j;
    private final boolean[] c = new boolean[4];
    private final a d = new a(128);
    private long k = -9223372036854775807L;

    @Override // com.applovin.impl.p7
    public void b() {
    }

    fa(vp vpVar) {
        this.a = vpVar;
        if (vpVar != null) {
            this.e = new xf(178, 128);
            this.b = new ah();
        } else {
            this.e = null;
            this.b = null;
        }
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        b1.b(this.f);
        b1.b(this.i);
        int iD = ahVar.d();
        int iE = ahVar.e();
        byte[] bArrC = ahVar.c();
        this.g += (long) ahVar.a();
        this.i.a(ahVar, ahVar.a());
        while (true) {
            int iA = yf.a(bArrC, iD, iE, this.c);
            if (iA == iE) {
                break;
            }
            int i = iA + 3;
            int i2 = ahVar.c()[i] & 255;
            int i3 = iA - iD;
            int i4 = 0;
            if (!this.j) {
                if (i3 > 0) {
                    this.d.a(bArrC, iD, iA);
                }
                if (this.d.a(i2, i3 < 0 ? -i3 : 0)) {
                    qo qoVar = this.i;
                    a aVar = this.d;
                    qoVar.a(a(aVar, aVar.d, (String) b1.a((Object) this.h)));
                    this.j = true;
                }
            }
            this.f.a(bArrC, iD, iA);
            xf xfVar = this.e;
            if (xfVar != null) {
                if (i3 > 0) {
                    xfVar.a(bArrC, iD, iA);
                } else {
                    i4 = -i3;
                }
                if (this.e.a(i4)) {
                    xf xfVar2 = this.e;
                    ((ah) xp.a(this.b)).a(this.e.d, yf.c(xfVar2.d, xfVar2.e));
                    ((vp) xp.a(this.a)).a(this.k, this.b);
                }
                if (i2 == 178 && ahVar.c()[iA + 2] == 1) {
                    this.e.b(i2);
                }
            }
            int i5 = iE - iA;
            this.f.a(this.g - ((long) i5), i5, this.j);
            this.f.a(i2, this.k);
            iD = i;
        }
        if (!this.j) {
            this.d.a(bArrC, iD, iE);
        }
        this.f.a(bArrC, iD, iE);
        xf xfVar3 = this.e;
        if (xfVar3 != null) {
            xfVar3.a(bArrC, iD, iE);
        }
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.h = dVar.b();
        qo qoVarA = l8Var.a(dVar.c(), 2);
        this.i = qoVarA;
        this.f = new b(qoVarA);
        vp vpVar = this.a;
        if (vpVar != null) {
            vpVar.a(l8Var, dVar);
        }
    }

    private static final class a {
        private static final byte[] f = {0, 0, 1};
        private boolean a;
        private int b;
        public int c;
        public int d;
        public byte[] e;

        public a(int i) {
            this.e = new byte[i];
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i4 = this.c + i3;
                if (length < i4) {
                    this.e = Arrays.copyOf(bArr2, i4 * 2);
                }
                System.arraycopy(bArr, i, this.e, this.c, i3);
                this.c += i3;
            }
        }

        public boolean a(int i, int i2) {
            int i3 = this.b;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i == 179 || i == 181) {
                                this.c -= i2;
                                this.a = false;
                                return true;
                            }
                        } else if ((i & 240) != 32) {
                            oc.d("H263Reader", "Unexpected start code value");
                            a();
                        } else {
                            this.d = this.c;
                            this.b = 4;
                        }
                    } else if (i > 31) {
                        oc.d("H263Reader", "Unexpected start code value");
                        a();
                    } else {
                        this.b = 3;
                    }
                } else if (i != 181) {
                    oc.d("H263Reader", "Unexpected start code value");
                    a();
                } else {
                    this.b = 2;
                }
            } else if (i == 176) {
                this.b = 1;
                this.a = true;
            }
            byte[] bArr = f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void a() {
            this.a = false;
            this.c = 0;
            this.b = 0;
        }
    }

    private static final class b {
        private final qo a;
        private boolean b;
        private boolean c;
        private boolean d;
        private int e;
        private int f;
        private long g;
        private long h;

        public b(qo qoVar) {
            this.a = qoVar;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.c) {
                int i3 = this.f;
                int i4 = (i + 1) - i3;
                if (i4 < i2) {
                    this.d = ((bArr[i4] & 192) >> 6) == 0;
                    this.c = false;
                } else {
                    this.f = i3 + (i2 - i);
                }
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
        public void a(long j, int i, boolean z) {
            if (this.e == 182 && z && this.b) {
                long j2 = this.h;
                if (j2 != -9223372036854775807L) {
                    this.a.a(j2, this.d ? 1 : 0, (int) (j - this.g), i, null);
                }
            }
            if (this.e != 179) {
                this.g = j;
            }
        }

        public void a(int i, long j) {
            this.e = i;
            this.d = false;
            this.b = i == 182 || i == 179;
            this.c = i == 182;
            this.f = 0;
            this.h = j;
        }

        public void a() {
            this.b = false;
            this.c = false;
            this.d = false;
            this.e = -1;
        }
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.k = j;
        }
    }

    private static e9 a(a aVar, int i, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.e, aVar.c);
        zg zgVar = new zg(bArrCopyOf);
        zgVar.e(i);
        zgVar.e(4);
        zgVar.g();
        zgVar.d(8);
        if (zgVar.f()) {
            zgVar.d(4);
            zgVar.d(3);
        }
        int iA = zgVar.a(4);
        float f = 1.0f;
        if (iA == 15) {
            int iA2 = zgVar.a(8);
            int iA3 = zgVar.a(8);
            if (iA3 == 0) {
                oc.d("H263Reader", "Invalid aspect ratio");
            } else {
                f = iA2 / iA3;
            }
        } else {
            float[] fArr = l;
            if (iA < fArr.length) {
                f = fArr[iA];
            } else {
                oc.d("H263Reader", "Invalid aspect ratio");
            }
        }
        if (zgVar.f()) {
            zgVar.d(2);
            zgVar.d(1);
            if (zgVar.f()) {
                zgVar.d(15);
                zgVar.g();
                zgVar.d(15);
                zgVar.g();
                zgVar.d(15);
                zgVar.g();
                zgVar.d(3);
                zgVar.d(11);
                zgVar.g();
                zgVar.d(15);
                zgVar.g();
            }
        }
        if (zgVar.a(2) != 0) {
            oc.d("H263Reader", "Unhandled video object layer shape");
        }
        zgVar.g();
        int iA4 = zgVar.a(16);
        zgVar.g();
        if (zgVar.f()) {
            if (iA4 == 0) {
                oc.d("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = iA4 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                zgVar.d(i2);
            }
        }
        zgVar.g();
        int iA5 = zgVar.a(13);
        zgVar.g();
        int iA6 = zgVar.a(13);
        zgVar.g();
        zgVar.g();
        return new e9.b().c(str).f("video/mp4v-es").q(iA5).g(iA6).b(f).a(Collections.singletonList(bArrCopyOf)).a();
    }

    @Override // com.applovin.impl.p7
    public void a() {
        yf.a(this.c);
        this.d.a();
        b bVar = this.f;
        if (bVar != null) {
            bVar.a();
        }
        xf xfVar = this.e;
        if (xfVar != null) {
            xfVar.b();
        }
        this.g = 0L;
        this.k = -9223372036854775807L;
    }
}

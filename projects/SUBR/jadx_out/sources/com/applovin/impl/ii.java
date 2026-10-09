package com.applovin.impl;

import android.net.Uri;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ii implements j8 {
    public static final n8 l = new n8() { // from class: com.applovin.impl.ii$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return ii.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private final ho a;
    private final SparseArray b;
    private final ah c;
    private final hi d;
    private boolean e;
    private boolean f;
    private boolean g;
    private long h;
    private gi i;
    private l8 j;
    private boolean k;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] b() {
        return new j8[]{new ii()};
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public ii() {
        this(new ho(0L));
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.j = l8Var;
    }

    public ii(ho hoVar) {
        this.a = hoVar;
        this.c = new ah(4096);
        this.b = new SparseArray();
        this.d = new hi();
    }

    private static final class a {
        private final p7 a;
        private final ho b;
        private final zg c = new zg(new byte[64]);
        private boolean d;
        private boolean e;
        private boolean f;
        private int g;
        private long h;

        public a(p7 p7Var, ho hoVar) {
            this.a = p7Var;
            this.b = hoVar;
        }

        public void c() {
            this.f = false;
            this.a.a();
        }

        public void a(ah ahVar) {
            ahVar.a(this.c.a, 0, 3);
            this.c.c(0);
            a();
            ahVar.a(this.c.a, 0, this.g);
            this.c.c(0);
            b();
            this.a.a(this.h, 4);
            this.a.a(ahVar);
            this.a.b();
        }

        private void b() {
            this.h = 0L;
            if (this.d) {
                this.c.d(4);
                long jA = ((long) this.c.a(3)) << 30;
                this.c.d(1);
                long jA2 = jA | ((long) (this.c.a(15) << 15));
                this.c.d(1);
                long jA3 = jA2 | ((long) this.c.a(15));
                this.c.d(1);
                if (!this.f && this.e) {
                    this.c.d(4);
                    long jA4 = ((long) this.c.a(3)) << 30;
                    this.c.d(1);
                    long jA5 = jA4 | ((long) (this.c.a(15) << 15));
                    this.c.d(1);
                    long jA6 = jA5 | ((long) this.c.a(15));
                    this.c.d(1);
                    this.b.b(jA6);
                    this.f = true;
                }
                this.h = this.b.b(jA3);
            }
        }

        private void a() {
            this.c.d(8);
            this.d = this.c.f();
            this.e = this.c.f();
            this.c.d(6);
            this.g = this.c.a(8);
        }
    }

    private void a(long j) {
        if (this.k) {
            return;
        }
        this.k = true;
        if (this.d.a() != -9223372036854775807L) {
            gi giVar = new gi(this.d.b(), this.d.a(), j);
            this.i = giVar;
            this.j.a(giVar.a());
            return;
        }
        this.j.a(new ij.b(this.d.a()));
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) {
        p7 eaVar;
        b1.b(this.j);
        long jA = k8Var.a();
        if (jA != -1 && !this.d.c()) {
            return this.d.a(k8Var, thVar);
        }
        a(jA);
        gi giVar = this.i;
        if (giVar != null && giVar.b()) {
            return this.i.a(k8Var, thVar);
        }
        k8Var.b();
        long jD = jA != -1 ? jA - k8Var.d() : -1L;
        if ((jD != -1 && jD < 4) || !k8Var.b(this.c.c(), 0, 4, true)) {
            return -1;
        }
        this.c.f(0);
        int iJ = this.c.j();
        if (iJ == 441) {
            return -1;
        }
        if (iJ == 442) {
            k8Var.c(this.c.c(), 0, 10);
            this.c.f(9);
            k8Var.a((this.c.w() & 7) + 14);
            return 0;
        }
        if (iJ == 443) {
            k8Var.c(this.c.c(), 0, 2);
            this.c.f(0);
            k8Var.a(this.c.C() + 6);
            return 0;
        }
        if (((iJ & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            k8Var.a(1);
            return 0;
        }
        int i = iJ & 255;
        a aVar = (a) this.b.get(i);
        if (!this.e) {
            if (aVar == null) {
                if (i == 189) {
                    eaVar = new j();
                    this.f = true;
                    this.h = k8Var.f();
                } else if ((iJ & 224) == 192) {
                    eaVar = new rf();
                    this.f = true;
                    this.h = k8Var.f();
                } else if ((iJ & 240) == 224) {
                    eaVar = new ea();
                    this.g = true;
                    this.h = k8Var.f();
                } else {
                    eaVar = null;
                }
                if (eaVar != null) {
                    eaVar.a(this.j, new dp.d(i, 256));
                    aVar = new a(eaVar, this.a);
                    this.b.put(i, aVar);
                }
            }
            if (k8Var.f() > ((this.f && this.g) ? this.h + 8192 : 1048576L)) {
                this.e = true;
                this.j.c();
            }
        }
        k8Var.c(this.c.c(), 0, 2);
        this.c.f(0);
        int iC = this.c.C() + 6;
        if (aVar == null) {
            k8Var.a(iC);
        } else {
            this.c.d(iC);
            k8Var.d(this.c.c(), 0, iC);
            this.c.f(6);
            aVar.a(this.c);
            ah ahVar = this.c;
            ahVar.e(ahVar.b());
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        boolean z = this.a.c() == -9223372036854775807L;
        if (!z) {
            long jA = this.a.a();
            if (jA != -9223372036854775807L && jA != 0 && jA != j2) {
                this.a.d(j2);
            }
        } else if (z) {
            this.a.d(j2);
        }
        gi giVar = this.i;
        if (giVar != null) {
            giVar.b(j2);
        }
        for (int i = 0; i < this.b.size(); i++) {
            ((a) this.b.valueAt(i)).c();
        }
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        byte[] bArr = new byte[14];
        k8Var.c(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        k8Var.c(bArr[13] & 7);
        k8Var.c(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }
}

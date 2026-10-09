package com.applovin.impl;

import android.net.Uri;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.io.EOFException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class q0 implements j8 {
    private static final int[] r;
    private static final int u;
    private final byte[] a;
    private final int b;
    private boolean c;
    private long d;
    private int e;
    private int f;
    private boolean g;
    private long h;
    private int i;
    private int j;
    private long k;
    private l8 l;
    private qo m;
    private ij n;
    private boolean o;
    public static final n8 p = new n8() { // from class: com.applovin.impl.q0$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return q0.c();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private static final int[] q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] s = xp.c("#!AMR\n");
    private static final byte[] t = xp.c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        r = iArr;
        u = iArr[8];
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public q0() {
        this(0);
    }

    public q0(int i) {
        this.b = (i & 2) != 0 ? i | 1 : i;
        this.a = new byte[1];
        this.i = -1;
    }

    private boolean c(int i) {
        return i >= 0 && i <= 15 && (d(i) || b(i));
    }

    private boolean d(int i) {
        return this.c && (i < 10 || i > 13);
    }

    private void b() {
        b1.b(this.m);
        xp.a(this.l);
    }

    private static int a(int i, long j) {
        return (int) ((((long) (i * 8)) * 1000000) / j);
    }

    private boolean c(k8 k8Var) {
        byte[] bArr = s;
        if (a(k8Var, bArr)) {
            this.c = false;
            k8Var.a(bArr.length);
            return true;
        }
        byte[] bArr2 = t;
        if (!a(k8Var, bArr2)) {
            return false;
        }
        this.c = true;
        k8Var.a(bArr2.length);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] c() {
        return new j8[]{new q0()};
    }

    private void d() {
        if (this.o) {
            return;
        }
        this.o = true;
        boolean z = this.c;
        this.m.a(new e9.b().f(z ? "audio/amr-wb" : "audio/3gpp").i(u).c(1).n(z ? 16000 : ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED).a());
    }

    private boolean b(int i) {
        return !this.c && (i < 12 || i > 14);
    }

    private ij a(long j, boolean z) {
        return new o4(j, this.h, a(this.i, 20000L), this.i, z);
    }

    private int d(k8 k8Var) throws ch {
        if (this.f == 0) {
            try {
                int iB = b(k8Var);
                this.e = iB;
                this.f = iB;
                if (this.i == -1) {
                    this.h = k8Var.f();
                    this.i = this.e;
                }
                if (this.i == this.e) {
                    this.j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iA = this.m.a((f5) k8Var, this.f, true);
        if (iA == -1) {
            return -1;
        }
        int i = this.f - iA;
        this.f = i;
        if (i > 0) {
            return 0;
        }
        this.m.a(this.k + this.d, 1, this.e, 0, null);
        this.d += 20000;
        return 0;
    }

    private int b(k8 k8Var) throws ch {
        k8Var.b();
        k8Var.c(this.a, 0, 1);
        byte b = this.a[0];
        if ((b & 131) <= 0) {
            return a((b >> 3) & 15);
        }
        throw ch.a("Invalid padding bits for frame header " + ((int) b), null);
    }

    private int a(int i) throws ch {
        if (c(i)) {
            return this.c ? r[i] : q[i];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.c ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw ch.a(sb.toString(), null);
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.l = l8Var;
        this.m = l8Var.a(0, 1);
        l8Var.c();
    }

    private void a(long j, int i) {
        int i2;
        if (this.g) {
            return;
        }
        int i3 = this.b;
        if ((i3 & 1) != 0 && j != -1 && ((i2 = this.i) == -1 || i2 == this.e)) {
            if (this.j >= 20 || i == -1) {
                ij ijVarA = a(j, (i3 & 2) != 0);
                this.n = ijVarA;
                this.l.a(ijVarA);
                this.g = true;
                return;
            }
            return;
        }
        ij.b bVar = new ij.b(-9223372036854775807L);
        this.n = bVar;
        this.l.a(bVar);
        this.g = true;
    }

    private static boolean a(k8 k8Var, byte[] bArr) {
        k8Var.b();
        byte[] bArr2 = new byte[bArr.length];
        k8Var.c(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        b();
        if (k8Var.f() == 0 && !c(k8Var)) {
            throw ch.a("Could not find AMR header.", null);
        }
        d();
        int iD = d(k8Var);
        a(k8Var.a(), iD);
        return iD;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        this.d = 0L;
        this.e = 0;
        this.f = 0;
        if (j != 0) {
            ij ijVar = this.n;
            if (ijVar instanceof o4) {
                this.k = ((o4) ijVar).d(j);
                return;
            }
        }
        this.k = 0L;
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        return c(k8Var);
    }
}

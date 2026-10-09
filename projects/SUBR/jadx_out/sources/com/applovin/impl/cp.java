package com.applovin.impl;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class cp implements j8 {
    public static final n8 t = new n8() { // from class: com.applovin.impl.cp$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return cp.c();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private final int a;
    private final int b;
    private final List c;
    private final ah d;
    private final SparseIntArray e;
    private final dp.c f;
    private final SparseArray g;
    private final SparseBooleanArray h;
    private final SparseBooleanArray i;
    private final bp j;
    private ap k;
    private l8 l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private dp q;
    private int r;
    private int s;

    @Override // com.applovin.impl.j8
    public void a() {
    }

    static /* synthetic */ int d(cp cpVar) {
        int i = cpVar.m;
        cpVar.m = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] c() {
        return new j8[]{new cp()};
    }

    public cp() {
        this(0);
    }

    public cp(int i) {
        this(1, i, 112800);
    }

    public cp(int i, int i2, int i3) {
        this(i, new ho(0L), new m6(i2), i3);
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.l = l8Var;
    }

    private class a implements gj {
        private final zg a = new zg(new byte[4]);

        @Override // com.applovin.impl.gj
        public void a(ho hoVar, l8 l8Var, dp.d dVar) {
        }

        public a() {
        }

        @Override // com.applovin.impl.gj
        public void a(ah ahVar) {
            if (ahVar.w() == 0 && (ahVar.w() & 128) != 0) {
                ahVar.g(6);
                int iA = ahVar.a() / 4;
                for (int i = 0; i < iA; i++) {
                    ahVar.a(this.a, 4);
                    int iA2 = this.a.a(16);
                    this.a.d(3);
                    if (iA2 == 0) {
                        this.a.d(13);
                    } else {
                        int iA3 = this.a.a(13);
                        if (cp.this.g.get(iA3) == null) {
                            cp.this.g.put(iA3, new hj(cp.this.new b(iA3)));
                            cp.d(cp.this);
                        }
                    }
                }
                if (cp.this.a != 2) {
                    cp.this.g.remove(0);
                }
            }
        }
    }

    private boolean b(k8 k8Var) {
        byte[] bArrC = this.d.c();
        if (9400 - this.d.d() < 188) {
            int iA = this.d.a();
            if (iA > 0) {
                System.arraycopy(bArrC, this.d.d(), bArrC, 0, iA);
            }
            this.d.a(bArrC, iA);
        }
        while (this.d.a() < 188) {
            int iE = this.d.e();
            int iA2 = k8Var.a(bArrC, iE, 9400 - iE);
            if (iA2 == -1) {
                return false;
            }
            this.d.e(iE + iA2);
        }
        return true;
    }

    private void d() {
        this.h.clear();
        this.g.clear();
        SparseArray sparseArrayA = this.f.a();
        int size = sparseArrayA.size();
        for (int i = 0; i < size; i++) {
            this.g.put(sparseArrayA.keyAt(i), (dp) sparseArrayA.valueAt(i));
        }
        this.g.put(0, new hj(new a()));
        this.q = null;
    }

    private class b implements gj {
        private final zg a = new zg(new byte[5]);
        private final SparseArray b = new SparseArray();
        private final SparseIntArray c = new SparseIntArray();
        private final int d;

        @Override // com.applovin.impl.gj
        public void a(ho hoVar, l8 l8Var, dp.d dVar) {
        }

        public b(int i) {
            this.d = i;
        }

        @Override // com.applovin.impl.gj
        public void a(ah ahVar) {
            ho hoVar;
            if (ahVar.w() != 2) {
                return;
            }
            if (cp.this.a == 1 || cp.this.a == 2 || cp.this.m == 1) {
                hoVar = (ho) cp.this.c.get(0);
            } else {
                hoVar = new ho(((ho) cp.this.c.get(0)).a());
                cp.this.c.add(hoVar);
            }
            if ((ahVar.w() & 128) == 0) {
                return;
            }
            ahVar.g(1);
            int iC = ahVar.C();
            int i = 3;
            ahVar.g(3);
            ahVar.a(this.a, 2);
            this.a.d(3);
            int i2 = 13;
            cp.this.s = this.a.a(13);
            ahVar.a(this.a, 2);
            int i3 = 4;
            this.a.d(4);
            ahVar.g(this.a.a(12));
            if (cp.this.a == 2 && cp.this.q == null) {
                dp.b bVar = new dp.b(21, null, null, xp.f);
                cp cpVar = cp.this;
                cpVar.q = cpVar.f.a(21, bVar);
                if (cp.this.q != null) {
                    cp.this.q.a(hoVar, cp.this.l, new dp.d(iC, 21, 8192));
                }
            }
            this.b.clear();
            this.c.clear();
            int iA = ahVar.a();
            while (iA > 0) {
                ahVar.a(this.a, 5);
                int iA2 = this.a.a(8);
                this.a.d(i);
                int iA3 = this.a.a(i2);
                this.a.d(i3);
                int iA4 = this.a.a(12);
                dp.b bVarA = a(ahVar, iA4);
                if (iA2 == 6 || iA2 == 5) {
                    iA2 = bVarA.a;
                }
                iA -= iA4 + 5;
                int i4 = cp.this.a == 2 ? iA2 : iA3;
                if (!cp.this.h.get(i4)) {
                    dp dpVarA = (cp.this.a == 2 && iA2 == 21) ? cp.this.q : cp.this.f.a(iA2, bVarA);
                    if (cp.this.a != 2 || iA3 < this.c.get(i4, 8192)) {
                        this.c.put(i4, iA3);
                        this.b.put(i4, dpVarA);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.c.size();
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = this.c.keyAt(i5);
                int iValueAt = this.c.valueAt(i5);
                cp.this.h.put(iKeyAt, true);
                cp.this.i.put(iValueAt, true);
                dp dpVar = (dp) this.b.valueAt(i5);
                if (dpVar != null) {
                    if (dpVar != cp.this.q) {
                        dpVar.a(hoVar, cp.this.l, new dp.d(iC, iKeyAt, 8192));
                    }
                    cp.this.g.put(iValueAt, dpVar);
                }
            }
            if (cp.this.a == 2) {
                if (cp.this.n) {
                    return;
                }
                cp.this.l.c();
                cp.this.m = 0;
                cp.this.n = true;
                return;
            }
            cp.this.g.remove(this.d);
            cp cpVar2 = cp.this;
            cpVar2.m = cpVar2.a == 1 ? 0 : cp.this.m - 1;
            if (cp.this.m == 0) {
                cp.this.l.c();
                cp.this.n = true;
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x004d  */
        /* JADX WARN: Code duplicated, block: B:27:0x0054  */
        /* JADX WARN: Code duplicated, block: B:32:0x0063  */
        private dp.b a(ah ahVar, int i) {
            int iD = ahVar.d();
            int i2 = i + iD;
            int i3 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (ahVar.d() < i2) {
                int iW = ahVar.w();
                int iD2 = ahVar.d() + ahVar.w();
                if (iD2 > i2) {
                    break;
                }
                if (iW == 5) {
                    long jY = ahVar.y();
                    if (jY == 1094921523) {
                        i3 = 129;
                    } else if (jY == 1161904947) {
                        i3 = 135;
                    } else if (jY == 1094921524) {
                        i3 = 172;
                    } else if (jY == 1212503619) {
                        i3 = 36;
                    }
                } else if (iW == 106) {
                    i3 = 129;
                } else if (iW == 122) {
                    i3 = 135;
                } else if (iW == 127) {
                    if (ahVar.w() == 21) {
                        i3 = 172;
                    }
                } else if (iW == 123) {
                    i3 = 138;
                } else if (iW == 10) {
                    strTrim = ahVar.c(3).trim();
                } else if (iW == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (ahVar.d() < iD2) {
                        String strTrim2 = ahVar.c(3).trim();
                        int iW2 = ahVar.w();
                        byte[] bArr = new byte[4];
                        ahVar.a(bArr, 0, 4);
                        arrayList2.add(new dp.a(strTrim2, iW2, bArr));
                    }
                    arrayList = arrayList2;
                    i3 = 89;
                } else if (iW == 111) {
                    i3 = 257;
                }
                ahVar.g(iD2 - ahVar.d());
            }
            ahVar.f(i2);
            return new dp.b(i3, strTrim, arrayList, Arrays.copyOfRange(ahVar.c(), iD, i2));
        }
    }

    public cp(int i, ho hoVar, dp.c cVar, int i2) {
        this.f = (dp.c) b1.a(cVar);
        this.b = i2;
        this.a = i;
        if (i != 1 && i != 2) {
            ArrayList arrayList = new ArrayList();
            this.c = arrayList;
            arrayList.add(hoVar);
        } else {
            this.c = Collections.singletonList(hoVar);
        }
        this.d = new ah(new byte[9400], 0);
        this.h = new SparseBooleanArray();
        this.i = new SparseBooleanArray();
        this.g = new SparseArray();
        this.e = new SparseIntArray();
        this.j = new bp(i2);
        this.l = l8.e;
        this.s = -1;
        d();
    }

    private void a(long j) {
        if (this.o) {
            return;
        }
        this.o = true;
        if (this.j.a() != -9223372036854775807L) {
            ap apVar = new ap(this.j.b(), this.j.a(), j, this.s, this.b);
            this.k = apVar;
            this.l.a(apVar.a());
            return;
        }
        this.l.a(new ij.b(this.j.a()));
    }

    private int b() throws ch {
        int iD = this.d.d();
        int iE = this.d.e();
        int iA = ep.a(this.d.c(), iD, iE);
        this.d.f(iA);
        int i = iA + 188;
        if (i > iE) {
            int i2 = this.r + (iA - iD);
            this.r = i2;
            if (this.a == 2 && i2 > 376) {
                throw ch.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.r = 0;
        }
        return i;
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        long jA = k8Var.a();
        if (this.n) {
            if (jA != -1 && this.a != 2 && !this.j.c()) {
                return this.j.a(k8Var, thVar, this.s);
            }
            a(jA);
            if (this.p) {
                this.p = false;
                a(0L, 0L);
                if (k8Var.f() != 0) {
                    thVar.a = 0L;
                    return 1;
                }
            }
            ap apVar = this.k;
            if (apVar != null && apVar.b()) {
                return this.k.a(k8Var, thVar);
            }
        }
        if (!b(k8Var)) {
            return -1;
        }
        int iB = b();
        int iE = this.d.e();
        if (iB > iE) {
            return 0;
        }
        int iJ = this.d.j();
        if ((8388608 & iJ) != 0) {
            this.d.f(iB);
            return 0;
        }
        int i = (4194304 & iJ) != 0 ? 1 : 0;
        int i2 = (2096896 & iJ) >> 8;
        boolean z = (iJ & 32) != 0;
        dp dpVar = (iJ & 16) != 0 ? (dp) this.g.get(i2) : null;
        if (dpVar == null) {
            this.d.f(iB);
            return 0;
        }
        if (this.a != 2) {
            int i3 = iJ & 15;
            int i4 = this.e.get(i2, i3 - 1);
            this.e.put(i2, i3);
            if (i4 == i3) {
                this.d.f(iB);
                return 0;
            }
            if (i3 != ((i4 + 1) & 15)) {
                dpVar.a();
            }
        }
        if (z) {
            int iW = this.d.w();
            i |= (this.d.w() & 64) != 0 ? 2 : 0;
            this.d.g(iW - 1);
        }
        boolean z2 = this.n;
        if (a(i2)) {
            this.d.e(iB);
            dpVar.a(this.d, i);
            this.d.e(iE);
        }
        if (this.a != 2 && !z2 && this.n && jA != -1) {
            this.p = true;
        }
        this.d.f(iB);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        ap apVar;
        b1.b(this.a != 2);
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            ho hoVar = (ho) this.c.get(i);
            boolean z = hoVar.c() == -9223372036854775807L;
            if (!z) {
                long jA = hoVar.a();
                if (jA != -9223372036854775807L && jA != 0 && jA != j2) {
                    hoVar.d(j2);
                }
            } else if (z) {
                hoVar.d(j2);
            }
        }
        if (j2 != 0 && (apVar = this.k) != null) {
            apVar.b(j2);
        }
        this.d.d(0);
        this.e.clear();
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            ((dp) this.g.valueAt(i2)).a();
        }
        this.r = 0;
    }

    private boolean a(int i) {
        return this.a == 2 || this.n || !this.i.get(i, false);
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        byte[] bArrC = this.d.c();
        k8Var.c(bArrC, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 < 5) {
                    if (bArrC[(i2 * 188) + i] != 71) {
                        break;
                    }
                    i2++;
                } else {
                    k8Var.a(i);
                    return true;
                }
            }
        }
        return false;
    }
}

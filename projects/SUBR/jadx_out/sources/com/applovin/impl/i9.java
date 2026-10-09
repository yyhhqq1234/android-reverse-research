package com.applovin.impl;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.applovin.exoplayer2.common.base.Function;
import com.google.common.primitives.Ints;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class i9 implements j8 {
    public static final n8 I = new n8() { // from class: com.applovin.impl.i9$$ExternalSyntheticLambda1
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return i9.d();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final e9 K = new e9.b().f("application/x-emsg").a();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private l8 E;
    private qo[] F;
    private qo[] G;
    private boolean H;
    private final int a;
    private final lo b;
    private final List c;
    private final SparseArray d;
    private final ah e;
    private final ah f;
    private final ah g;
    private final byte[] h;
    private final ah i;
    private final ho j;
    private final x7 k;
    private final ah l;
    private final ArrayDeque m;
    private final ArrayDeque n;
    private final qo o;
    private int p;
    private int q;
    private long r;
    private int s;
    private ah t;
    private long u;
    private int v;
    private long w;
    private long x;
    private long y;
    private b z;

    private static boolean b(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    private static boolean c(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    protected lo a(lo loVar) {
        return loVar;
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public i9() {
        this(0);
    }

    private void b() {
        this.p = 0;
        this.s = 0;
    }

    public i9(int i) {
        this(i, null);
    }

    public i9(int i, ho hoVar) {
        this(i, hoVar, null, Collections.emptyList());
    }

    private void c() {
        int i;
        qo[] qoVarArr = new qo[2];
        this.F = qoVarArr;
        qo qoVar = this.o;
        int i2 = 0;
        if (qoVar != null) {
            qoVarArr[0] = qoVar;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.a & 4) != 0) {
            qoVarArr[i] = this.E.a(100, 5);
            i3 = 101;
            i++;
        }
        qo[] qoVarArr2 = (qo[]) xp.a(this.F, i);
        this.F = qoVarArr2;
        for (qo qoVar2 : qoVarArr2) {
            qoVar2.a(K);
        }
        this.G = new qo[this.c.size()];
        while (i2 < this.G.length) {
            qo qoVarA = this.E.a(i3, 3);
            qoVarA.a((e9) this.c.get(i2));
            this.G[i2] = qoVarA;
            i2++;
            i3++;
        }
    }

    private static Pair d(ah ahVar) {
        ahVar.f(12);
        return Pair.create(Integer.valueOf(ahVar.j()), new k6(ahVar.j() - 1, ahVar.j(), ahVar.j(), ahVar.j()));
    }

    public i9(int i, ho hoVar, lo loVar, List list) {
        this(i, hoVar, loVar, list, null);
    }

    private void b(j1.a aVar) throws ch {
        a(aVar, this.d, this.b != null, this.a, this.h);
        x6 x6VarA = a(aVar.c);
        if (x6VarA != null) {
            int size = this.d.size();
            for (int i = 0; i < size; i++) {
                ((b) this.d.valueAt(i)).a(x6VarA);
            }
        }
        if (this.w != -9223372036854775807L) {
            int size2 = this.d.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((b) this.d.valueAt(i2)).a(this.w);
            }
            this.w = -9223372036854775807L;
        }
    }

    public i9(int i, ho hoVar, lo loVar, List list, qo qoVar) {
        this.a = i;
        this.j = hoVar;
        this.b = loVar;
        this.c = Collections.unmodifiableList(list);
        this.o = qoVar;
        this.k = new x7();
        this.l = new ah(16);
        this.e = new ah(yf.a);
        this.f = new ah(5);
        this.g = new ah();
        byte[] bArr = new byte[16];
        this.h = bArr;
        this.i = new ah(bArr);
        this.m = new ArrayDeque();
        this.n = new ArrayDeque();
        this.d = new SparseArray();
        this.x = -9223372036854775807L;
        this.w = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.E = l8.e;
        this.F = new qo[0];
        this.G = new qo[0];
    }

    private static int a(int i) throws ch {
        if (i >= 0) {
            return i;
        }
        throw ch.a("Unexpected negative value: " + i, null);
    }

    private void c(j1.a aVar) {
        int i = 0;
        b1.b(this.b == null, "Unexpected moov box.");
        x6 x6VarA = a(aVar.c);
        j1.a aVar2 = (j1.a) b1.a(aVar.d(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = aVar2.c.size();
        long jB = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            j1.b bVar = (j1.b) aVar2.c.get(i2);
            int i3 = bVar.a;
            if (i3 == 1953654136) {
                Pair pairD = d(bVar.b);
                sparseArray.put(((Integer) pairD.first).intValue(), (k6) pairD.second);
            } else if (i3 == 1835362404) {
                jB = b(bVar.b);
            }
        }
        List listA = k1.a(aVar, new y9(), jB, x6VarA, (this.a & 16) != 0, false, new Function() { // from class: com.applovin.impl.i9$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((lo) obj);
            }
        });
        int size2 = listA.size();
        if (this.d.size() == 0) {
            while (i < size2) {
                ro roVar = (ro) listA.get(i);
                lo loVar = roVar.a;
                this.d.put(loVar.a, new b(this.E.a(i, loVar.b), roVar, a(sparseArray, loVar.a)));
                this.x = Math.max(this.x, loVar.e);
                i++;
            }
            this.E.c();
            return;
        }
        b1.b(this.d.size() == size2);
        while (i < size2) {
            ro roVar2 = (ro) listA.get(i);
            lo loVar2 = roVar2.a;
            ((b) this.d.get(loVar2.a)).a(roVar2, a(sparseArray, loVar2.a));
            i++;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean e(k8 k8Var) throws ch {
        int iA;
        b bVarA = this.z;
        Throwable th = null;
        if (bVarA == null) {
            bVarA = a(this.d);
            if (bVarA == null) {
                int iF = (int) (this.u - k8Var.f());
                if (iF >= 0) {
                    k8Var.a(iF);
                    b();
                    return false;
                }
                throw ch.a("Offset to end of mdat was negative.", null);
            }
            int iB = (int) (bVarA.b() - k8Var.f());
            if (iB < 0) {
                oc.d("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iB = 0;
            }
            k8Var.a(iB);
            this.z = bVarA;
        }
        int i = 4;
        int i2 = 1;
        if (this.p == 3) {
            int iD = bVarA.d();
            this.A = iD;
            if (bVarA.f < bVarA.i) {
                k8Var.a(iD);
                bVarA.h();
                if (!bVarA.f()) {
                    this.z = null;
                }
                this.p = 3;
                return true;
            }
            if (bVarA.d.a.g == 1) {
                this.A = iD - 8;
                k8Var.a(8);
            }
            if ("audio/ac4".equals(bVarA.d.a.f.m)) {
                this.B = bVarA.a(this.A, 7);
                n.a(this.A, this.i);
                bVarA.a.a(this.i, 7);
                this.B += 7;
            } else {
                this.B = bVarA.a(this.A, 0);
            }
            this.A += this.B;
            this.p = 4;
            this.C = 0;
        }
        lo loVar = bVarA.d.a;
        qo qoVar = bVarA.a;
        long jC = bVarA.c();
        ho hoVar = this.j;
        if (hoVar != null) {
            jC = hoVar.a(jC);
        }
        long j = jC;
        if (loVar.j == 0) {
            while (true) {
                int i3 = this.B;
                int i4 = this.A;
                if (i3 >= i4) {
                    break;
                }
                this.B += qoVar.a((f5) k8Var, i4 - i3, false);
            }
        } else {
            byte[] bArrC = this.f.c();
            bArrC[0] = 0;
            bArrC[1] = 0;
            bArrC[2] = 0;
            int i5 = loVar.j;
            int i6 = i5 + 1;
            int i7 = 4 - i5;
            while (this.B < this.A) {
                int i8 = this.C;
                if (i8 == 0) {
                    k8Var.d(bArrC, i7, i6);
                    this.f.f(0);
                    int iJ = this.f.j();
                    if (iJ >= i2) {
                        this.C = iJ - 1;
                        this.e.f(0);
                        qoVar.a(this.e, i);
                        qoVar.a(this.f, i2);
                        this.D = this.G.length > 0 && yf.a(loVar.f.m, bArrC[i]);
                        this.B += 5;
                        this.A += i7;
                    } else {
                        throw ch.a("Invalid NAL length", th);
                    }
                } else {
                    if (this.D) {
                        this.g.d(i8);
                        k8Var.d(this.g.c(), 0, this.C);
                        qoVar.a(this.g, this.C);
                        iA = this.C;
                        int iC = yf.c(this.g.c(), this.g.e());
                        this.g.f(MimeTypes.VIDEO_H265.equals(loVar.f.m) ? 1 : 0);
                        this.g.e(iC);
                        c3.a(j, this.g, this.G);
                    } else {
                        iA = qoVar.a((f5) k8Var, i8, false);
                    }
                    this.B += iA;
                    this.C -= iA;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int iA2 = bVarA.a();
        mo moVarE = bVarA.e();
        qoVar.a(j, iA2, this.A, 0, moVarE != null ? moVarE.c : null);
        a(j);
        if (!bVarA.f()) {
            this.z = null;
        }
        this.p = 3;
        return true;
    }

    private static final class a {
        public final long a;
        public final int b;

        public a(long j, int i) {
            this.a = j;
            this.b = i;
        }
    }

    private static final class b {
        public final qo a;
        public ro d;
        public k6 e;
        public int f;
        public int g;
        public int h;
        public int i;
        private boolean l;
        public final no b = new no();
        public final ah c = new ah();
        private final ah j = new ah(1);
        private final ah k = new ah();

        public b(qo qoVar, ro roVar, k6 k6Var) {
            this.a = qoVar;
            this.d = roVar;
            this.e = k6Var;
            a(roVar, k6Var);
        }

        public void g() {
            this.b.a();
            this.f = 0;
            this.h = 0;
            this.g = 0;
            this.i = 0;
            this.l = false;
        }

        public long c() {
            if (!this.l) {
                return this.d.f[this.f];
            }
            return this.b.a(this.f);
        }

        public long b() {
            if (!this.l) {
                return this.d.c[this.f];
            }
            return this.b.g[this.h];
        }

        public int d() {
            if (!this.l) {
                return this.d.d[this.f];
            }
            return this.b.i[this.f];
        }

        public boolean f() {
            this.f++;
            if (!this.l) {
                return false;
            }
            int i = this.g + 1;
            this.g = i;
            int[] iArr = this.b.h;
            int i2 = this.h;
            if (i != iArr[i2]) {
                return true;
            }
            this.h = i2 + 1;
            this.g = 0;
            return false;
        }

        public void h() {
            mo moVarE = e();
            if (moVarE == null) {
                return;
            }
            ah ahVar = this.b.p;
            int i = moVarE.d;
            if (i != 0) {
                ahVar.g(i);
            }
            if (this.b.c(this.f)) {
                ahVar.g(ahVar.C() * 6);
            }
        }

        public mo e() {
            if (!this.l) {
                return null;
            }
            int i = ((k6) xp.a(this.b.a)).a;
            mo moVarA = this.b.o;
            if (moVarA == null) {
                moVarA = this.d.a.a(i);
            }
            if (moVarA == null || !moVarA.a) {
                return null;
            }
            return moVarA;
        }

        public int a() {
            int i;
            if (!this.l) {
                i = this.d.g[this.f];
            } else {
                i = this.b.l[this.f] ? 1 : 0;
            }
            return e() != null ? i | Ints.MAX_POWER_OF_TWO : i;
        }

        public int a(int i, int i2) {
            ah ahVar;
            mo moVarE = e();
            if (moVarE == null) {
                return 0;
            }
            int length = moVarE.d;
            if (length != 0) {
                ahVar = this.b.p;
            } else {
                byte[] bArr = (byte[]) xp.a((Object) moVarE.e);
                this.k.a(bArr, bArr.length);
                ah ahVar2 = this.k;
                length = bArr.length;
                ahVar = ahVar2;
            }
            boolean zC = this.b.c(this.f);
            boolean z = zC || i2 != 0;
            this.j.c()[0] = (byte) ((z ? 128 : 0) | length);
            this.j.f(0);
            this.a.a(this.j, 1, 1);
            this.a.a(ahVar, length, 1);
            if (!z) {
                return length + 1;
            }
            if (!zC) {
                this.c.d(8);
                byte[] bArrC = this.c.c();
                bArrC[0] = 0;
                bArrC[1] = 1;
                bArrC[2] = (byte) ((i2 >> 8) & 255);
                bArrC[3] = (byte) (i2 & 255);
                bArrC[4] = (byte) ((i >> 24) & 255);
                bArrC[5] = (byte) ((i >> 16) & 255);
                bArrC[6] = (byte) ((i >> 8) & 255);
                bArrC[7] = (byte) (i & 255);
                this.a.a(this.c, 8, 1);
                return length + 9;
            }
            ah ahVar3 = this.b.p;
            int iC = ahVar3.C();
            ahVar3.g(-2);
            int i3 = (iC * 6) + 2;
            if (i2 != 0) {
                this.c.d(i3);
                byte[] bArrC2 = this.c.c();
                ahVar3.a(bArrC2, 0, i3);
                int i4 = (((bArrC2[2] & 255) << 8) | (bArrC2[3] & 255)) + i2;
                bArrC2[2] = (byte) ((i4 >> 8) & 255);
                bArrC2[3] = (byte) (i4 & 255);
                ahVar3 = this.c;
            }
            this.a.a(ahVar3, i3, 1);
            return length + 1 + i3;
        }

        public void a(ro roVar, k6 k6Var) {
            this.d = roVar;
            this.e = k6Var;
            this.a.a(roVar.a.f);
            g();
        }

        public void a(long j) {
            int i = this.f;
            while (true) {
                no noVar = this.b;
                if (i >= noVar.f || noVar.a(i) >= j) {
                    return;
                }
                if (this.b.l[i]) {
                    this.i = i;
                }
                i++;
            }
        }

        public void a(x6 x6Var) {
            mo moVarA = this.d.a.a(((k6) xp.a(this.b.a)).a);
            this.a.a(this.d.a.f.a().a(x6Var.a(moVarA != null ? moVarA.b : null)).a());
        }
    }

    private k6 a(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (k6) sparseArray.valueAt(0);
        }
        return (k6) b1.a((k6) sparseArray.get(i));
    }

    private static long b(ah ahVar) {
        ahVar.f(8);
        return j1.c(ahVar.j()) == 0 ? ahVar.y() : ahVar.B();
    }

    private void d(k8 k8Var) throws ch {
        int size = this.d.size();
        long j = Long.MAX_VALUE;
        b bVar = null;
        for (int i = 0; i < size; i++) {
            no noVar = ((b) this.d.valueAt(i)).b;
            if (noVar.q) {
                long j2 = noVar.d;
                if (j2 < j) {
                    bVar = (b) this.d.valueAt(i);
                    j = j2;
                }
            }
        }
        if (bVar == null) {
            this.p = 3;
            return;
        }
        int iF = (int) (j - k8Var.f());
        if (iF >= 0) {
            k8Var.a(iF);
            bVar.b.a(k8Var);
            return;
        }
        throw ch.a("Offset to encryption data was negative.", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] d() {
        return new j8[]{new i9()};
    }

    private static long c(ah ahVar) {
        ahVar.f(8);
        return j1.c(ahVar.j()) == 1 ? ahVar.B() : ahVar.y();
    }

    private void c(k8 k8Var) throws ch {
        int i = ((int) this.r) - this.s;
        ah ahVar = this.t;
        if (ahVar != null) {
            k8Var.d(ahVar.c(), 8, i);
            a(new j1.b(this.q, ahVar), k8Var.f());
        } else {
            k8Var.a(i);
        }
        b(k8Var.f());
    }

    private static void b(ah ahVar, no noVar) throws ch {
        a(ahVar, 0, noVar);
    }

    private static x6 a(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            j1.b bVar = (j1.b) list.get(i);
            if (bVar.a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrC = bVar.b.c();
                UUID uuidC = ji.c(bArrC);
                if (uuidC == null) {
                    oc.d("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new x6.b(uuidC, "video/mp4", bArrC));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new x6(arrayList);
    }

    private static void b(j1.a aVar, SparseArray sparseArray, boolean z, int i, byte[] bArr) throws ch {
        b bVarA = a(((j1.b) b1.a(aVar.e(1952868452))).b, sparseArray, z);
        if (bVarA == null) {
            return;
        }
        no noVar = bVarA.b;
        long j = noVar.r;
        boolean z2 = noVar.s;
        bVarA.g();
        bVarA.l = true;
        j1.b bVarE = aVar.e(1952867444);
        if (bVarE != null && (i & 2) == 0) {
            noVar.r = c(bVarE.b);
            noVar.s = true;
        } else {
            noVar.r = j;
            noVar.s = z2;
        }
        a(aVar, bVarA, i);
        mo moVarA = bVarA.d.a.a(((k6) b1.a(noVar.a)).a);
        j1.b bVarE2 = aVar.e(1935763834);
        if (bVarE2 != null) {
            a((mo) b1.a(moVarA), bVarE2.b, noVar);
        }
        j1.b bVarE3 = aVar.e(1935763823);
        if (bVarE3 != null) {
            a(bVarE3.b, noVar);
        }
        j1.b bVarE4 = aVar.e(1936027235);
        if (bVarE4 != null) {
            b(bVarE4.b, noVar);
        }
        a(aVar, moVarA != null ? moVarA.b : null, noVar);
        int size = aVar.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            j1.b bVar = (j1.b) aVar.c.get(i2);
            if (bVar.a == 1970628964) {
                a(bVar.b, noVar, bArr);
            }
        }
    }

    private void b(long j) throws ch {
        while (!this.m.isEmpty() && ((j1.a) this.m.peek()).b == j) {
            a((j1.a) this.m.pop());
        }
        b();
    }

    private boolean b(k8 k8Var) throws ch {
        if (this.s == 0) {
            if (!k8Var.a(this.l.c(), 0, 8, true)) {
                return false;
            }
            this.s = 8;
            this.l.f(0);
            this.r = this.l.y();
            this.q = this.l.j();
        }
        long j = this.r;
        if (j == 1) {
            k8Var.d(this.l.c(), 8, 8);
            this.s += 8;
            this.r = this.l.B();
        } else if (j == 0) {
            long jA = k8Var.a();
            if (jA == -1 && !this.m.isEmpty()) {
                jA = ((j1.a) this.m.peek()).b;
            }
            if (jA != -1) {
                this.r = (jA - k8Var.f()) + ((long) this.s);
            }
        }
        if (this.r >= this.s) {
            long jF = k8Var.f() - ((long) this.s);
            int i = this.q;
            if ((i == 1836019558 || i == 1835295092) && !this.H) {
                this.E.a(new ij.b(this.x, jF));
                this.H = true;
            }
            if (this.q == 1836019558) {
                int size = this.d.size();
                for (int i2 = 0; i2 < size; i2++) {
                    no noVar = ((b) this.d.valueAt(i2)).b;
                    noVar.b = jF;
                    noVar.d = jF;
                    noVar.c = jF;
                }
            }
            int i3 = this.q;
            if (i3 == 1835295092) {
                this.z = null;
                this.u = jF + this.r;
                this.p = 2;
                return true;
            }
            if (b(i3)) {
                long jF2 = (k8Var.f() + this.r) - 8;
                this.m.push(new j1.a(this.q, jF2));
                if (this.r == this.s) {
                    b(jF2);
                } else {
                    b();
                }
            } else if (c(this.q)) {
                if (this.s == 8) {
                    long j2 = this.r;
                    if (j2 <= 2147483647L) {
                        ah ahVar = new ah((int) j2);
                        System.arraycopy(this.l.c(), 0, ahVar.c(), 0, 8);
                        this.t = ahVar;
                        this.p = 1;
                    } else {
                        throw ch.a("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw ch.a("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.r <= 2147483647L) {
                this.t = null;
                this.p = 1;
            } else {
                throw ch.a("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw ch.a("Atom size less than header length (unsupported).");
    }

    private static b a(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            b bVar2 = (b) sparseArray.valueAt(i);
            if ((bVar2.l || bVar2.f != bVar2.d.b) && (!bVar2.l || bVar2.h != bVar2.b.e)) {
                long jB = bVar2.b();
                if (jB < j) {
                    bVar = bVar2;
                    j = jB;
                }
            }
        }
        return bVar;
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.E = l8Var;
        b();
        c();
        lo loVar = this.b;
        if (loVar != null) {
            this.d.put(0, new b(l8Var.a(0, loVar.b), new ro(this.b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new k6(0, 0, 0, 0)));
            this.E.c();
        }
    }

    private void a(j1.a aVar) throws ch {
        int i = aVar.a;
        if (i == 1836019574) {
            c(aVar);
        } else if (i == 1836019558) {
            b(aVar);
        } else {
            if (this.m.isEmpty()) {
                return;
            }
            ((j1.a) this.m.peek()).a(aVar);
        }
    }

    private void a(ah ahVar) {
        long jC;
        String str;
        long jC2;
        String str2;
        long jY;
        long jA;
        if (this.F.length == 0) {
            return;
        }
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        if (iC != 0) {
            if (iC != 1) {
                oc.d("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iC);
                return;
            }
            long jY2 = ahVar.y();
            jA = xp.c(ahVar.B(), 1000000L, jY2);
            long jC3 = xp.c(ahVar.y(), 1000L, jY2);
            long jY3 = ahVar.y();
            str = (String) b1.a((Object) ahVar.t());
            jC2 = jC3;
            jY = jY3;
            str2 = (String) b1.a((Object) ahVar.t());
            jC = -9223372036854775807L;
        } else {
            String str3 = (String) b1.a((Object) ahVar.t());
            String str4 = (String) b1.a((Object) ahVar.t());
            long jY4 = ahVar.y();
            jC = xp.c(ahVar.y(), 1000000L, jY4);
            long j = this.y;
            long j2 = j != -9223372036854775807L ? j + jC : -9223372036854775807L;
            str = str3;
            jC2 = xp.c(ahVar.y(), 1000L, jY4);
            str2 = str4;
            jY = ahVar.y();
            jA = j2;
        }
        byte[] bArr = new byte[ahVar.a()];
        ahVar.a(bArr, 0, ahVar.a());
        ah ahVar2 = new ah(this.k.a(new v7(str, str2, jC2, jY, bArr)));
        int iA = ahVar2.a();
        for (qo qoVar : this.F) {
            ahVar2.f(0);
            qoVar.a(ahVar2, iA);
        }
        if (jA == -9223372036854775807L) {
            this.n.addLast(new a(jC, iA));
            this.v += iA;
            return;
        }
        ho hoVar = this.j;
        if (hoVar != null) {
            jA = hoVar.a(jA);
        }
        for (qo qoVar2 : this.F) {
            qoVar2.a(jA, 1, iA, 0, null);
        }
    }

    private void a(j1.b bVar, long j) throws ch {
        if (!this.m.isEmpty()) {
            ((j1.a) this.m.peek()).a(bVar);
            return;
        }
        int i = bVar.a;
        if (i != 1936286840) {
            if (i == 1701671783) {
                a(bVar.b);
            }
        } else {
            Pair pairA = a(bVar.b, j);
            this.y = ((Long) pairA.first).longValue();
            this.E.a((ij) pairA.second);
            this.H = true;
        }
    }

    private void a(long j) {
        while (!this.n.isEmpty()) {
            a aVar = (a) this.n.removeFirst();
            this.v -= aVar.b;
            long jA = aVar.a + j;
            ho hoVar = this.j;
            if (hoVar != null) {
                jA = hoVar.a(jA);
            }
            for (qo qoVar : this.F) {
                qoVar.a(jA, 1, aVar.b, this.v, null);
            }
        }
    }

    private static void a(j1.a aVar, SparseArray sparseArray, boolean z, int i, byte[] bArr) throws ch {
        int size = aVar.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            j1.a aVar2 = (j1.a) aVar.d.get(i2);
            if (aVar2.a == 1953653094) {
                b(aVar2, sparseArray, z, i, bArr);
            }
        }
    }

    private static void a(ah ahVar, no noVar) throws ch {
        ahVar.f(8);
        int iJ = ahVar.j();
        if ((j1.b(iJ) & 1) == 1) {
            ahVar.g(8);
        }
        int iA = ahVar.A();
        if (iA == 1) {
            noVar.d += j1.c(iJ) == 0 ? ahVar.y() : ahVar.B();
        } else {
            throw ch.a("Unexpected saio entry count: " + iA, null);
        }
    }

    private static void a(mo moVar, ah ahVar, no noVar) throws ch {
        int i;
        int i2 = moVar.d;
        ahVar.f(8);
        if ((j1.b(ahVar.j()) & 1) == 1) {
            ahVar.g(8);
        }
        int iW = ahVar.w();
        int iA = ahVar.A();
        if (iA <= noVar.f) {
            if (iW == 0) {
                boolean[] zArr = noVar.n;
                i = 0;
                for (int i3 = 0; i3 < iA; i3++) {
                    int iW2 = ahVar.w();
                    i += iW2;
                    zArr[i3] = iW2 > i2;
                }
            } else {
                i = iW * iA;
                Arrays.fill(noVar.n, 0, iA, iW > i2);
            }
            Arrays.fill(noVar.n, iA, noVar.f, false);
            if (i > 0) {
                noVar.b(i);
                return;
            }
            return;
        }
        throw ch.a("Saiz sample count " + iA + " is greater than fragment sample count" + noVar.f, null);
    }

    private static void a(j1.a aVar, String str, no noVar) throws ch {
        byte[] bArr = null;
        ah ahVar = null;
        ah ahVar2 = null;
        for (int i = 0; i < aVar.c.size(); i++) {
            j1.b bVar = (j1.b) aVar.c.get(i);
            ah ahVar3 = bVar.b;
            int i2 = bVar.a;
            if (i2 == 1935828848) {
                ahVar3.f(12);
                if (ahVar3.j() == 1936025959) {
                    ahVar = ahVar3;
                }
            } else if (i2 == 1936158820) {
                ahVar3.f(12);
                if (ahVar3.j() == 1936025959) {
                    ahVar2 = ahVar3;
                }
            }
        }
        if (ahVar == null || ahVar2 == null) {
            return;
        }
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        ahVar.g(4);
        if (iC == 1) {
            ahVar.g(4);
        }
        if (ahVar.j() == 1) {
            ahVar2.f(8);
            int iC2 = j1.c(ahVar2.j());
            ahVar2.g(4);
            if (iC2 == 1) {
                if (ahVar2.y() == 0) {
                    throw ch.a("Variable length description in sgpd found (unsupported)");
                }
            } else if (iC2 >= 2) {
                ahVar2.g(4);
            }
            if (ahVar2.y() == 1) {
                ahVar2.g(1);
                int iW = ahVar2.w();
                int i3 = (iW & 240) >> 4;
                int i4 = iW & 15;
                boolean z = ahVar2.w() == 1;
                if (z) {
                    int iW2 = ahVar2.w();
                    byte[] bArr2 = new byte[16];
                    ahVar2.a(bArr2, 0, 16);
                    if (iW2 == 0) {
                        int iW3 = ahVar2.w();
                        bArr = new byte[iW3];
                        ahVar2.a(bArr, 0, iW3);
                    }
                    noVar.m = true;
                    noVar.o = new mo(z, str, iW2, bArr2, i3, i4, bArr);
                    return;
                }
                return;
            }
            throw ch.a("Entry count in sgpd != 1 (unsupported).");
        }
        throw ch.a("Entry count in sbgp != 1 (unsupported).");
    }

    private static void a(ah ahVar, int i, no noVar) throws ch {
        ahVar.f(i + 8);
        int iB = j1.b(ahVar.j());
        if ((iB & 1) == 0) {
            boolean z = (iB & 2) != 0;
            int iA = ahVar.A();
            if (iA == 0) {
                Arrays.fill(noVar.n, 0, noVar.f, false);
                return;
            }
            if (iA == noVar.f) {
                Arrays.fill(noVar.n, 0, iA, z);
                noVar.b(ahVar.a());
                noVar.a(ahVar);
                return;
            } else {
                throw ch.a("Senc sample count " + iA + " is different from fragment sample count" + noVar.f, null);
            }
        }
        throw ch.a("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static Pair a(ah ahVar, long j) throws ch {
        long jB;
        long jB2;
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        ahVar.g(4);
        long jY = ahVar.y();
        if (iC == 0) {
            jB = ahVar.y();
            jB2 = ahVar.y();
        } else {
            jB = ahVar.B();
            jB2 = ahVar.B();
        }
        long j2 = jB;
        long j3 = j + jB2;
        long jC = xp.c(j2, 1000000L, jY);
        ahVar.g(2);
        int iC2 = ahVar.C();
        int[] iArr = new int[iC2];
        long[] jArr = new long[iC2];
        long[] jArr2 = new long[iC2];
        long[] jArr3 = new long[iC2];
        long j4 = j2;
        long j5 = jC;
        int i = 0;
        while (i < iC2) {
            int iJ = ahVar.j();
            if ((iJ & Integer.MIN_VALUE) == 0) {
                long jY2 = ahVar.y();
                iArr[i] = iJ & Integer.MAX_VALUE;
                jArr[i] = j3;
                jArr3[i] = j5;
                long j6 = j4 + jY2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i2 = iC2;
                int[] iArr2 = iArr;
                long jC2 = xp.c(j6, 1000000L, jY);
                jArr4[i] = jC2 - jArr5[i];
                ahVar.g(4);
                j3 += (long) iArr2[i];
                i++;
                iArr = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                iC2 = i2;
                j4 = j6;
                j5 = jC2;
            } else {
                throw ch.a("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(jC), new g3(iArr, jArr, jArr2, jArr3));
    }

    private static b a(ah ahVar, SparseArray sparseArray, boolean z) {
        int iJ;
        int iJ2;
        int iJ3;
        int iJ4;
        ahVar.f(8);
        int iB = j1.b(ahVar.j());
        b bVar = (b) (z ? sparseArray.valueAt(0) : sparseArray.get(ahVar.j()));
        if (bVar == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jB = ahVar.B();
            no noVar = bVar.b;
            noVar.c = jB;
            noVar.d = jB;
        }
        k6 k6Var = bVar.e;
        if ((iB & 2) != 0) {
            iJ = ahVar.j() - 1;
        } else {
            iJ = k6Var.a;
        }
        if ((iB & 8) != 0) {
            iJ2 = ahVar.j();
        } else {
            iJ2 = k6Var.b;
        }
        if ((iB & 16) != 0) {
            iJ3 = ahVar.j();
        } else {
            iJ3 = k6Var.c;
        }
        if ((iB & 32) != 0) {
            iJ4 = ahVar.j();
        } else {
            iJ4 = k6Var.d;
        }
        bVar.b.a = new k6(iJ, iJ2, iJ3, iJ4);
        return bVar;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:61:0x0110  */
    /* JADX WARN: Code duplicated, block: B:64:0x012d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0142  */
    private static int a(b bVar, int i, int i2, ah ahVar, int i3) throws ch {
        long j;
        long jC;
        int[] iArr;
        int[] iArr2;
        long[] jArr;
        boolean[] zArr;
        boolean z;
        int i4;
        long j2;
        long j3;
        long j4;
        int i5;
        int iJ;
        int iJ2;
        int iJ3;
        long jC2;
        boolean z2;
        b bVar2 = bVar;
        ahVar.f(8);
        int iB = j1.b(ahVar.j());
        lo loVar = bVar2.d.a;
        no noVar = bVar2.b;
        k6 k6Var = (k6) xp.a(noVar.a);
        noVar.h[i] = ahVar.A();
        long[] jArr2 = noVar.g;
        long j5 = noVar.c;
        jArr2[i] = j5;
        if ((iB & 1) != 0) {
            jArr2[i] = j5 + ((long) ahVar.j());
        }
        boolean z3 = (iB & 4) != 0;
        int iJ4 = k6Var.d;
        if (z3) {
            iJ4 = ahVar.j();
        }
        boolean z4 = (iB & 256) != 0;
        boolean z5 = (iB & 512) != 0;
        boolean z6 = (iB & 1024) != 0;
        boolean z7 = (iB & 2048) != 0;
        long[] jArr3 = loVar.h;
        if (jArr3 != null && jArr3.length == 1) {
            j = 0;
            if (jArr3[0] == 0) {
                jC = xp.c(((long[]) xp.a(loVar.i))[0], 1000000L, loVar.c);
            }
            iArr = noVar.i;
            iArr2 = noVar.j;
            jArr = noVar.k;
            zArr = noVar.l;
            int i6 = iJ4;
            if (loVar.b == 2 || (i2 & 1) == 0) {
                z = false;
            } else {
                z = true;
            }
            i4 = i3 + noVar.h[i];
            boolean z8 = z;
            j2 = loVar.c;
            j3 = jC;
            j4 = noVar.r;
            i5 = i3;
            while (i5 < i4) {
                if (z4) {
                    iJ = ahVar.j();
                } else {
                    iJ = k6Var.b;
                }
                int iA = a(iJ);
                if (z5) {
                    iJ2 = ahVar.j();
                } else {
                    iJ2 = k6Var.c;
                }
                int iA2 = a(iJ2);
                if (z6) {
                    iJ3 = ahVar.j();
                } else if (i5 == 0 || !z3) {
                    iJ3 = k6Var.d;
                } else {
                    iJ3 = i6;
                }
                if (z7) {
                    iArr2[i5] = (int) ((((long) ahVar.j()) * 1000000) / j2);
                } else {
                    iArr2[i5] = 0;
                }
                jC2 = xp.c(j4, 1000000L, j2) - j3;
                jArr[i5] = jC2;
                if (!noVar.s) {
                    jArr[i5] = jC2 + bVar2.d.h;
                }
                iArr[i5] = iA2;
                if (((iJ3 >> 16) & 1) == 0 || (z8 && i5 != 0)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                zArr[i5] = z2;
                j4 += (long) iA;
                i5++;
                bVar2 = bVar;
                z4 = z4;
                j2 = j2;
                z3 = z3;
                z7 = z7;
                z5 = z5;
                z6 = z6;
            }
            noVar.r = j4;
            return i4;
        }
        j = 0;
        jC = j;
        iArr = noVar.i;
        iArr2 = noVar.j;
        jArr = noVar.k;
        zArr = noVar.l;
        int i7 = iJ4;
        if (loVar.b == 2) {
            z = false;
        } else {
            z = false;
        }
        i4 = i3 + noVar.h[i];
        boolean z9 = z;
        j2 = loVar.c;
        j3 = jC;
        j4 = noVar.r;
        i5 = i3;
        while (i5 < i4) {
            if (z4) {
                iJ = ahVar.j();
            } else {
                iJ = k6Var.b;
            }
            int iA3 = a(iJ);
            if (z5) {
                iJ2 = ahVar.j();
            } else {
                iJ2 = k6Var.c;
            }
            int iA4 = a(iJ2);
            if (z6) {
                iJ3 = ahVar.j();
            } else if (i5 == 0) {
                iJ3 = k6Var.d;
            } else {
                iJ3 = k6Var.d;
            }
            if (z7) {
                iArr2[i5] = (int) ((((long) ahVar.j()) * 1000000) / j2);
            } else {
                iArr2[i5] = 0;
            }
            jC2 = xp.c(j4, 1000000L, j2) - j3;
            jArr[i5] = jC2;
            if (!noVar.s) {
                jArr[i5] = jC2 + bVar2.d.h;
            }
            iArr[i5] = iA4;
            if (((iJ3 >> 16) & 1) == 0) {
                z2 = false;
            } else {
                z2 = false;
            }
            zArr[i5] = z2;
            j4 += (long) iA3;
            i5++;
            bVar2 = bVar;
            z4 = z4;
            j2 = j2;
            z3 = z3;
            z7 = z7;
            z5 = z5;
            z6 = z6;
        }
        noVar.r = j4;
        return i4;
    }

    private static void a(j1.a aVar, b bVar, int i) throws ch {
        List list = aVar.c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            j1.b bVar2 = (j1.b) list.get(i4);
            if (bVar2.a == 1953658222) {
                ah ahVar = bVar2.b;
                ahVar.f(12);
                int iA = ahVar.A();
                if (iA > 0) {
                    i3 += iA;
                    i2++;
                }
            }
        }
        bVar.h = 0;
        bVar.g = 0;
        bVar.f = 0;
        bVar.b.a(i2, i3);
        int i5 = 0;
        int iA2 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            j1.b bVar3 = (j1.b) list.get(i6);
            if (bVar3.a == 1953658222) {
                iA2 = a(bVar, i5, i, bVar3.b, iA2);
                i5++;
            }
        }
    }

    private static void a(ah ahVar, no noVar, byte[] bArr) throws ch {
        ahVar.f(8);
        ahVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, J)) {
            a(ahVar, 16, noVar);
        }
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        while (true) {
            int i = this.p;
            if (i != 0) {
                if (i == 1) {
                    c(k8Var);
                } else if (i != 2) {
                    if (e(k8Var)) {
                        return 0;
                    }
                } else {
                    d(k8Var);
                }
            } else if (!b(k8Var)) {
                return -1;
            }
        }
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            ((b) this.d.valueAt(i)).g();
        }
        this.n.clear();
        this.v = 0;
        this.w = j2;
        this.m.clear();
        b();
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        return lk.a(k8Var);
    }
}

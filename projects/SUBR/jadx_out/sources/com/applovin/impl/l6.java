package com.applovin.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.core.view.PointerIconCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class l6 extends sc {
    private static final int[] f = new int[0];
    private static final vg g = vg.a(new Comparator() { // from class: com.applovin.impl.l6$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return l6.a((Integer) obj, (Integer) obj2);
        }
    });
    private static final vg h = vg.a(new Comparator() { // from class: com.applovin.impl.l6$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return l6.b((Integer) obj, (Integer) obj2);
        }
    });
    private final g8.b d;
    private final AtomicReference e;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(Integer num, Integer num2) {
        return 0;
    }

    @Override // com.applovin.impl.vo
    public boolean b() {
        return true;
    }

    public static final class e extends uo.a {
        private boolean A;
        private boolean B;
        private boolean C;
        private boolean D;
        private int E;
        private boolean F;
        private boolean G;
        private boolean H;
        private final SparseArray I;
        private final SparseBooleanArray J;
        private boolean x;
        private boolean y;
        private boolean z;

        public e() {
            this.I = new SparseArray();
            this.J = new SparseBooleanArray();
            c();
        }

        public e(Context context) {
            super(context);
            this.I = new SparseArray();
            this.J = new SparseBooleanArray();
            c();
        }

        public e i(boolean z) {
            this.x = z;
            return this;
        }

        public e e(boolean z) {
            this.y = z;
            return this;
        }

        public e f(boolean z) {
            this.z = z;
            return this;
        }

        public e g(boolean z) {
            this.A = z;
            return this;
        }

        private e(Bundle bundle) {
            super(bundle);
            d dVar = d.O;
            i(bundle.getBoolean(d.b(1000), dVar.C));
            e(bundle.getBoolean(d.b(1001), dVar.D));
            f(bundle.getBoolean(d.b(1002), dVar.E));
            g(bundle.getBoolean(d.b(1003), dVar.F));
            b(bundle.getBoolean(d.b(1004), dVar.G));
            c(bundle.getBoolean(d.b(1005), dVar.H));
            a(bundle.getBoolean(d.b(1006), dVar.I));
            a(bundle.getInt(d.b(1007), dVar.B));
            h(bundle.getBoolean(d.b(1008), dVar.J));
            j(bundle.getBoolean(d.b(1009), dVar.K));
            d(bundle.getBoolean(d.b(1010), dVar.L));
            this.I = new SparseArray();
            a(bundle);
            this.J = a(bundle.getIntArray(d.b(1014)));
        }

        public e b(boolean z) {
            this.B = z;
            return this;
        }

        public e h(boolean z) {
            this.F = z;
            return this;
        }

        public e j(boolean z) {
            this.G = z;
            return this;
        }

        public e d(boolean z) {
            this.H = z;
            return this;
        }

        private void c() {
            this.x = true;
            this.y = false;
            this.z = true;
            this.A = true;
            this.B = false;
            this.C = false;
            this.D = false;
            this.E = 0;
            this.F = true;
            this.G = false;
            this.H = true;
        }

        @Override // com.applovin.impl.uo.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e a(int i, int i2, boolean z) {
            super.a(i, i2, z);
            return this;
        }

        private SparseBooleanArray a(int[] iArr) {
            if (iArr == null) {
                return new SparseBooleanArray();
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
            for (int i : iArr) {
                sparseBooleanArray.append(i, true);
            }
            return sparseBooleanArray;
        }

        public e c(boolean z) {
            this.C = z;
            return this;
        }

        @Override // com.applovin.impl.uo.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e a(Context context, boolean z) {
            super.a(context, z);
            return this;
        }

        @Override // com.applovin.impl.uo.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a() {
            return new d(this);
        }

        public e a(boolean z) {
            this.D = z;
            return this;
        }

        @Override // com.applovin.impl.uo.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public e a(Context context) {
            super.a(context);
            return this;
        }

        public e a(int i) {
            this.E = i;
            return this;
        }

        public final e a(int i, po poVar, f fVar) {
            Map map = (Map) this.I.get(i);
            if (map == null) {
                map = new HashMap();
                this.I.put(i, map);
            }
            if (map.containsKey(poVar) && xp.a(map.get(poVar), fVar)) {
                return this;
            }
            map.put(poVar, fVar);
            return this;
        }

        private void a(Bundle bundle) {
            int[] intArray = bundle.getIntArray(d.b(1011));
            List listA = p2.a(po.f, bundle.getParcelableArrayList(d.b(PointerIconCompat.TYPE_NO_DROP)), db.h());
            SparseArray sparseArrayA = p2.a(f.f, bundle.getSparseParcelableArray(d.b(1013)), new SparseArray());
            if (intArray == null || intArray.length != listA.size()) {
                return;
            }
            for (int i = 0; i < intArray.length; i++) {
                a(intArray[i], (po) listA.get(i), (f) sparseArrayA.get(i));
            }
        }
    }

    public static final class d extends uo implements o2 {
        public static final d O;
        public static final d P;
        public static final o2.a Q;
        public final int B;
        public final boolean C;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        private final SparseArray M;
        private final SparseBooleanArray N;

        static {
            d dVarA = new e().a();
            O = dVarA;
            P = dVarA;
            Q = new o2.a() { // from class: com.applovin.impl.l6$d$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.o2.a
                public final o2 a(Bundle bundle) {
                    return l6.d.b(bundle);
                }
            };
        }

        private d(e eVar) {
            super(eVar);
            this.C = eVar.x;
            this.D = eVar.y;
            this.E = eVar.z;
            this.F = eVar.A;
            this.G = eVar.B;
            this.H = eVar.C;
            this.I = eVar.D;
            this.B = eVar.E;
            this.J = eVar.F;
            this.K = eVar.G;
            this.L = eVar.H;
            this.M = eVar.I;
            this.N = eVar.J;
        }

        public final boolean d(int i) {
            return this.N.get(i);
        }

        public final boolean b(int i, po poVar) {
            Map map = (Map) this.M.get(i);
            return map != null && map.containsKey(poVar);
        }

        @Override // com.applovin.impl.uo
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return super.equals(dVar) && this.C == dVar.C && this.D == dVar.D && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.B == dVar.B && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && a(this.N, dVar.N) && a(this.M, dVar.M);
        }

        @Override // com.applovin.impl.uo
        public int hashCode() {
            return ((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + this.B) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0);
        }

        private static boolean a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String b(int i) {
            return Integer.toString(i, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d b(Bundle bundle) {
            return new e(bundle).a();
        }

        private static boolean a(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (iIndexOfKey < 0 || !a((Map) sparseArray.valueAt(i), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean a(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                po poVar = (po) entry.getKey();
                if (!map2.containsKey(poVar) || !xp.a(entry.getValue(), map2.get(poVar))) {
                    return false;
                }
            }
            return true;
        }

        public final f a(int i, po poVar) {
            Map map = (Map) this.M.get(i);
            if (map != null) {
                return (f) map.get(poVar);
            }
            return null;
        }

        public static d a(Context context) {
            return new e(context).a();
        }
    }

    public static final class f implements o2 {
        public static final o2.a f = new o2.a() { // from class: com.applovin.impl.l6$f$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.o2.a
            public final o2 a(Bundle bundle) {
                return l6.f.a(bundle);
            }
        };
        public final int a;
        public final int[] b;
        public final int c;
        public final int d;

        public f(int i, int[] iArr, int i2) {
            this.a = i;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.b = iArrCopyOf;
            this.c = iArr.length;
            this.d = i2;
            Arrays.sort(iArrCopyOf);
        }

        public int hashCode() {
            return (((this.a * 31) + Arrays.hashCode(this.b)) * 31) + this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || f.class != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && Arrays.equals(this.b, fVar.b) && this.d == fVar.d;
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ f a(Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(a(0), -1);
            int[] intArray = bundle.getIntArray(a(1));
            int i2 = bundle.getInt(a(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            b1.a(z);
            b1.a(intArray);
            return new f(i, intArray, i2);
        }
    }

    public l6(Context context) {
        this(context, new i0.b());
    }

    private static int b(oo ooVar, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int iIntValue = ((Integer) list.get(i11)).intValue();
            if (a(ooVar.a(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                i10++;
            }
        }
        return i10;
    }

    private static void a(oo ooVar, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = ((Integer) list.get(size)).intValue();
            if (!a(ooVar.a(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    protected static final class h implements Comparable {
        public final boolean a;
        private final d b;
        private final boolean c;
        private final boolean d;
        private final int f;
        private final int g;
        private final int h;

        /* JADX WARN: Code duplicated, block: B:21:0x0033  */
        /* JADX WARN: Code duplicated, block: B:41:0x005e  */
        public h(e9 e9Var, d dVar, int i, boolean z) {
            boolean z2;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            this.b = dVar;
            boolean z3 = true;
            int i8 = 0;
            if (!z || (((i5 = e9Var.r) != -1 && i5 > dVar.a) || ((i6 = e9Var.s) != -1 && i6 > dVar.b))) {
                z2 = false;
            } else {
                float f = e9Var.t;
                if ((f == -1.0f || f <= dVar.c) && ((i7 = e9Var.i) == -1 || i7 <= dVar.d)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            this.a = z2;
            if (!z || (((i2 = e9Var.r) != -1 && i2 < dVar.f) || ((i3 = e9Var.s) != -1 && i3 < dVar.g))) {
                z3 = false;
            } else {
                float f2 = e9Var.t;
                if ((f2 != -1.0f && f2 < dVar.h) || ((i4 = e9Var.i) != -1 && i4 < dVar.i)) {
                    z3 = false;
                }
            }
            this.c = z3;
            this.d = l6.a(i, false);
            this.f = e9Var.i;
            this.g = e9Var.b();
            while (i8 < dVar.m.size()) {
                String str = e9Var.m;
                if (str != null && str.equals(dVar.m.get(i8))) {
                    this.h = i8;
                }
                i8++;
            }
            i8 = Integer.MAX_VALUE;
            this.h = i8;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(h hVar) {
            vg vgVarC = (this.a && this.d) ? l6.g : l6.g.c();
            return y3.e().a(this.d, hVar.d).a(this.a, hVar.a).a(this.c, hVar.c).a(Integer.valueOf(this.h), Integer.valueOf(hVar.h), vg.a().c()).a(Integer.valueOf(this.f), Integer.valueOf(hVar.f), this.b.v ? l6.g.c() : l6.h).a(Integer.valueOf(this.g), Integer.valueOf(hVar.g), vgVarC).a(Integer.valueOf(this.f), Integer.valueOf(hVar.f), vgVarC).d();
        }
    }

    protected static final class b implements Comparable {
        public final boolean a;
        private final String b;
        private final d c;
        private final boolean d;
        private final int f;
        private final int g;
        private final int h;
        private final int i;
        private final int j;
        private final boolean k;
        private final int l;
        private final int m;
        private final int n;
        private final int o;

        public b(e9 e9Var, d dVar, int i) {
            int i2;
            int iA;
            int iA2;
            this.c = dVar;
            this.b = l6.a(e9Var.c);
            this.d = l6.a(i, false);
            int i3 = 0;
            while (true) {
                i2 = Integer.MAX_VALUE;
                if (i3 >= dVar.n.size()) {
                    i3 = Integer.MAX_VALUE;
                    iA = 0;
                    break;
                } else {
                    iA = l6.a(e9Var, (String) dVar.n.get(i3), false);
                    if (iA > 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.g = i3;
            this.f = iA;
            this.h = Integer.bitCount(e9Var.f & dVar.o);
            boolean z = true;
            this.k = (e9Var.d & 1) != 0;
            int i4 = e9Var.z;
            this.l = i4;
            this.m = e9Var.A;
            int i5 = e9Var.i;
            this.n = i5;
            if ((i5 != -1 && i5 > dVar.q) || (i4 != -1 && i4 > dVar.p)) {
                z = false;
            }
            this.a = z;
            String[] strArrE = xp.e();
            int i6 = 0;
            while (true) {
                if (i6 >= strArrE.length) {
                    i6 = Integer.MAX_VALUE;
                    iA2 = 0;
                    break;
                } else {
                    iA2 = l6.a(e9Var, strArrE[i6], false);
                    if (iA2 > 0) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
            this.i = i6;
            this.j = iA2;
            for (int i7 = 0; i7 < dVar.r.size(); i7++) {
                String str = e9Var.m;
                if (str != null && str.equals(dVar.r.get(i7))) {
                    i2 = i7;
                    break;
                }
            }
            this.o = i2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            vg vgVarC = (this.a && this.d) ? l6.g : l6.g.c();
            y3 y3VarA = y3.e().a(this.d, bVar.d).a(Integer.valueOf(this.g), Integer.valueOf(bVar.g), vg.a().c()).a(this.f, bVar.f).a(this.h, bVar.h).a(this.a, bVar.a).a(Integer.valueOf(this.o), Integer.valueOf(bVar.o), vg.a().c()).a(Integer.valueOf(this.n), Integer.valueOf(bVar.n), this.c.v ? l6.g.c() : l6.h).a(this.k, bVar.k).a(Integer.valueOf(this.i), Integer.valueOf(bVar.i), vg.a().c()).a(this.j, bVar.j).a(Integer.valueOf(this.l), Integer.valueOf(bVar.l), vgVarC).a(Integer.valueOf(this.m), Integer.valueOf(bVar.m), vgVarC);
            Integer numValueOf = Integer.valueOf(this.n);
            Integer numValueOf2 = Integer.valueOf(bVar.n);
            if (!xp.a((Object) this.b, (Object) bVar.b)) {
                vgVarC = l6.h;
            }
            return y3VarA.a(numValueOf, numValueOf2, vgVarC).d();
        }
    }

    protected static final class g implements Comparable {
        public final boolean a;
        private final boolean b;
        private final boolean c;
        private final boolean d;
        private final int f;
        private final int g;
        private final int h;
        private final int i;
        private final boolean j;

        public g(e9 e9Var, d dVar, int i, String str) {
            db dbVarA;
            int iA;
            boolean z = false;
            this.b = l6.a(i, false);
            int i2 = e9Var.d & (~dVar.B);
            this.c = (i2 & 1) != 0;
            this.d = (i2 & 2) != 0;
            if (dVar.s.isEmpty()) {
                dbVarA = db.a("");
            } else {
                dbVarA = dVar.s;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= dbVarA.size()) {
                    i3 = Integer.MAX_VALUE;
                    iA = 0;
                    break;
                } else {
                    iA = l6.a(e9Var, (String) dbVarA.get(i3), dVar.u);
                    if (iA > 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.f = i3;
            this.g = iA;
            int iBitCount = Integer.bitCount(e9Var.f & dVar.t);
            this.h = iBitCount;
            this.j = (e9Var.f & 1088) != 0;
            int iA2 = l6.a(e9Var, str, l6.a(str) == null);
            this.i = iA2;
            if (iA > 0 || ((dVar.s.isEmpty() && iBitCount > 0) || this.c || (this.d && iA2 > 0))) {
                z = true;
            }
            this.a = z;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(g gVar) {
            y3 y3VarA = y3.e().a(this.b, gVar.b).a(Integer.valueOf(this.f), Integer.valueOf(gVar.f), vg.a().c()).a(this.g, gVar.g).a(this.h, gVar.h).a(this.c, gVar.c).a(Boolean.valueOf(this.d), Boolean.valueOf(gVar.d), this.g == 0 ? vg.a() : vg.a().c()).a(this.i, gVar.i);
            if (this.h == 0) {
                y3VarA = y3VarA.b(this.j, gVar.j);
            }
            return y3VarA.d();
        }
    }

    protected static final class c implements Comparable {
        private final boolean a;
        private final boolean b;

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return y3.e().a(this.b, cVar.b).a(this.a, cVar.a).d();
        }

        public c(e9 e9Var, int i) {
            this.a = (e9Var.d & 1) != 0;
            this.b = l6.a(i, false);
        }
    }

    public l6(Context context, g8.b bVar) {
        this(d.a(context), bVar);
    }

    protected g8.a b(po poVar, int[][] iArr, int i, d dVar, boolean z) {
        g8.a aVarA = (dVar.w || dVar.v || !z) ? null : a(poVar, iArr, i, dVar);
        return aVarA == null ? a(poVar, iArr, dVar) : aVarA;
    }

    private static int[] a(oo ooVar, int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3) {
        e9 e9VarA = ooVar.a(i);
        int[] iArr2 = new int[ooVar.a];
        int i3 = 0;
        for (int i4 = 0; i4 < ooVar.a; i4++) {
            if (i4 == i || a(ooVar.a(i4), iArr[i4], e9VarA, i2, z, z2, z3)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return Arrays.copyOf(iArr2, i3);
    }

    public l6(d dVar, g8.b bVar) {
        this.d = bVar;
        this.e = new AtomicReference(dVar);
    }

    private static int[] a(oo ooVar, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2) {
        String str;
        int i12;
        int i13;
        HashSet hashSet;
        if (ooVar.a < 2) {
            return f;
        }
        List listA = a(ooVar, i10, i11, z2);
        if (listA.size() < 2) {
            return f;
        }
        if (z) {
            str = null;
        } else {
            HashSet hashSet2 = new HashSet();
            String str2 = null;
            int i14 = 0;
            int i15 = 0;
            while (i15 < listA.size()) {
                String str3 = ooVar.a(((Integer) listA.get(i15)).intValue()).m;
                if (hashSet2.add(str3)) {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                    int iB = b(ooVar, iArr, i, str3, i2, i3, i4, i5, i6, i7, i8, i9, listA);
                    if (iB > i12) {
                        i14 = iB;
                        str2 = str3;
                    }
                    i15 = i13 + 1;
                    hashSet2 = hashSet;
                } else {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                }
                i14 = i12;
                i15 = i13 + 1;
                hashSet2 = hashSet;
            }
            str = str2;
        }
        a(ooVar, iArr, i, str, i2, i3, i4, i5, i6, i7, i8, i9, listA);
        return listA.size() < 2 ? f : tb.a(listA);
    }

    protected static int a(e9 e9Var, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(e9Var.c)) {
            return 4;
        }
        String strA = a(str);
        String strA2 = a(e9Var.c);
        if (strA2 == null || strA == null) {
            return (z && strA2 == null) ? 1 : 0;
        }
        if (strA2.startsWith(strA) || strA.startsWith(strA2)) {
            return 3;
        }
        return xp.b(strA2, "-")[0].equals(xp.b(strA, "-")[0]) ? 2 : 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0010  */
    private static Point a(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            if ((i3 > i4) == (i > i2)) {
                i2 = i;
                i = i2;
            }
        } else {
            i2 = i;
            i = i2;
        }
        int i5 = i3 * i;
        int i6 = i4 * i2;
        if (i5 >= i6) {
            return new Point(i2, xp.a(i6, i3));
        }
        return new Point(xp.a(i5, i4), i);
    }

    protected static boolean a(int i, boolean z) {
        int iD = ri.CC.d(i);
        return iD == 4 || (z && iD == 3);
    }

    private static boolean a(e9 e9Var, int i, e9 e9Var2, int i2, boolean z, boolean z2, boolean z3) {
        int i3;
        int i4;
        String str;
        int i5;
        if (!a(i, false) || (i3 = e9Var.i) == -1 || i3 > i2) {
            return false;
        }
        if (!z3 && ((i5 = e9Var.z) == -1 || i5 != e9Var2.z)) {
            return false;
        }
        if (z || ((str = e9Var.m) != null && TextUtils.equals(str, e9Var2.m))) {
            return z2 || ((i4 = e9Var.A) != -1 && i4 == e9Var2.A);
        }
        return false;
    }

    private static boolean a(e9 e9Var, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int i11;
        if ((e9Var.f & 16384) != 0 || !a(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !xp.a((Object) e9Var.m, (Object) str)) {
            return false;
        }
        int i12 = e9Var.r;
        if (i12 != -1 && (i7 > i12 || i12 > i3)) {
            return false;
        }
        int i13 = e9Var.s;
        if (i13 != -1 && (i8 > i13 || i13 > i4)) {
            return false;
        }
        float f2 = e9Var.t;
        return (f2 == -1.0f || (((float) i9) <= f2 && f2 <= ((float) i5))) && (i11 = e9Var.i) != -1 && i10 <= i11 && i11 <= i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    private static void a(sc.a aVar, int[][][] iArr, si[] siVarArr, g8[] g8VarArr) {
        boolean z;
        boolean z2 = false;
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            if (i >= aVar.a()) {
                z = true;
                break;
            }
            int iA = aVar.a(i);
            g8 g8Var = g8VarArr[i];
            if ((iA == 1 || iA == 2) && g8Var != null && a(iArr[i], aVar.b(i), g8Var)) {
                if (iA == 1) {
                    if (i3 != -1) {
                        z = false;
                        break;
                    }
                    i3 = i;
                } else {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i;
                }
            }
            i++;
        }
        if (i3 != -1 && i2 != -1) {
            z2 = true;
        }
        if (z && z2) {
            si siVar = new si(true);
            siVarArr[i3] = siVar;
            siVarArr[i2] = siVar;
        }
    }

    protected static String a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private static boolean a(int[][] iArr, po poVar, g8 g8Var) {
        if (g8Var == null) {
            return false;
        }
        int iA = poVar.a(g8Var.a());
        for (int i = 0; i < g8Var.b(); i++) {
            if (ri.CC.c(iArr[iA][g8Var.b(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private static g8.a a(po poVar, int[][] iArr, int i, d dVar) {
        d dVar2 = dVar;
        int i2 = dVar2.E ? 24 : 16;
        boolean z = dVar2.D && (i & i2) != 0;
        int i3 = 0;
        while (i3 < poVar.a) {
            oo ooVarA = poVar.a(i3);
            int i4 = i3;
            int[] iArrA = a(ooVarA, iArr[i3], z, i2, dVar2.a, dVar2.b, dVar2.c, dVar2.d, dVar2.f, dVar2.g, dVar2.h, dVar2.i, dVar2.j, dVar2.k, dVar2.l);
            if (iArrA.length > 0) {
                return new g8.a(ooVarA, iArrA);
            }
            i3 = i4 + 1;
            dVar2 = dVar;
        }
        return null;
    }

    protected g8.a[] a(sc.a aVar, int[][][] iArr, int[] iArr2, d dVar) {
        int i;
        String str;
        int i2;
        String str2;
        b bVar;
        int i3;
        int iA = aVar.a();
        g8.a[] aVarArr = new g8.a[iA];
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 1;
            if (i5 >= iA) {
                break;
            }
            if (2 == aVar.a(i5)) {
                if (!z) {
                    g8.a aVarB = b(aVar.b(i5), iArr[i5], iArr2[i5], dVar, true);
                    aVarArr[i5] = aVarB;
                    z = aVarB != null;
                }
                i6 |= aVar.b(i5).a <= 0 ? 0 : 1;
            }
            i5++;
        }
        String str3 = null;
        b bVar2 = null;
        int i7 = -1;
        int i8 = 0;
        while (i8 < iA) {
            if (i == aVar.a(i8)) {
                i2 = i7;
                str2 = str3;
                bVar = bVar2;
                i3 = i8;
                Pair pairA = a(aVar.b(i8), iArr[i8], iArr2[i8], dVar, dVar.L || i6 == 0);
                if (pairA != null && (bVar == null || ((b) pairA.second).compareTo(bVar) > 0)) {
                    if (i2 != -1) {
                        aVarArr[i2] = null;
                    }
                    g8.a aVar2 = (g8.a) pairA.first;
                    aVarArr[i3] = aVar2;
                    str3 = aVar2.a.a(aVar2.b[0]).c;
                    bVar2 = (b) pairA.second;
                    i7 = i3;
                }
                i8 = i3 + 1;
                i = 1;
            } else {
                i2 = i7;
                str2 = str3;
                bVar = bVar2;
                i3 = i8;
            }
            i7 = i2;
            bVar2 = bVar;
            str3 = str2;
            i8 = i3 + 1;
            i = 1;
        }
        String str4 = str3;
        g gVar = null;
        int i9 = -1;
        while (i4 < iA) {
            int iA2 = aVar.a(i4);
            if (iA2 == 1) {
                str = str4;
            } else if (iA2 == 2) {
                str = str4;
            } else if (iA2 != 3) {
                aVarArr[i4] = a(iA2, aVar.b(i4), iArr[i4], dVar);
                str = str4;
            } else {
                str = str4;
                Pair pairA2 = a(aVar.b(i4), iArr[i4], dVar, str);
                if (pairA2 != null && (gVar == null || ((g) pairA2.second).compareTo(gVar) > 0)) {
                    if (i9 != -1) {
                        aVarArr[i9] = null;
                    }
                    aVarArr[i4] = (g8.a) pairA2.first;
                    gVar = (g) pairA2.second;
                    i9 = i4;
                }
            }
            i4++;
            str4 = str;
        }
        return aVarArr;
    }

    protected Pair a(po poVar, int[][] iArr, int i, d dVar, boolean z) {
        g8.a aVar = null;
        b bVar = null;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < poVar.a; i4++) {
            oo ooVarA = poVar.a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < ooVarA.a; i5++) {
                if (a(iArr2[i5], dVar.J)) {
                    b bVar2 = new b(ooVarA.a(i5), dVar, iArr2[i5]);
                    if ((bVar2.a || dVar.F) && (bVar == null || bVar2.compareTo(bVar) > 0)) {
                        i2 = i4;
                        i3 = i5;
                        bVar = bVar2;
                    }
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        oo ooVarA2 = poVar.a(i2);
        if (!dVar.w && !dVar.v && z) {
            int[] iArrA = a(ooVarA2, iArr[i2], i3, dVar.q, dVar.G, dVar.H, dVar.I);
            if (iArrA.length > 1) {
                aVar = new g8.a(ooVarA2, iArrA);
            }
        }
        if (aVar == null) {
            aVar = new g8.a(ooVarA2, i3);
        }
        return Pair.create(aVar, (b) b1.a(bVar));
    }

    private static g8.a a(po poVar, int[][] iArr, d dVar) {
        int i = -1;
        oo ooVar = null;
        h hVar = null;
        for (int i2 = 0; i2 < poVar.a; i2++) {
            oo ooVarA = poVar.a(i2);
            List listA = a(ooVarA, dVar.j, dVar.k, dVar.l);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < ooVarA.a; i3++) {
                e9 e9VarA = ooVarA.a(i3);
                if ((e9VarA.f & 16384) == 0 && a(iArr2[i3], dVar.J)) {
                    h hVar2 = new h(e9VarA, dVar, iArr2[i3], listA.contains(Integer.valueOf(i3)));
                    if ((hVar2.a || dVar.C) && (hVar == null || hVar2.compareTo(hVar) > 0)) {
                        ooVar = ooVarA;
                        i = i3;
                        hVar = hVar2;
                    }
                }
            }
        }
        if (ooVar == null) {
            return null;
        }
        return new g8.a(ooVar, i);
    }

    protected g8.a a(int i, po poVar, int[][] iArr, d dVar) {
        oo ooVar = null;
        c cVar = null;
        int i2 = 0;
        for (int i3 = 0; i3 < poVar.a; i3++) {
            oo ooVarA = poVar.a(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < ooVarA.a; i4++) {
                if (a(iArr2[i4], dVar.J)) {
                    c cVar2 = new c(ooVarA.a(i4), iArr2[i4]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        ooVar = ooVarA;
                        i2 = i4;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (ooVar == null) {
            return null;
        }
        return new g8.a(ooVar, i2);
    }

    protected Pair a(po poVar, int[][] iArr, d dVar, String str) {
        int i = -1;
        oo ooVar = null;
        g gVar = null;
        for (int i2 = 0; i2 < poVar.a; i2++) {
            oo ooVarA = poVar.a(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < ooVarA.a; i3++) {
                if (a(iArr2[i3], dVar.J)) {
                    g gVar2 = new g(ooVarA.a(i3), dVar, iArr2[i3], str);
                    if (gVar2.a && (gVar == null || gVar2.compareTo(gVar) > 0)) {
                        ooVar = ooVarA;
                        i = i3;
                        gVar = gVar2;
                    }
                }
            }
        }
        if (ooVar == null) {
            return null;
        }
        return Pair.create(new g8.a(ooVar, i), (g) b1.a(gVar));
    }

    @Override // com.applovin.impl.sc
    protected final Pair a(sc.a aVar, int[][][] iArr, int[] iArr2, ae.a aVar2, fo foVar) {
        d dVar = (d) this.e.get();
        int iA = aVar.a();
        g8.a[] aVarArrA = a(aVar, iArr, iArr2, dVar);
        int i = 0;
        while (true) {
            if (i >= iA) {
                break;
            }
            int iA2 = aVar.a(i);
            if (!dVar.d(i) && !dVar.x.contains(Integer.valueOf(iA2))) {
                po poVarB = aVar.b(i);
                if (dVar.b(i, poVarB)) {
                    f fVarA = dVar.a(i, poVarB);
                    aVarArrA[i] = fVarA != null ? new g8.a(poVarB.a(fVarA.a), fVarA.b, fVarA.d) : null;
                }
            } else {
                aVarArrA[i] = null;
            }
            i++;
        }
        g8[] g8VarArrA = this.d.a(aVarArrA, a(), aVar2, foVar);
        si[] siVarArr = new si[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            siVarArr[i2] = (dVar.d(i2) || dVar.x.contains(Integer.valueOf(aVar.a(i2))) || (aVar.a(i2) != -2 && g8VarArrA[i2] == null)) ? null : si.b;
        }
        if (dVar.K) {
            a(aVar, iArr, siVarArr, g8VarArrA);
        }
        return Pair.create(siVarArr, g8VarArrA);
    }

    private static List a(oo ooVar, int i, int i2, boolean z) {
        int i3;
        ArrayList arrayList = new ArrayList(ooVar.a);
        for (int i4 = 0; i4 < ooVar.a; i4++) {
            arrayList.add(Integer.valueOf(i4));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < ooVar.a; i6++) {
                e9 e9VarA = ooVar.a(i6);
                int i7 = e9VarA.r;
                if (i7 > 0 && (i3 = e9VarA.s) > 0) {
                    Point pointA = a(z, i, i2, i7, i3);
                    int i8 = e9VarA.r;
                    int i9 = e9VarA.s;
                    int i10 = i8 * i9;
                    if (i8 >= ((int) (pointA.x * 0.98f)) && i9 >= ((int) (pointA.y * 0.98f)) && i10 < i5) {
                        i5 = i10;
                    }
                }
            }
            if (i5 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int iB = ooVar.a(((Integer) arrayList.get(size)).intValue()).b();
                    if (iB == -1 || iB > i5) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }
}

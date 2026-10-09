package com.applovin.impl;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.work.impl.Scheduler;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public final class y2 extends a3 {
    private final int h;
    private final int i;
    private final int j;
    private final long k;
    private List n;
    private List o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private byte t;
    private byte u;
    private boolean w;
    private long x;
    private static final int[] y = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, IronSourceConstants.INTERSTITIAL_DAILY_CAPPED, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] C = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] D = {193, com.ironsource.g3.c.b.INSTANCE_LOAD, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, Scheduler.MAX_GREEDY_SCHEDULER_LIMIT, com.ironsource.g3.c.b.INSTANCE_LOAD_SUCCESS, com.ironsource.g3.c.b.INSTANCE_LOAD_FAILED, 235, com.ironsource.g3.c.b.INSTANCE_NOT_FOUND_IN_LOAD, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] E = {195, 227, com.ironsource.g3.c.b.INSTANCE_AUCTION_SUCCESS, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final ah g = new ah();
    private final ArrayList l = new ArrayList();
    private a m = new a(0, 4);
    private int v = 0;

    private static int b(byte b) {
        return (b >> 3) & 1;
    }

    private static boolean c(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    private static boolean d(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    private static boolean e(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    private static boolean f(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    private static boolean g(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    private static boolean h(byte b) {
        return (b & 224) == 0;
    }

    private static boolean h(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    private static boolean i(byte b) {
        return (b & 240) == 16;
    }

    private static boolean j(byte b) {
        return (b & 247) == 20;
    }

    private static boolean k(byte b) {
        return 1 <= b && b <= 15;
    }

    @Override // com.applovin.impl.a3, com.applovin.impl.l5
    public void a() {
    }

    @Override // com.applovin.impl.a3
    /* JADX INFO: renamed from: f */
    public /* bridge */ /* synthetic */ rl d() {
        return super.d();
    }

    public y2(String str, int i, long j) {
        this.k = j > 0 ? j * 1000 : -9223372036854775807L;
        this.h = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.j = 0;
            this.i = 0;
        } else if (i == 2) {
            this.j = 1;
            this.i = 0;
        } else if (i == 3) {
            this.j = 0;
            this.i = 1;
        } else if (i != 4) {
            oc.d("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.j = 0;
            this.i = 0;
        } else {
            this.j = 1;
            this.i = 1;
        }
        a(0);
        m();
        this.w = true;
        this.x = -9223372036854775807L;
    }

    @Override // com.applovin.impl.a3, com.applovin.impl.l5
    public void b() {
        super.b();
        this.n = null;
        this.o = null;
        a(0);
        b(4);
        m();
        this.r = false;
        this.s = false;
        this.t = (byte) 0;
        this.u = (byte) 0;
        this.v = 0;
        this.w = true;
        this.x = -9223372036854775807L;
    }

    @Override // com.applovin.impl.a3, com.applovin.impl.l5
    /* JADX INFO: renamed from: g */
    public sl c() {
        sl slVarH;
        sl slVarC = super.c();
        if (slVarC != null) {
            return slVarC;
        }
        if (!n() || (slVarH = h()) == null) {
            return null;
        }
        this.n = Collections.emptyList();
        this.x = -9223372036854775807L;
        slVarH.a(i(), e(), Long.MAX_VALUE);
        return slVarH;
    }

    @Override // com.applovin.impl.a3
    protected boolean j() {
        return this.n != this.o;
    }

    @Override // com.applovin.impl.a3
    protected nl e() {
        List list = this.n;
        this.o = list;
        return new b3((List) b1.a(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    @Override // com.applovin.impl.a3
    protected void a(rl rlVar) {
        boolean z2;
        ByteBuffer byteBuffer = (ByteBuffer) b1.a(rlVar.c);
        this.g.a(byteBuffer.array(), byteBuffer.limit());
        boolean z3 = false;
        while (true) {
            int iA = this.g.a();
            int i = this.h;
            if (iA < i) {
                break;
            }
            byte bW = i == 2 ? (byte) -4 : (byte) this.g.w();
            int iW = this.g.w();
            int iW2 = this.g.w();
            if ((bW & 2) == 0 && (bW & 1) == this.i) {
                byte b = (byte) (iW & WorkQueueKt.MASK);
                byte b2 = (byte) (iW2 & WorkQueueKt.MASK);
                if (b != 0 || b2 != 0) {
                    boolean z4 = this.r;
                    if ((bW & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iW] && zArr[iW2]) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    this.r = z2;
                    if (!a(z2, b, b2)) {
                        if (this.r) {
                            i(b, b2);
                            if (this.w && l(b)) {
                                if (h(b)) {
                                    if (g(b, b2)) {
                                        this.m.a(e(b2));
                                    } else if (c(b, b2)) {
                                        this.m.a();
                                        this.m.a(a(b, b2));
                                    } else if (d(b, b2)) {
                                        f(b2);
                                    } else if (f(b, b2)) {
                                        b(b, b2);
                                    } else if (!h(b, b2)) {
                                        if (e(b, b2)) {
                                            g(b2);
                                        }
                                    } else {
                                        this.m.f = b2 - 32;
                                    }
                                } else {
                                    this.m.a(a(b));
                                    if ((b2 & 224) != 0) {
                                        this.m.a(a(b2));
                                    }
                                }
                                z3 = true;
                            }
                        } else if (z4) {
                            m();
                            z3 = true;
                        }
                    }
                }
            }
        }
        if (z3) {
            int i2 = this.p;
            if (i2 == 1 || i2 == 3) {
                this.n = l();
                this.x = i();
            }
        }
    }

    private void f(byte b) {
        this.m.a(' ');
        this.m.a((b >> 1) & 7, (b & 1) == 1);
    }

    private List l() {
        int size = this.l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            a5 a5VarA = ((a) this.l.get(i)).a(Integer.MIN_VALUE);
            arrayList.add(a5VarA);
            if (a5VarA != null) {
                iMin = Math.min(iMin, a5VarA.j);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            a5 a5Var = (a5) arrayList.get(i2);
            if (a5Var != null) {
                if (a5Var.j != iMin) {
                    a5Var = (a5) b1.a(((a) this.l.get(i2)).a(iMin));
                }
                arrayList2.add(a5Var);
            }
        }
        return arrayList2;
    }

    private void m() {
        this.m.b(this.p);
        this.l.clear();
        this.l.add(this.m);
    }

    private void i(byte b, byte b2) {
        if (k(b)) {
            this.w = false;
            return;
        }
        if (j(b)) {
            if (b2 != 32 && b2 != 47) {
                switch (b2) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b2) {
                            case 42:
                            case 43:
                                this.w = false;
                                break;
                        }
                }
            }
            this.w = true;
        }
    }

    private static char d(byte b) {
        return (char) E[b & 31];
    }

    private static char c(byte b) {
        return (char) D[b & 31];
    }

    private static final class a {
        private final List a = new ArrayList();
        private final List b = new ArrayList();
        private final StringBuilder c = new StringBuilder();
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;

        public a(int i, int i2) {
            b(i);
            this.h = i2;
        }

        public void d() {
            this.b.add(b());
            this.c.setLength(0);
            this.a.clear();
            int iMin = Math.min(this.h, this.d);
            while (this.b.size() >= iMin) {
                this.b.remove(0);
            }
        }

        /* JADX INFO: renamed from: com.applovin.impl.y2$a$a, reason: collision with other inner class name */
        private static class C0044a {
            public final int a;
            public final boolean b;
            public int c;

            public C0044a(int i, boolean z, int i2) {
                this.a = i;
                this.b = z;
                this.c = i2;
            }
        }

        public void b(int i) {
            this.g = i;
            this.a.clear();
            this.b.clear();
            this.c.setLength(0);
            this.d = 15;
            this.e = 0;
            this.f = 0;
        }

        public boolean c() {
            return this.a.isEmpty() && this.b.isEmpty() && this.c.length() == 0;
        }

        public void d(int i) {
            this.h = i;
        }

        public void a(char c) {
            if (this.c.length() < 32) {
                this.c.append(c);
            }
        }

        public void c(int i) {
            this.g = i;
        }

        private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        private SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.c);
            int length = spannableStringBuilder.length();
            int i = 0;
            int i2 = -1;
            int i3 = -1;
            int i4 = 0;
            int i5 = -1;
            boolean z = false;
            int i6 = -1;
            while (i < this.a.size()) {
                C0044a c0044a = (C0044a) this.a.get(i);
                boolean z2 = c0044a.b;
                int i7 = c0044a.a;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i6 = y2.A[i7];
                    }
                    z = z3;
                }
                int i8 = c0044a.c;
                i++;
                if (i8 != (i < this.a.size() ? ((C0044a) this.a.get(i)).c : length)) {
                    if (i2 != -1 && !z2) {
                        b(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z2) {
                        i2 = i8;
                    }
                    if (i3 != -1 && !z) {
                        a(spannableStringBuilder, i3, i8);
                        i3 = -1;
                    } else if (i3 == -1 && z) {
                        i3 = i8;
                    }
                    if (i6 != i5) {
                        a(spannableStringBuilder, i4, i8, i5);
                        i5 = i6;
                        i4 = i8;
                    }
                }
            }
            if (i2 != -1 && i2 != length) {
                b(spannableStringBuilder, i2, length);
            }
            if (i3 != -1 && i3 != length) {
                a(spannableStringBuilder, i3, length);
            }
            if (i4 != length) {
                a(spannableStringBuilder, i4, length, i5);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void a() {
            int length = this.c.length();
            if (length > 0) {
                this.c.delete(length - 1, length);
                for (int size = this.a.size() - 1; size >= 0; size--) {
                    C0044a c0044a = (C0044a) this.a.get(size);
                    int i = c0044a.c;
                    if (i != length) {
                        return;
                    }
                    c0044a.c = i - 1;
                }
            }
        }

        public a5 a(int i) {
            float f;
            int i2 = this.e + this.f;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.b.size(); i4++) {
                spannableStringBuilder.append(xp.a((CharSequence) this.b.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(xp.a(b(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                if (this.g != 2 || (Math.abs(i5) >= 3 && length >= 0)) {
                    i = (this.g != 2 || i5 <= 0) ? 0 : 2;
                } else {
                    i = 1;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i6 = this.d;
            if (i6 > 7) {
                i6 -= 17;
            } else if (this.g == 1) {
                i6 -= this.h - 1;
            }
            return new a5.b().a(spannableStringBuilder).b(Layout.Alignment.ALIGN_NORMAL).a(i6, 1).b(f).b(i).a();
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        public void a(int i, boolean z) {
            this.a.add(new C0044a(i, z, this.c.length()));
        }
    }

    private void b(byte b, byte b2) {
        int i = y[b & 7];
        if ((b2 & 32) != 0) {
            i++;
        }
        if (i != this.m.d) {
            if (this.p != 1 && !this.m.c()) {
                a aVar = new a(this.p, this.q);
                this.m = aVar;
                this.l.add(aVar);
            }
            this.m.d = i;
        }
        boolean z2 = (b2 & 16) == 16;
        boolean z3 = (b2 & 1) == 1;
        int i2 = (b2 >> 1) & 7;
        this.m.a(z2 ? 8 : i2, z3);
        if (z2) {
            this.m.e = z[i2];
        }
    }

    private void g(byte b) {
        if (b == 32) {
            a(2);
            return;
        }
        if (b != 41) {
            switch (b) {
                case 37:
                    a(1);
                    b(2);
                    break;
                case 38:
                    a(1);
                    b(3);
                    break;
                case 39:
                    a(1);
                    b(4);
                    break;
                default:
                    int i = this.p;
                    if (i != 0) {
                        if (b != 33) {
                            switch (b) {
                                case 44:
                                    this.n = Collections.emptyList();
                                    int i2 = this.p;
                                    if (i2 == 1 || i2 == 3) {
                                        m();
                                    }
                                    break;
                                case 45:
                                    if (i == 1 && !this.m.c()) {
                                        this.m.d();
                                        break;
                                    }
                                    break;
                                case 46:
                                    m();
                                    break;
                                case 47:
                                    this.n = l();
                                    m();
                                    break;
                            }
                        } else {
                            this.m.a();
                            break;
                        }
                    }
                    break;
            }
            return;
        }
        a(3);
    }

    @Override // com.applovin.impl.a3
    /* JADX INFO: renamed from: b */
    public /* bridge */ /* synthetic */ void a(rl rlVar) {
        super.a(rlVar);
    }

    private boolean n() {
        return (this.k == -9223372036854775807L || this.x == -9223372036854775807L || i() - this.x < this.k) ? false : true;
    }

    private static char e(byte b) {
        return (char) C[b & 15];
    }

    private boolean l(byte b) {
        if (h(b)) {
            this.v = b(b);
        }
        return this.v == this.j;
    }

    private static char a(byte b) {
        return (char) B[(b & 127) - 32];
    }

    private void b(int i) {
        this.q = i;
        this.m.d(i);
    }

    private static char a(byte b, byte b2) {
        if ((b & 1) == 0) {
            return c(b2);
        }
        return d(b2);
    }

    private boolean a(boolean z2, byte b, byte b2) {
        if (z2 && i(b)) {
            if (this.s && this.t == b && this.u == b2) {
                this.s = false;
                return true;
            }
            this.s = true;
            this.t = b;
            this.u = b2;
        } else {
            this.s = false;
        }
        return false;
    }

    private void a(int i) {
        int i2 = this.p;
        if (i2 == i) {
            return;
        }
        this.p = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.l.size(); i3++) {
                ((a) this.l.get(i3)).c(i);
            }
            return;
        }
        m();
        if (i2 == 3 || i == 1 || i == 0) {
            this.n = Collections.emptyList();
        }
    }

    @Override // com.applovin.impl.a3, com.applovin.impl.ol
    public /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }
}

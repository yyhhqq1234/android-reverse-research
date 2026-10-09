package com.applovin.impl;

import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class sd implements o2 {
    public static final sd g = new c().a();
    public static final o2.a h = new o2.a() { // from class: com.applovin.impl.sd$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return sd.a(bundle);
        }
    };
    public final String a;
    public final g b;
    public final f c;
    public final ud d;
    public final d f;

    public static final class b {
    }

    public static final class c {
        private String a;
        private Uri b;
        private String c;
        private long d;
        private long e;
        private boolean f;
        private boolean g;
        private boolean h;
        private e.a i;
        private List j;
        private String k;
        private List l;
        private Object m;
        private ud n;
        private f.a o;

        public c() {
            this.e = Long.MIN_VALUE;
            this.i = new e.a();
            this.j = Collections.emptyList();
            this.l = Collections.emptyList();
            this.o = new f.a();
        }

        public c b(String str) {
            this.a = (String) b1.a((Object) str);
            return this;
        }

        private c(sd sdVar) {
            e.a aVar;
            this();
            d dVar = sdVar.f;
            this.e = dVar.b;
            this.f = dVar.c;
            this.g = dVar.d;
            this.d = dVar.a;
            this.h = dVar.f;
            this.a = sdVar.a;
            this.n = sdVar.d;
            this.o = sdVar.c.a();
            g gVar = sdVar.b;
            if (gVar != null) {
                this.k = gVar.e;
                this.c = gVar.b;
                this.b = gVar.a;
                this.j = gVar.d;
                this.l = gVar.f;
                this.m = gVar.g;
                e eVar = gVar.c;
                if (eVar != null) {
                    aVar = eVar.a();
                } else {
                    aVar = new e.a();
                }
                this.i = aVar;
            }
        }

        public sd a() {
            g gVar;
            b1.b(this.i.b == null || this.i.a != null);
            Uri uri = this.b;
            if (uri != null) {
                gVar = new g(uri, this.c, this.i.a != null ? this.i.a() : null, null, this.j, this.k, this.l, this.m);
            } else {
                gVar = null;
            }
            String str = this.a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            d dVar = new d(this.d, this.e, this.f, this.g, this.h);
            f fVarA = this.o.a();
            ud udVar = this.n;
            if (udVar == null) {
                udVar = ud.H;
            }
            return new sd(str2, dVar, gVar, fVarA, udVar);
        }

        public c a(String str) {
            this.k = str;
            return this;
        }

        public c a(Object obj) {
            this.m = obj;
            return this;
        }

        public c a(Uri uri) {
            this.b = uri;
            return this;
        }
    }

    public static final class e {
        public final UUID a;
        public final Uri b;
        public final fb c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        public final db g;
        private final byte[] h;

        public a a() {
            return new a();
        }

        public static final class a {
            private UUID a;
            private Uri b;
            private fb c;
            private boolean d;
            private boolean e;
            private boolean f;
            private db g;
            private byte[] h;

            public e a() {
                return new e(this);
            }

            private a() {
                this.c = fb.h();
                this.g = db.h();
            }

            private a(e eVar) {
                this.a = eVar.a;
                this.b = eVar.b;
                this.c = eVar.c;
                this.d = eVar.d;
                this.e = eVar.e;
                this.f = eVar.f;
                this.g = eVar.g;
                this.h = eVar.h;
            }
        }

        private e(a aVar) {
            b1.b((aVar.f && aVar.b == null) ? false : true);
            this.a = (UUID) b1.a(aVar.a);
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.f = aVar.f;
            this.e = aVar.e;
            this.g = aVar.g;
            this.h = aVar.h != null ? Arrays.copyOf(aVar.h, aVar.h.length) : null;
        }

        public byte[] b() {
            byte[] bArr = this.h;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.a.equals(eVar.a) && xp.a(this.b, eVar.b) && xp.a(this.c, eVar.c) && this.d == eVar.d && this.f == eVar.f && this.e == eVar.e && this.g.equals(eVar.g) && Arrays.equals(this.h, eVar.h);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Uri uri = this.b;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + (this.d ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + this.g.hashCode()) * 31) + Arrays.hashCode(this.h);
        }
    }

    public static final class g {
        public final Uri a;
        public final String b;
        public final e c;
        public final List d;
        public final String e;
        public final List f;
        public final Object g;

        private g(Uri uri, String str, e eVar, b bVar, List list, String str2, List list2, Object obj) {
            this.a = uri;
            this.b = str;
            this.c = eVar;
            this.d = list;
            this.e = str2;
            this.f = list2;
            this.g = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a.equals(gVar.a) && xp.a((Object) this.b, (Object) gVar.b) && xp.a(this.c, gVar.c) && xp.a((Object) null, (Object) null) && this.d.equals(gVar.d) && xp.a((Object) this.e, (Object) gVar.e) && this.f.equals(gVar.f) && xp.a(this.g, gVar.g);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            e eVar = this.c;
            int iHashCode3 = (((iHashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 961) + this.d.hashCode()) * 31;
            String str2 = this.e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f.hashCode()) * 31;
            Object obj = this.g;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static final class f implements o2 {
        public static final f g = new a().a();
        public static final o2.a h = new o2.a() { // from class: com.applovin.impl.sd$f$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.o2.a
            public final o2 a(Bundle bundle) {
                return sd.f.a(bundle);
            }
        };
        public final long a;
        public final long b;
        public final long c;
        public final float d;
        public final float f;

        public static final class a {
            private long a;
            private long b;
            private long c;
            private float d;
            private float e;

            public f a() {
                return new f(this);
            }

            public a() {
                this.a = -9223372036854775807L;
                this.b = -9223372036854775807L;
                this.c = -9223372036854775807L;
                this.d = -3.4028235E38f;
                this.e = -3.4028235E38f;
            }

            private a(f fVar) {
                this.a = fVar.a;
                this.b = fVar.b;
                this.c = fVar.c;
                this.d = fVar.d;
                this.e = fVar.f;
            }
        }

        public f(long j, long j2, long j3, float f, float f2) {
            this.a = j;
            this.b = j2;
            this.c = j3;
            this.d = f;
            this.f = f2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b && this.c == fVar.c && this.d == fVar.d && this.f == fVar.f;
        }

        public int hashCode() {
            long j = this.a;
            long j2 = this.b;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.c;
            int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            float f = this.d;
            int iFloatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f2 = this.f;
            return iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public a a() {
            return new a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ f a(Bundle bundle) {
            return new f(bundle.getLong(a(0), -9223372036854775807L), bundle.getLong(a(1), -9223372036854775807L), bundle.getLong(a(2), -9223372036854775807L), bundle.getFloat(a(3), -3.4028235E38f), bundle.getFloat(a(4), -3.4028235E38f));
        }

        private f(a aVar) {
            this(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e);
        }
    }

    public static final class d implements o2 {
        public static final o2.a g = new o2.a() { // from class: com.applovin.impl.sd$d$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.o2.a
            public final o2 a(Bundle bundle) {
                return sd.d.a(bundle);
            }
        };
        public final long a;
        public final long b;
        public final boolean c;
        public final boolean d;
        public final boolean f;

        private d(long j, long j2, boolean z, boolean z2, boolean z3) {
            this.a = j;
            this.b = j2;
            this.c = z;
            this.d = z2;
            this.f = z3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b && this.c == dVar.c && this.d == dVar.d && this.f == dVar.f;
        }

        public int hashCode() {
            long j = this.a;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.b;
            return ((((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f ? 1 : 0);
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d a(Bundle bundle) {
            return new d(bundle.getLong(a(0), 0L), bundle.getLong(a(1), Long.MIN_VALUE), bundle.getBoolean(a(2), false), bundle.getBoolean(a(3), false), bundle.getBoolean(a(4), false));
        }
    }

    private sd(String str, d dVar, g gVar, f fVar, ud udVar) {
        this.a = str;
        this.b = gVar;
        this.c = fVar;
        this.d = udVar;
        this.f = dVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sd)) {
            return false;
        }
        sd sdVar = (sd) obj;
        return xp.a((Object) this.a, (Object) sdVar.a) && this.f.equals(sdVar.f) && xp.a(this.b, sdVar.b) && xp.a(this.c, sdVar.c) && xp.a(this.d, sdVar.d);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        g gVar = this.b;
        return ((((((iHashCode + (gVar != null ? gVar.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + this.f.hashCode()) * 31) + this.d.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static sd a(Bundle bundle) {
        f fVar;
        ud udVar;
        d dVar;
        String str = (String) b1.a((Object) bundle.getString(a(0), ""));
        Bundle bundle2 = bundle.getBundle(a(1));
        if (bundle2 == null) {
            fVar = f.g;
        } else {
            fVar = (f) f.h.a(bundle2);
        }
        f fVar2 = fVar;
        Bundle bundle3 = bundle.getBundle(a(2));
        if (bundle3 == null) {
            udVar = ud.H;
        } else {
            udVar = (ud) ud.I.a(bundle3);
        }
        ud udVar2 = udVar;
        Bundle bundle4 = bundle.getBundle(a(3));
        if (bundle4 == null) {
            dVar = new d(0L, Long.MIN_VALUE, false, false, false);
        } else {
            dVar = (d) d.g.a(bundle4);
        }
        return new sd(str, dVar, null, fVar2, udVar2);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public static sd a(Uri uri) {
        return new c().a(uri).a();
    }

    public c a() {
        return new c();
    }
}

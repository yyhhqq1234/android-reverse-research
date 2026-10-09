package com.applovin.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.applovin.exoplayer2.common.base.MoreObjects;
import java.util.Collection;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class uo implements o2 {
    public static final o2.a A;
    public static final uo y;
    public static final uo z;
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final boolean l;
    public final db m;
    public final db n;
    public final int o;
    public final int p;
    public final int q;
    public final db r;
    public final db s;
    public final int t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final hb x;

    static {
        uo uoVarA = new a().a();
        y = uoVarA;
        z = uoVarA;
        A = new o2.a() { // from class: com.applovin.impl.uo$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.o2.a
            public final o2 a(Bundle bundle) {
                return uo.a(bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ uo a(Bundle bundle) {
        return new a(bundle).a();
    }

    public static class a {
        private int a;
        private int b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;
        private boolean k;
        private db l;
        private db m;
        private int n;
        private int o;
        private int p;
        private db q;
        private db r;
        private int s;
        private boolean t;
        private boolean u;
        private boolean v;
        private hb w;

        private void b(Context context) {
            CaptioningManager captioningManager;
            if ((xp.a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.s = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.r = db.a(xp.a(locale));
                }
            }
        }

        public a() {
            this.a = Integer.MAX_VALUE;
            this.b = Integer.MAX_VALUE;
            this.c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            this.i = Integer.MAX_VALUE;
            this.j = Integer.MAX_VALUE;
            this.k = true;
            this.l = db.h();
            this.m = db.h();
            this.n = 0;
            this.o = Integer.MAX_VALUE;
            this.p = Integer.MAX_VALUE;
            this.q = db.h();
            this.r = db.h();
            this.s = 0;
            this.t = false;
            this.u = false;
            this.v = false;
            this.w = hb.h();
        }

        public a(Context context) {
            this();
            a(context);
            a(context, true);
        }

        protected a(Bundle bundle) {
            String strB = uo.b(6);
            uo uoVar = uo.y;
            this.a = bundle.getInt(strB, uoVar.a);
            this.b = bundle.getInt(uo.b(7), uoVar.b);
            this.c = bundle.getInt(uo.b(8), uoVar.c);
            this.d = bundle.getInt(uo.b(9), uoVar.d);
            this.e = bundle.getInt(uo.b(10), uoVar.f);
            this.f = bundle.getInt(uo.b(11), uoVar.g);
            this.g = bundle.getInt(uo.b(12), uoVar.h);
            this.h = bundle.getInt(uo.b(13), uoVar.i);
            this.i = bundle.getInt(uo.b(14), uoVar.j);
            this.j = bundle.getInt(uo.b(15), uoVar.k);
            this.k = bundle.getBoolean(uo.b(16), uoVar.l);
            this.l = db.c((String[]) MoreObjects.firstNonNull(bundle.getStringArray(uo.b(17)), new String[0]));
            this.m = a((String[]) MoreObjects.firstNonNull(bundle.getStringArray(uo.b(1)), new String[0]));
            this.n = bundle.getInt(uo.b(2), uoVar.o);
            this.o = bundle.getInt(uo.b(18), uoVar.p);
            this.p = bundle.getInt(uo.b(19), uoVar.q);
            this.q = db.c((String[]) MoreObjects.firstNonNull(bundle.getStringArray(uo.b(20)), new String[0]));
            this.r = a((String[]) MoreObjects.firstNonNull(bundle.getStringArray(uo.b(3)), new String[0]));
            this.s = bundle.getInt(uo.b(4), uoVar.t);
            this.t = bundle.getBoolean(uo.b(5), uoVar.u);
            this.u = bundle.getBoolean(uo.b(21), uoVar.v);
            this.v = bundle.getBoolean(uo.b(22), uoVar.w);
            this.w = hb.a((Collection) tb.a((int[]) MoreObjects.firstNonNull(bundle.getIntArray(uo.b(23)), new int[0])));
        }

        private static db a(String[] strArr) {
            db.a aVarF = db.f();
            for (String str : (String[]) b1.a(strArr)) {
                aVarF.b(xp.f((String) b1.a((Object) str)));
            }
            return aVarF.a();
        }

        public a a(int i, int i2, boolean z) {
            this.i = i;
            this.j = i2;
            this.k = z;
            return this;
        }

        public a a(Context context, boolean z) {
            Point pointC = xp.c(context);
            return a(pointC.x, pointC.y, z);
        }

        public a a(Context context) {
            if (xp.a >= 19) {
                b(context);
            }
            return this;
        }

        public uo a() {
            return new uo(this);
        }
    }

    protected uo(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        this.n = aVar.m;
        this.o = aVar.n;
        this.p = aVar.o;
        this.q = aVar.p;
        this.r = aVar.q;
        this.s = aVar.r;
        this.t = aVar.s;
        this.u = aVar.t;
        this.v = aVar.u;
        this.w = aVar.v;
        this.x = aVar.w;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        uo uoVar = (uo) obj;
        return this.a == uoVar.a && this.b == uoVar.b && this.c == uoVar.c && this.d == uoVar.d && this.f == uoVar.f && this.g == uoVar.g && this.h == uoVar.h && this.i == uoVar.i && this.l == uoVar.l && this.j == uoVar.j && this.k == uoVar.k && this.m.equals(uoVar.m) && this.n.equals(uoVar.n) && this.o == uoVar.o && this.p == uoVar.p && this.q == uoVar.q && this.r.equals(uoVar.r) && this.s.equals(uoVar.s) && this.t == uoVar.t && this.u == uoVar.u && this.v == uoVar.v && this.w == uoVar.w && this.x.equals(uoVar.x);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((this.a + 31) * 31) + this.b) * 31) + this.c) * 31) + this.d) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + (this.l ? 1 : 0)) * 31) + this.j) * 31) + this.k) * 31) + this.m.hashCode()) * 31) + this.n.hashCode()) * 31) + this.o) * 31) + this.p) * 31) + this.q) * 31) + this.r.hashCode()) * 31) + this.s.hashCode()) * 31) + this.t) * 31) + (this.u ? 1 : 0)) * 31) + (this.v ? 1 : 0)) * 31) + (this.w ? 1 : 0)) * 31) + this.x.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i) {
        return Integer.toString(i, 36);
    }
}

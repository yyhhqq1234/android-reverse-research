package com.applovin.impl;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class jh extends ek {
    private final ah o;
    private final ah p;
    private final a q;
    private Inflater r;

    public jh() {
        super("PgsDecoder");
        this.o = new ah();
        this.p = new ah();
        this.q = new a();
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) {
        this.o.a(bArr, i);
        a(this.o);
        this.q.b();
        ArrayList arrayList = new ArrayList();
        while (this.o.a() >= 3) {
            a5 a5VarA = a(this.o, this.q);
            if (a5VarA != null) {
                arrayList.add(a5VarA);
            }
        }
        return new kh(Collections.unmodifiableList(arrayList));
    }

    private static final class a {
        private final ah a = new ah();
        private final int[] b = new int[256];
        private boolean c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;

        /* JADX INFO: Access modifiers changed from: private */
        public void c(ah ahVar, int i) {
            if (i % 5 != 2) {
                return;
            }
            ahVar.g(2);
            Arrays.fill(this.b, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int iW = ahVar.w();
                int iW2 = ahVar.w();
                int iW3 = ahVar.w();
                int iW4 = ahVar.w();
                double d = iW2;
                double d2 = iW3 - 128;
                double d3 = iW4 - 128;
                this.b[iW] = (xp.a((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255) << 8) | (ahVar.w() << 24) | (xp.a((int) ((1.402d * d2) + d), 0, 255) << 16) | xp.a((int) (d + (d3 * 1.772d)), 0, 255);
            }
            this.c = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(ah ahVar, int i) {
            if (i < 19) {
                return;
            }
            this.d = ahVar.C();
            this.e = ahVar.C();
            ahVar.g(11);
            this.f = ahVar.C();
            this.g = ahVar.C();
        }

        public a5 a() {
            int iW;
            if (this.d == 0 || this.e == 0 || this.h == 0 || this.i == 0 || this.a.e() == 0 || this.a.d() != this.a.e() || !this.c) {
                return null;
            }
            this.a.f(0);
            int i = this.h * this.i;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int iW2 = this.a.w();
                if (iW2 != 0) {
                    iW = i2 + 1;
                    iArr[i2] = this.b[iW2];
                } else {
                    int iW3 = this.a.w();
                    if (iW3 != 0) {
                        iW = ((iW3 & 64) == 0 ? iW3 & 63 : ((iW3 & 63) << 8) | this.a.w()) + i2;
                        Arrays.fill(iArr, i2, iW, (iW3 & 128) == 0 ? 0 : this.b[this.a.w()]);
                    }
                }
                i2 = iW;
            }
            return new a5.b().a(Bitmap.createBitmap(iArr, this.h, this.i, Bitmap.Config.ARGB_8888)).b(this.f / this.d).b(0).a(this.g / this.e, 0).a(0).d(this.h / this.d).a(this.i / this.e).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ah ahVar, int i) {
            int iZ;
            if (i < 4) {
                return;
            }
            ahVar.g(3);
            int i2 = i - 4;
            if ((ahVar.w() & 128) != 0) {
                if (i2 < 7 || (iZ = ahVar.z()) < 4) {
                    return;
                }
                this.h = ahVar.C();
                this.i = ahVar.C();
                this.a.d(iZ - 4);
                i2 = i - 11;
            }
            int iD = this.a.d();
            int iE = this.a.e();
            if (iD >= iE || i2 <= 0) {
                return;
            }
            int iMin = Math.min(i2, iE - iD);
            ahVar.a(this.a.c(), iD, iMin);
            this.a.f(iD + iMin);
        }

        public void b() {
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.a.d(0);
            this.c = false;
        }
    }

    private void a(ah ahVar) {
        if (ahVar.a() <= 0 || ahVar.g() != 120) {
            return;
        }
        if (this.r == null) {
            this.r = new Inflater();
        }
        if (xp.a(ahVar, this.p, this.r)) {
            ahVar.a(this.p.c(), this.p.e());
        }
    }

    private static a5 a(ah ahVar, a aVar) {
        int iE = ahVar.e();
        int iW = ahVar.w();
        int iC = ahVar.C();
        int iD = ahVar.d() + iC;
        a5 a5VarA = null;
        if (iD > iE) {
            ahVar.f(iE);
            return null;
        }
        if (iW != 128) {
            switch (iW) {
                case 20:
                    aVar.c(ahVar, iC);
                    break;
                case 21:
                    aVar.a(ahVar, iC);
                    break;
                case 22:
                    aVar.b(ahVar, iC);
                    break;
            }
        } else {
            a5VarA = aVar.a();
            aVar.b();
        }
        ahVar.f(iD);
        return a5VarA;
    }
}

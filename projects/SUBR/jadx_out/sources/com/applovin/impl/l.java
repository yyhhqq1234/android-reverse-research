package com.applovin.impl;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l implements j8 {
    public static final n8 d = new n8() { // from class: com.applovin.impl.l$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return l.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private final m a = new m();
    private final ah b = new ah(16384);
    private boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] b() {
        return new j8[]{new l()};
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.a.a(l8Var, new dp.d(0, 1));
        l8Var.c();
        l8Var.a(new ij.b(-9223372036854775807L));
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) {
        int iA = k8Var.a(this.b.c(), 0, 16384);
        if (iA == -1) {
            return -1;
        }
        this.b.f(0);
        this.b.e(iA);
        if (!this.c) {
            this.a.a(0L, 4);
            this.c = true;
        }
        this.a.a(this.b);
        return 0;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        this.c = false;
        this.a.a();
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        ah ahVar = new ah(10);
        int i = 0;
        while (true) {
            k8Var.c(ahVar.c(), 0, 10);
            ahVar.f(0);
            if (ahVar.z() != 4801587) {
                break;
            }
            ahVar.g(3);
            int iV = ahVar.v();
            i += iV + 10;
            k8Var.c(iV);
        }
        k8Var.b();
        k8Var.c(i);
        int i2 = i;
        while (true) {
            int i3 = 0;
            while (true) {
                k8Var.c(ahVar.c(), 0, 7);
                ahVar.f(0);
                int iC = ahVar.C();
                if (iC == 44096 || iC == 44097) {
                    i3++;
                    if (i3 >= 4) {
                        return true;
                    }
                    int iA = n.a(ahVar.c(), iC);
                    if (iA == -1) {
                        return false;
                    }
                    k8Var.c(iA - 7);
                }
            }
            k8Var.b();
            i2++;
            if (i2 - i >= 8192) {
                return false;
            }
            k8Var.c(i2);
        }
    }
}

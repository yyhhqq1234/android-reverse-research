package org.json;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import org.json.mediationsdk.model.InterstitialPlacement;

/* JADX INFO: loaded from: classes3.dex */
public class ji {
    private static final int o = 0;
    private ArrayList<InterstitialPlacement> a;
    private e4 b;
    private int c;
    private boolean d;
    private int e;
    private int f;
    private l5 g;
    private boolean h;
    private boolean i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private InterstitialPlacement n;

    public ji() {
        this.a = new ArrayList<>();
        this.b = new e4();
        this.g = new l5();
    }

    public ji(int i, boolean z, int i2, e4 e4Var, l5 l5Var, int i3, boolean z2, boolean z3, long j, boolean z4, boolean z5, boolean z6) {
        this.a = new ArrayList<>();
        this.c = i;
        this.d = z;
        this.e = i2;
        this.b = e4Var;
        this.g = l5Var;
        this.k = z4;
        this.l = z5;
        this.f = i3;
        this.h = z2;
        this.i = z3;
        this.j = j;
        this.m = z6;
    }

    public InterstitialPlacement a() {
        for (InterstitialPlacement interstitialPlacement : this.a) {
            if (interstitialPlacement.getIsDefault()) {
                return interstitialPlacement;
            }
        }
        return this.n;
    }

    public InterstitialPlacement a(String str) {
        for (InterstitialPlacement interstitialPlacement : this.a) {
            if (interstitialPlacement.getCom.ironsource.oo.d java.lang.String().equals(str)) {
                return interstitialPlacement;
            }
        }
        return null;
    }

    public void a(InterstitialPlacement interstitialPlacement) {
        if (interstitialPlacement != null) {
            this.a.add(interstitialPlacement);
            if (this.n == null || interstitialPlacement.isPlacementId(0)) {
                this.n = interstitialPlacement;
            }
        }
    }

    public int b() {
        return this.f;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.e;
    }

    public long e() {
        return TimeUnit.SECONDS.toMillis(this.e);
    }

    public boolean f() {
        return this.d;
    }

    public l5 g() {
        return this.g;
    }

    public boolean h() {
        return this.i;
    }

    public long i() {
        return this.j;
    }

    public e4 j() {
        return this.b;
    }

    public boolean k() {
        return this.h;
    }

    public boolean l() {
        return this.k;
    }

    public boolean m() {
        return this.m;
    }

    public boolean n() {
        return this.l;
    }

    public String toString() {
        return "InterstitialConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.d + '}';
    }
}

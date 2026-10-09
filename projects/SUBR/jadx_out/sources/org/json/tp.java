package org.json;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public class tp {
    private static final int p = 0;
    private ArrayList<Placement> a;
    private e4 b;
    private int c;
    private boolean d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private Placement m;
    private l5 n;
    private boolean o;

    public tp() {
        this.a = new ArrayList<>();
        this.b = new e4();
    }

    public tp(int i, boolean z, int i2, int i3, e4 e4Var, l5 l5Var, int i4, boolean z2, boolean z3, long j, boolean z4, boolean z5, boolean z6) {
        this.a = new ArrayList<>();
        this.c = i;
        this.d = z;
        this.e = i2;
        this.b = e4Var;
        this.f = i3;
        this.n = l5Var;
        this.g = i4;
        this.o = z2;
        this.h = z3;
        this.i = j;
        this.j = z4;
        this.k = z5;
        this.l = z6;
    }

    public Placement a() {
        for (Placement placement : this.a) {
            if (placement.getIsDefault()) {
                return placement;
            }
        }
        return this.m;
    }

    public Placement a(String str) {
        for (Placement placement : this.a) {
            if (placement.getCom.ironsource.oo.d java.lang.String().equals(str)) {
                return placement;
            }
        }
        return null;
    }

    public void a(Placement placement) {
        if (placement != null) {
            this.a.add(placement);
            if (this.m == null || placement.isPlacementId(0)) {
                this.m = placement;
            }
        }
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.o;
    }

    public ArrayList<Placement> e() {
        return this.a;
    }

    public boolean f() {
        return this.j;
    }

    public int g() {
        return this.c;
    }

    public int h() {
        return this.e;
    }

    public long i() {
        return TimeUnit.SECONDS.toMillis(this.e);
    }

    public boolean j() {
        return this.d;
    }

    public l5 k() {
        return this.n;
    }

    public boolean l() {
        return this.h;
    }

    public long m() {
        return this.i;
    }

    public e4 n() {
        return this.b;
    }

    public boolean o() {
        return this.l;
    }

    public boolean p() {
        return this.k;
    }

    public String toString() {
        return "RewardedVideoConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.d + '}';
    }
}

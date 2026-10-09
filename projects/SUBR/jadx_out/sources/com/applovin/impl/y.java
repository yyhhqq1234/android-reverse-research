package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class y extends dc {
    private final z f;
    private final a0 g;
    private final ir h;
    private final String i;
    private final List j;
    private final List k;
    private final List l;

    enum a {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    private cc f() {
        return cc.a().d("AB Test Experiment Name").c(j().b()).a();
    }

    private cc g() {
        return cc.a().d("ID").c(this.f.c()).a();
    }

    private cc i() {
        return cc.a().d("Selected Network").c(this.h.b().a()).a();
    }

    @Override // com.applovin.impl.dc
    protected int b() {
        return a.COUNT.ordinal();
    }

    y(z zVar, a0 a0Var, ir irVar, Context context) {
        super(context);
        this.f = zVar;
        this.h = irVar;
        this.g = a0Var != null ? a0Var : zVar.f();
        this.i = a0Var != null ? a0Var.c() : zVar.d();
        this.j = h();
        this.k = e();
        this.l = l();
        notifyDataSetChanged();
    }

    public String k() {
        return this.i;
    }

    public a0 j() {
        return this.g;
    }

    @Override // com.applovin.impl.dc
    protected int d(int i) {
        if (i == a.INFO.ordinal()) {
            return this.j.size();
        }
        if (i == a.BIDDERS.ordinal()) {
            return this.k.size();
        }
        return this.l.size();
    }

    private cc d() {
        return cc.a().d("Ad Format").c(this.f.b()).a();
    }

    @Override // com.applovin.impl.dc
    protected List c(int i) {
        if (i == a.INFO.ordinal()) {
            return this.j;
        }
        if (i == a.BIDDERS.ordinal()) {
            return this.k;
        }
        return this.l;
    }

    private List h() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(g());
        arrayList.add(d());
        if (this.g.b() != null) {
            arrayList.add(f());
        }
        if (this.h != null) {
            arrayList.add(i());
        }
        return arrayList;
    }

    private List e() {
        ir irVar = this.h;
        if (irVar != null && !irVar.d()) {
            return new ArrayList();
        }
        List<ir> listA = this.g.a();
        ArrayList arrayList = new ArrayList(listA.size());
        for (ir irVar2 : listA) {
            ir irVar3 = this.h;
            if (irVar3 == null || irVar3.b().c().equals(irVar2.b().c())) {
                arrayList.add(new b(irVar2, irVar2.a() != null ? irVar2.a().a() : "", this.h == null));
            }
        }
        return arrayList;
    }

    private List l() {
        ir irVar = this.h;
        if (irVar != null && irVar.d()) {
            return new ArrayList();
        }
        List<ir> listE = this.g.e();
        ArrayList arrayList = new ArrayList(listE.size());
        for (ir irVar2 : listE) {
            ir irVar3 = this.h;
            if (irVar3 == null || irVar3.b().c().equals(irVar2.b().c())) {
                arrayList.add(new b(irVar2, null, this.h == null));
                for (cg cgVar : irVar2.c()) {
                    arrayList.add(cc.a().d(cgVar.a()).c(cgVar.b()).b(true).a());
                }
            }
        }
        return arrayList;
    }

    class b extends bg {
        private final ir p;

        @Override // com.applovin.impl.cc
        public int g() {
            return -12303292;
        }

        b(ir irVar, String str, boolean z) {
            super(irVar.b().d(), y.this.a);
            this.p = irVar;
            this.c = StringUtils.createSpannedString(irVar.b().a(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            this.d = !TextUtils.isEmpty(str) ? new SpannedString(str) : null;
            this.b = z;
        }

        public ir v() {
            return this.p;
        }

        @Override // com.applovin.impl.bg, com.applovin.impl.cc
        public boolean o() {
            return this.b;
        }
    }

    @Override // com.applovin.impl.dc
    protected cc e(int i) {
        if (i == a.INFO.ordinal()) {
            return new fj("INFO");
        }
        if (i == a.BIDDERS.ordinal()) {
            return new fj("BIDDERS");
        }
        return new fj("WATERFALL");
    }
}

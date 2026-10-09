package com.applovin.impl;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class gg implements j8 {
    public static final n8 d = new n8() { // from class: com.applovin.impl.gg$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return gg.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private l8 a;
    private gl b;
    private boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] b() {
        return new j8[]{new gg()};
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    private boolean b(k8 k8Var) {
        ig igVar = new ig();
        if (igVar.a(k8Var, true) && (igVar.b & 2) == 2) {
            int iMin = Math.min(igVar.i, 8);
            ah ahVar = new ah(iMin);
            k8Var.c(ahVar.c(), 0, iMin);
            if (x8.c(a(ahVar))) {
                this.b = new x8();
            } else if (er.c(a(ahVar))) {
                this.b = new er();
            } else if (sg.b(a(ahVar))) {
                this.b = new sg();
            }
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.a = l8Var;
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        b1.b(this.a);
        if (this.b == null) {
            if (b(k8Var)) {
                k8Var.b();
            } else {
                throw ch.a("Failed to determine bitstream type", null);
            }
        }
        if (!this.c) {
            qo qoVarA = this.a.a(0, 1);
            this.a.c();
            this.b.a(this.a, qoVarA);
            this.c = true;
        }
        return this.b.a(k8Var, thVar);
    }

    private static ah a(ah ahVar) {
        ahVar.f(0);
        return ahVar;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        gl glVar = this.b;
        if (glVar != null) {
            glVar.a(j, j2);
        }
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        try {
            return b(k8Var);
        } catch (ch unused) {
            return false;
        }
    }
}

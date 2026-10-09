package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ff extends e2 implements Handler.Callback {
    private final cf n;
    private final ef o;
    private final Handler p;
    private final df q;
    private bf r;
    private boolean s;
    private boolean t;
    private long u;
    private long v;
    private af w;

    @Override // com.applovin.impl.qi
    public boolean d() {
        return true;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public String getName() {
        return "MetadataRenderer";
    }

    public ff(ef efVar, Looper looper) {
        this(efVar, looper, cf.a);
    }

    private void a(af afVar, List list) {
        for (int i = 0; i < afVar.c(); i++) {
            e9 e9VarB = afVar.a(i).b();
            if (e9VarB != null && this.n.a(e9VarB)) {
                bf bfVarB = this.n.b(e9VarB);
                byte[] bArr = (byte[]) b1.a(afVar.a(i).a());
                this.q.b();
                this.q.g(bArr.length);
                ((ByteBuffer) xp.a(this.q.c)).put(bArr);
                this.q.g();
                af afVarA = bfVarB.a(this.q);
                if (afVarA != null) {
                    a(afVarA, list);
                }
            } else {
                list.add(afVar.a(i));
            }
        }
    }

    public ff(ef efVar, Looper looper, cf cfVar) {
        super(5);
        this.o = (ef) b1.a(efVar);
        this.p = looper == null ? null : xp.a(looper, (Handler.Callback) this);
        this.n = (cf) b1.a(cfVar);
        this.q = new df();
        this.v = -9223372036854775807L;
    }

    @Override // com.applovin.impl.e2
    protected void v() {
        this.w = null;
        this.v = -9223372036854775807L;
        this.r = null;
    }

    @Override // com.applovin.impl.qi
    public boolean c() {
        return this.t;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((af) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    private void z() {
        if (this.s || this.w != null) {
            return;
        }
        this.q.b();
        f9 f9VarR = r();
        int iA = a(f9VarR, this.q, 0);
        if (iA != -4) {
            if (iA == -5) {
                this.u = ((e9) b1.a(f9VarR.b)).q;
                return;
            }
            return;
        }
        if (this.q.e()) {
            this.s = true;
            return;
        }
        df dfVar = this.q;
        dfVar.j = this.u;
        dfVar.g();
        af afVarA = ((bf) xp.a(this.r)).a(this.q);
        if (afVarA != null) {
            ArrayList arrayList = new ArrayList(afVarA.c());
            a(afVarA, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.w = new af(arrayList);
            this.v = this.q.f;
        }
    }

    private void b(af afVar) {
        this.o.a(afVar);
    }

    private void a(af afVar) {
        Handler handler = this.p;
        if (handler != null) {
            handler.obtainMessage(0, afVar).sendToTarget();
        } else {
            b(afVar);
        }
    }

    private boolean c(long j) {
        boolean z;
        af afVar = this.w;
        if (afVar == null || this.v > j) {
            z = false;
        } else {
            a(afVar);
            this.w = null;
            this.v = -9223372036854775807L;
            z = true;
        }
        if (this.s && this.w == null) {
            this.t = true;
        }
        return z;
    }

    @Override // com.applovin.impl.e2
    protected void a(long j, boolean z) {
        this.w = null;
        this.v = -9223372036854775807L;
        this.s = false;
        this.t = false;
    }

    @Override // com.applovin.impl.e2
    protected void a(e9[] e9VarArr, long j, long j2) {
        this.r = this.n.b(e9VarArr[0]);
    }

    @Override // com.applovin.impl.qi
    public void a(long j, long j2) {
        boolean zC = true;
        while (zC) {
            z();
            zC = c(j);
        }
    }

    @Override // com.applovin.impl.ri
    public int a(e9 e9Var) {
        if (this.n.a(e9Var)) {
            return ri.CC.a(e9Var.F == 0 ? 4 : 2);
        }
        return ri.CC.a(0);
    }
}

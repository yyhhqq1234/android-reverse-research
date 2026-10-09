package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bo extends e2 implements Handler.Callback {
    private int A;
    private long B;
    private final Handler n;
    private final ao o;
    private final ql p;
    private final f9 q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;
    private e9 v;
    private ol w;
    private rl x;
    private sl y;
    private sl z;

    @Override // com.applovin.impl.qi
    public boolean d() {
        return true;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public String getName() {
        return "TextRenderer";
    }

    public bo(ao aoVar, Looper looper) {
        this(aoVar, looper, ql.a);
    }

    public bo(ao aoVar, Looper looper, ql qlVar) {
        super(3);
        this.o = (ao) b1.a(aoVar);
        this.n = looper == null ? null : xp.a(looper, (Handler.Callback) this);
        this.p = qlVar;
        this.q = new f9();
        this.B = -9223372036854775807L;
    }

    @Override // com.applovin.impl.e2
    protected void v() {
        this.v = null;
        this.B = -9223372036854775807L;
        z();
        D();
    }

    @Override // com.applovin.impl.qi
    public boolean c() {
        return this.s;
    }

    private void C() {
        this.x = null;
        this.A = -1;
        sl slVar = this.y;
        if (slVar != null) {
            slVar.g();
            this.y = null;
        }
        sl slVar2 = this.z;
        if (slVar2 != null) {
            slVar2.g();
            this.z = null;
        }
    }

    private void D() {
        C();
        ((ol) b1.a(this.w)).a();
        this.w = null;
        this.u = 0;
    }

    private void B() {
        this.t = true;
        this.w = this.p.b((e9) b1.a(this.v));
    }

    private void E() {
        D();
        B();
    }

    private long A() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        b1.a(this.y);
        if (this.A >= this.y.a()) {
            return Long.MAX_VALUE;
        }
        return this.y.a(this.A);
    }

    private void b(List list) {
        Handler handler = this.n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            a(list);
        }
    }

    private void z() {
        b(Collections.emptyList());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            a((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    private void a(pl plVar) {
        oc.a("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.v, plVar);
        z();
        E();
    }

    public void c(long j) {
        b1.b(k());
        this.B = j;
    }

    private void a(List list) {
        this.o.a(list);
    }

    @Override // com.applovin.impl.e2
    protected void a(long j, boolean z) {
        z();
        this.r = false;
        this.s = false;
        this.B = -9223372036854775807L;
        if (this.u != 0) {
            E();
        } else {
            C();
            ((ol) b1.a(this.w)).b();
        }
    }

    @Override // com.applovin.impl.e2
    protected void a(e9[] e9VarArr, long j, long j2) {
        this.v = e9VarArr[0];
        if (this.w != null) {
            this.u = 1;
        } else {
            B();
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a9  */
    @Override // com.applovin.impl.qi
    public void a(long j, long j2) {
        boolean z;
        if (k()) {
            long j3 = this.B;
            if (j3 != -9223372036854775807L && j >= j3) {
                C();
                this.s = true;
            }
        }
        if (this.s) {
            return;
        }
        if (this.z == null) {
            ((ol) b1.a(this.w)).a(j);
            try {
                this.z = (sl) ((ol) b1.a(this.w)).c();
            } catch (pl e) {
                a(e);
                return;
            }
        }
        if (b() != 2) {
            return;
        }
        if (this.y != null) {
            long jA = A();
            z = false;
            while (jA <= j) {
                this.A++;
                jA = A();
                z = true;
            }
        } else {
            z = false;
        }
        sl slVar = this.z;
        if (slVar != null) {
            if (!slVar.e()) {
                if (slVar.b <= j) {
                    sl slVar2 = this.y;
                    if (slVar2 != null) {
                        slVar2.g();
                    }
                    this.A = slVar.a(j);
                    this.y = slVar;
                    this.z = null;
                }
                b1.a(this.y);
                b(this.y.b(j));
            } else if (!z && A() == Long.MAX_VALUE) {
                if (this.u == 2) {
                    E();
                } else {
                    C();
                    this.s = true;
                }
            }
            if (z) {
                b1.a(this.y);
                b(this.y.b(j));
            }
        } else if (z) {
            b1.a(this.y);
            b(this.y.b(j));
        }
        if (this.u == 2) {
            return;
        }
        while (!this.r) {
            try {
                rl rlVar = this.x;
                if (rlVar == null) {
                    rlVar = (rl) ((ol) b1.a(this.w)).d();
                    if (rlVar == null) {
                        return;
                    } else {
                        this.x = rlVar;
                    }
                }
                if (this.u == 1) {
                    rlVar.e(4);
                    ((ol) b1.a(this.w)).a(rlVar);
                    this.x = null;
                    this.u = 2;
                    return;
                }
                int iA = a(this.q, rlVar, 0);
                if (iA == -4) {
                    if (rlVar.e()) {
                        this.r = true;
                        this.t = false;
                    } else {
                        e9 e9Var = this.q.b;
                        if (e9Var == null) {
                            return;
                        }
                        rlVar.j = e9Var.q;
                        rlVar.g();
                        this.t &= !rlVar.f();
                    }
                    if (!this.t) {
                        ((ol) b1.a(this.w)).a(rlVar);
                        this.x = null;
                    }
                } else if (iA == -3) {
                    return;
                }
            } catch (pl e2) {
                a(e2);
                return;
            }
        }
    }

    @Override // com.applovin.impl.ri
    public int a(e9 e9Var) {
        if (this.p.a(e9Var)) {
            return ri.CC.a(e9Var.F == 0 ? 4 : 2);
        }
        if (hf.h(e9Var.m)) {
            return ri.CC.a(1);
        }
        return ri.CC.a(0);
    }
}

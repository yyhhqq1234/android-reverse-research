package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.d.a.af;
import com.netease.mpay.d.a.f;
import com.netease.mpay.d.a.y;
import com.netease.mpay.server.response.ai;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fb implements f.d {
    final /* synthetic */ f.b a;
    final /* synthetic */ com.netease.mpay.server.response.ai b;
    final /* synthetic */ ex c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(ex exVar, f.b bVar, com.netease.mpay.server.response.ai aiVar) {
        this.c = exVar;
        this.a = bVar;
        this.b = aiVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.f.d
    public void a() {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.b.m mVar;
        com.netease.mpay.b.m mVar2;
        if (this.a.c) {
            this.c.u();
            return;
        }
        f.e eVar = (f.e) this.a;
        if (eVar.e) {
            this.c.u();
            return;
        }
        bVar = this.c.e;
        if (bVar.c().a(eVar.d) == null) {
            this.c.u();
            return;
        }
        if (this.b == null || this.b.b() < 1) {
            this.c.t();
            return;
        }
        if (!this.b.a()) {
            this.c.b(eVar.d);
            return;
        }
        ex exVar = this.c;
        mVar = this.c.l;
        String a = mVar.a();
        mVar2 = this.c.l;
        exVar.a(new af.e(a, mVar2.b(), m.b.LOGIN, eVar.d, false));
    }

    @Override // com.netease.mpay.d.a.f.d
    public void a(com.netease.mpay.server.response.w wVar) {
        if (this.a.c) {
            this.c.a(new y.c(this.a.a, this.a.b, ((f.c) this.a).d, true, wVar.a, wVar.b, wVar.c));
        }
    }

    @Override // com.netease.mpay.fh
    public void a(String str) {
        this.c.c(str);
    }

    @Override // com.netease.mpay.d.a.f.d
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.b.m mVar2;
        com.netease.mpay.b.m mVar3;
        mVar.a(this.b);
        if (mVar.a()) {
            this.c.a(new f.e(this.a.a, this.a.b, mVar.b, false), mVar.v != null ? mVar.v.c(ai.a.VERIFY_SMS) : null);
            return;
        }
        if (!mVar.b()) {
            if (mVar.c()) {
                this.c.b(mVar.b);
                return;
            } else {
                this.c.a(new com.netease.mpay.b.ao(str, mVar));
                return;
            }
        }
        ex exVar = this.c;
        mVar2 = this.c.l;
        String a = mVar2.a();
        mVar3 = this.c.l;
        exVar.a(new af.e(a, mVar3.b(), m.b.LOGIN, mVar.b, mVar.u.booleanValue()));
    }

    @Override // com.netease.mpay.d.a.f.d
    public void a(String str, String str2) {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.b.m mVar;
        bVar = this.c.e;
        com.netease.mpay.e.b.o a = bVar.c().a(str);
        if (a != null) {
            if (1 == a.f) {
                hi a2 = hi.a();
                FragmentActivity fragmentActivity = this.c.a;
                mVar = this.c.l;
                a2.a(fragmentActivity, mVar.d(), false, a.a(false), str2, a.c, null, 11);
                return;
            }
            if (7 == a.f) {
                this.c.a(com.netease.mpay.e.b.x.a(a), str2);
                return;
            }
        }
        this.c.u();
    }

    @Override // com.netease.mpay.d.a.f.d
    public void b() {
        com.netease.mpay.b.m mVar;
        com.netease.mpay.b.m mVar2;
        FragmentActivity fragmentActivity = this.c.a;
        b.a aVar = b.a.AppealActivity;
        mVar = this.c.l;
        a.C0035a d = mVar.d();
        mVar2 = this.c.l;
        b.a(fragmentActivity, aVar, new com.netease.mpay.b.b(d, 2, mVar2.e), null, 13);
    }

    @Override // com.netease.mpay.fh
    public void c() {
        FragmentManager fragmentManager;
        fragmentManager = this.c.g;
        fragmentManager.popBackStack();
    }

    @Override // com.netease.mpay.fh
    public void d() {
        com.netease.mpay.e.b bVar;
        if (this.a.c) {
            this.c.u();
            return;
        }
        f.e eVar = (f.e) this.a;
        if (!eVar.e) {
            bVar = this.c.e;
            if (bVar.c().a(eVar.d) != null) {
                this.c.t();
                return;
            }
        }
        this.c.u();
    }
}

package com.netease.mpay;

import android.support.v4.app.FragmentManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.d.a.af;
import com.netease.mpay.d.a.f;
import com.netease.mpay.d.a.o;
import com.netease.mpay.d.a.y;
import com.netease.mpay.f.an;
import com.netease.mpay.server.response.ai;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fa implements o.b {
    final /* synthetic */ o.d a;
    final /* synthetic */ ex b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(ex exVar, o.d dVar) {
        this.b = exVar;
        this.a = dVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.o.b
    public void a(an.a aVar) {
        this.b.a(aVar);
    }

    @Override // com.netease.mpay.d.a.o.b
    public void a(com.netease.mpay.server.response.w wVar) {
        this.b.a(new y.c(this.a.a, this.a.b, this.a.c, false, wVar.a, wVar.b, wVar.c));
    }

    @Override // com.netease.mpay.fh
    public void a(String str) {
        this.b.c(str);
    }

    @Override // com.netease.mpay.d.a.o.b
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.b.m mVar2;
        com.netease.mpay.b.m mVar3;
        com.netease.mpay.b.m mVar4;
        com.netease.mpay.b.m mVar5;
        if (mVar.a()) {
            ex exVar = this.b;
            mVar4 = this.b.l;
            String a = mVar4.a();
            mVar5 = this.b.l;
            exVar.a(new f.e(a, mVar5.b(), mVar.b, false), mVar.v != null ? mVar.v.c(ai.a.VERIFY_SMS) : null);
            return;
        }
        if (!mVar.b()) {
            if (mVar.c()) {
                this.b.b(mVar.b);
                return;
            } else {
                this.b.a(new com.netease.mpay.b.ao(str, mVar));
                return;
            }
        }
        ex exVar2 = this.b;
        mVar2 = this.b.l;
        String a2 = mVar2.a();
        mVar3 = this.b.l;
        exVar2.a(new af.e(a2, mVar3.b(), m.b.LOGIN, mVar.b, mVar.u.booleanValue()));
    }

    @Override // com.netease.mpay.fh
    public void c() {
        FragmentManager fragmentManager;
        fragmentManager = this.b.g;
        fragmentManager.popBackStack();
    }

    @Override // com.netease.mpay.fh
    public void d() {
        this.b.u();
    }
}

package com.netease.mpay;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.d.a.a;
import com.netease.mpay.d.a.f;
import com.netease.mpay.d.a.o;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ez implements a.b {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(ex exVar) {
        this.a = exVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.b
    public void a() {
        com.netease.mpay.b.m mVar;
        com.netease.mpay.b.m mVar2;
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        mVar = this.a.l;
        a.C0035a d = mVar.d();
        mVar2 = this.a.l;
        a.b(fragmentActivity, d, 2, mVar2.e, 12);
    }

    @Override // com.netease.mpay.fh
    public void a(String str) {
        this.a.c(str);
    }

    @Override // com.netease.mpay.d.a.a.b
    public void a(String str, com.netease.mpay.server.response.v vVar, boolean z) {
        com.netease.mpay.b.m mVar;
        com.netease.mpay.b.m mVar2;
        com.netease.mpay.b.m mVar3;
        com.netease.mpay.b.m mVar4;
        if (vVar.a) {
            ex exVar = this.a;
            mVar3 = this.a.l;
            String a = mVar3.a();
            mVar4 = this.a.l;
            exVar.a(new f.c(a, mVar4.b(), str, !vVar.b, vVar.c, z), (com.netease.mpay.server.response.ai) null);
            return;
        }
        ex exVar2 = this.a;
        mVar = this.a.l;
        String a2 = mVar.a();
        mVar2 = this.a.l;
        exVar2.a(new o.d(a2, mVar2.b(), str, z));
    }

    @Override // com.netease.mpay.d.a.a.b
    public void b() {
        com.netease.mpay.b.m mVar;
        com.netease.mpay.b.m mVar2;
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        mVar = this.a.l;
        a.C0035a d = mVar.d();
        mVar2 = this.a.l;
        a.a((Activity) fragmentActivity, d, 2, mVar2.e, (Integer) 12);
    }

    @Override // com.netease.mpay.fh
    public void c() {
        this.a.w();
    }

    @Override // com.netease.mpay.fh
    public void d() {
        this.a.u();
    }
}

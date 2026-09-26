package com.netease.mpay;

import android.support.v4.app.FragmentManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.d.a.af;
import com.netease.mpay.d.a.f;
import com.netease.mpay.d.a.y;
import com.netease.mpay.server.response.ai;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fd implements y.b {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(ex exVar) {
        this.a = exVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.fh
    public void a(String str) {
        this.a.c(str);
    }

    @Override // com.netease.mpay.d.a.y.b
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.b.m mVar2;
        com.netease.mpay.b.m mVar3;
        com.netease.mpay.b.m mVar4;
        com.netease.mpay.b.m mVar5;
        if (mVar.a()) {
            ex exVar = this.a;
            mVar4 = this.a.l;
            String a = mVar4.a();
            mVar5 = this.a.l;
            exVar.a(new f.e(a, mVar5.b(), mVar.b, false), mVar.v != null ? mVar.v.c(ai.a.VERIFY_SMS) : null);
            return;
        }
        if (!mVar.b()) {
            if (mVar.c()) {
                this.a.b(mVar.b);
                return;
            } else {
                this.a.a(new com.netease.mpay.b.ao(str, mVar));
                return;
            }
        }
        ex exVar2 = this.a;
        mVar2 = this.a.l;
        String a2 = mVar2.a();
        mVar3 = this.a.l;
        exVar2.a(new af.e(a2, mVar3.b(), m.b.LOGIN, mVar.b, mVar.u.booleanValue()));
    }

    @Override // com.netease.mpay.d.a.y.b
    public void a(String str, String str2) {
        this.a.a(str, str2);
    }

    @Override // com.netease.mpay.fh
    public void c() {
        FragmentManager fragmentManager;
        fragmentManager = this.a.g;
        fragmentManager.popBackStack();
    }

    @Override // com.netease.mpay.fh
    public void d() {
        this.a.u();
    }
}

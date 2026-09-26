package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class oo implements au.a {
    final /* synthetic */ on a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oo(on onVar) {
        this.a = onVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        new com.netease.mpay.widget.s(this.a.a.a).a(str, this.a.a.a.getString(RIdentifier.h.cH), new op(this), this.a.a.a.getString(RIdentifier.h.cJ), new oq(this), false);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.b.aj ajVar;
        com.netease.mpay.b.aj ajVar2;
        FragmentActivity fragmentActivity = this.a.a.a;
        ajVar = this.a.a.d;
        String a = ajVar.a();
        String str2 = mVar.i;
        ajVar2 = this.a.a.d;
        new oy(fragmentActivity, a, str2, 3, ajVar2.b()).a(mVar.e, mVar.f);
        new com.netease.mpay.b.ao(str, mVar).a(this.a.a.a);
    }
}

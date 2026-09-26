package com.netease.mpay.a;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ao;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.oy;
import com.netease.mpay.server.response.m;

/* loaded from: classes.dex */
class l implements au.a {
    final /* synthetic */ k a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar) {
        this.a = kVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.s();
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, m mVar) {
        com.netease.mpay.b.h hVar;
        com.netease.mpay.b.h hVar2;
        FragmentActivity fragmentActivity = this.a.a;
        hVar = this.a.d;
        String a = hVar.a();
        String str2 = mVar.i;
        int i = mVar.c;
        hVar2 = this.a.d;
        new oy(fragmentActivity, a, str2, i, hVar2.b()).a(mVar.e, mVar.f);
        new ao(str, mVar).a(this.a.a);
    }
}

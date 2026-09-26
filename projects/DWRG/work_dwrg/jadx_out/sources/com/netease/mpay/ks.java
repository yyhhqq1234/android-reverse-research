package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
class ks implements au.a {
    final /* synthetic */ kr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ks(kr krVar) {
        this.a = krVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.b(str);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.b.k kVar;
        com.netease.mpay.b.k kVar2;
        FragmentActivity fragmentActivity = this.a.a;
        kVar = this.a.d;
        String a = kVar.a();
        String str2 = mVar.i;
        int i = mVar.c;
        kVar2 = this.a.d;
        new oy(fragmentActivity, a, str2, i, kVar2.b()).a(mVar.e, mVar.f);
        new com.netease.mpay.b.ao(str, mVar).a(this.a.a);
    }
}

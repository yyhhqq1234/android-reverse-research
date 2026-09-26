package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
class ot implements au.a {
    final /* synthetic */ os a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ot(os osVar) {
        this.a = osVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        com.netease.mpay.widget.av avVar;
        com.netease.mpay.widget.av avVar2;
        avVar = this.a.a.h;
        if (avVar != null) {
            avVar2 = this.a.a.h;
            avVar2.dismiss();
        }
        this.a.a.b(str);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.widget.av avVar;
        com.netease.mpay.b.k kVar;
        com.netease.mpay.b.k kVar2;
        com.netease.mpay.widget.av avVar2;
        avVar = this.a.a.h;
        if (avVar != null) {
            avVar2 = this.a.a.h;
            avVar2.dismiss();
        }
        FragmentActivity fragmentActivity = this.a.a.a;
        kVar = this.a.a.d;
        String a = kVar.a();
        String str2 = mVar.i;
        int i = mVar.c;
        kVar2 = this.a.a.d;
        new oy(fragmentActivity, a, str2, i, kVar2.b()).a(mVar.e, mVar.f);
        new com.netease.mpay.b.ao(str, mVar).a(this.a.a.a);
    }
}

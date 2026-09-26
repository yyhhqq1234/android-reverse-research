package com.netease.mpay.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.an;
import com.netease.mpay.b.ao;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.oy;
import com.netease.mpay.server.response.m;

/* loaded from: classes.dex */
class d implements au.a {
    final /* synthetic */ c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        boolean z;
        Activity activity;
        z = this.a.b.k;
        an anVar = new an(str, z && aVar.a());
        activity = this.a.b.f;
        anVar.a(activity);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, m mVar) {
        Activity activity;
        String str2;
        String str3;
        Activity activity2;
        activity = this.a.b.f;
        str2 = this.a.b.j;
        String str4 = mVar.i;
        int i = mVar.c;
        str3 = this.a.b.l;
        new oy(activity, str2, str4, i, str3).a(mVar.e, mVar.f);
        ao aoVar = new ao(str, mVar);
        activity2 = this.a.b.f;
        aoVar.a(activity2);
    }
}

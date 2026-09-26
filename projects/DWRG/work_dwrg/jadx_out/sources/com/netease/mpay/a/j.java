package com.netease.mpay.a;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ao;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.oy;
import com.netease.mpay.server.response.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements au.a {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.d();
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, m mVar) {
        FragmentActivity fragmentActivity;
        String str2;
        String str3;
        FragmentActivity fragmentActivity2;
        fragmentActivity = this.a.a;
        str2 = this.a.b;
        String str4 = mVar.i;
        int i = mVar.c;
        str3 = this.a.g;
        new oy(fragmentActivity, str2, str4, i, str3).a(mVar.e, mVar.f);
        ao aoVar = new ao(str, mVar);
        fragmentActivity2 = this.a.a;
        aoVar.a(fragmentActivity2);
    }
}

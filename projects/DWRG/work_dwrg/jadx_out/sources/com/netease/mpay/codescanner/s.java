package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.User;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.oy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements au.a {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(m mVar) {
        this.a = mVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.d(str);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        new oy(this.a.a, this.a.d.a(), mVar.i, mVar.c, this.a.d.b()).a();
        if (this.a.u != null) {
            this.a.u.onLoginSuccess(new User(str, mVar));
        }
    }
}

package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.or;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class os implements or.b {
    final /* synthetic */ or a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public os(or orVar) {
        this.a = orVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.or.b
    public void a(String str) {
        com.netease.mpay.b.k kVar;
        com.netease.mpay.b.k kVar2;
        FragmentActivity fragmentActivity = this.a.a;
        kVar = this.a.d;
        String a = kVar.a();
        kVar2 = this.a.d;
        new com.netease.mpay.f.bu(fragmentActivity, a, kVar2.b(), str, false, new ot(this)).h();
    }

    @Override // com.netease.mpay.or.b
    public void b(String str) {
        this.a.b(str);
    }
}

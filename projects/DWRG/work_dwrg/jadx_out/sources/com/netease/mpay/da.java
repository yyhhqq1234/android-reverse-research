package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cz;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class da implements com.netease.mpay.f.a.b {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ cz c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(cz czVar, Activity activity, String str) {
        this.c = czVar;
        this.a = activity;
        this.b = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.z zVar) {
        cz.b b;
        b = this.c.b(this.a, this.b);
        b.c = true;
    }
}

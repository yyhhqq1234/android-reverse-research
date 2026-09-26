package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.w;
import com.netease.mpay.widget.af;

/* loaded from: classes.dex */
class o implements af.a.InterfaceC0056a {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ n c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, Activity activity, String str) {
        this.c = nVar;
        this.a = activity;
        this.b = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.af.a.InterfaceC0056a
    public void a(View view, w.a aVar, int i) {
        this.c.a(this.a, this.b, view, aVar.a);
    }
}

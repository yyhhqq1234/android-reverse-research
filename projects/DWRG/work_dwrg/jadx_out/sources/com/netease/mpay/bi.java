package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bc;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class bi extends bf.c {
    final /* synthetic */ OrderInit.PayChannel a;
    final /* synthetic */ bc.b b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(bc.b bVar, OrderInit.PayChannel payChannel) {
        this.b = bVar;
        this.a = payChannel;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        bc.a aVar;
        aVar = this.b.c;
        aVar.a(this.a);
    }
}

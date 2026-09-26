package com.netease.mpay;

import android.content.res.Resources;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.am;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ms implements am.a {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ms(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.am.a
    public void a() {
        Resources resources;
        mk mkVar = this.a;
        resources = this.a.f;
        mkVar.a(resources.getString(RIdentifier.h.aR), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
    }

    @Override // com.netease.mpay.f.am.a
    public void a(String str, a.q qVar) {
        if (qVar != null) {
            new com.netease.mpay.d.a.a.an(this.a.a, qVar.b, qVar.a).a();
        } else {
            this.a.a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
        this.a.A();
    }
}

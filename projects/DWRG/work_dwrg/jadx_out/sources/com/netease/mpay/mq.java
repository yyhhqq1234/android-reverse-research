package com.netease.mpay;

import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mq implements au.a {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mq(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        this.a.A();
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        new com.netease.mpay.b.ao(str, mVar).a(this.a.a);
    }
}

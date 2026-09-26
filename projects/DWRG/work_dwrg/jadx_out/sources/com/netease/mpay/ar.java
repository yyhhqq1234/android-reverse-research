package com.netease.mpay;

import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements au.a {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        if (aVar.a()) {
            this.a.z();
        } else {
            this.a.a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        this.a.a(mVar, str);
    }
}

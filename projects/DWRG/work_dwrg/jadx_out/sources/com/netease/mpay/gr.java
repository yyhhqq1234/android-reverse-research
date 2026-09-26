package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class gr implements com.netease.mpay.f.a.b {
    final /* synthetic */ PrepareAlitvpayCallback a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gr(MpayApi mpayApi, PrepareAlitvpayCallback prepareAlitvpayCallback) {
        this.b = mpayApi;
        this.a = prepareAlitvpayCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        this.a.onFailed(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.a aVar) {
        this.a.onSucessed(aVar.b, aVar.c, aVar.a, aVar.d);
    }
}

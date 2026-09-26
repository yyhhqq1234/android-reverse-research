package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class gk implements com.netease.mpay.f.a.b {
    final /* synthetic */ UserTicketCallback a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(MpayApi mpayApi, UserTicketCallback userTicketCallback) {
        this.b = mpayApi;
        this.a = userTicketCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        int i;
        switch (hb.a[aVar.ordinal()]) {
            case 3:
                i = 1;
                break;
            case 4:
                i = 2;
                break;
            default:
                i = 3;
                break;
        }
        this.a.onFailure(i, str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        this.a.onSuccess(aeVar.a);
    }
}

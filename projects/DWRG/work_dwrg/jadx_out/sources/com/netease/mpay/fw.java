package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fw implements MpayApi.a {
    final /* synthetic */ Integer a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fw(MpayApi mpayApi, Integer num) {
        this.b = mpayApi;
        this.a = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        if (new com.netease.mpay.e.b(this.b.a, this.b.c).c().a().a.size() > 0 || !com.netease.mpay.server.response.u.a(this.b.a, this.b.c).a(2).b) {
            this.b.a(this.a);
        } else {
            new cw(this.b.a, this.b.c, this.b.d, false, new fx(this)).a();
        }
    }
}

package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hh implements MpayApi.a {
    final /* synthetic */ Integer a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hh(MpayApi mpayApi, Integer num) {
        this.b = mpayApi;
        this.a = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        this.b.a(this.a);
    }
}

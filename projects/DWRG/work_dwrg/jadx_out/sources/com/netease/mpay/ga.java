package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ga implements MpayApi.a {
    final /* synthetic */ Handler a;
    final /* synthetic */ SetRealnameCallback b;
    final /* synthetic */ Integer c;
    final /* synthetic */ MpayApi d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(MpayApi mpayApi, Handler handler, SetRealnameCallback setRealnameCallback, Integer num) {
        this.d = mpayApi;
        this.a = handler;
        this.b = setRealnameCallback;
        this.c = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        b.a(this.d.a, b.a.SetRealnameActivity, new com.netease.mpay.b.z(new a.C0035a(this.d.c, this.d.d, this.d.f), new gb(this)), null, this.c);
    }
}

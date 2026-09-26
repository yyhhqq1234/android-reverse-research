package com.netease.mpay.codescanner;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.PaymentCallback;
import com.netease.mpay.PaymentResult;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.p;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class a {
    private MpayConfig a;
    private String b;
    private String c;
    private FragmentActivity d;

    public a(FragmentActivity fragmentActivity, MpayConfig mpayConfig, String str, String str2) {
        this.d = fragmentActivity;
        this.b = str;
        this.a = mpayConfig;
        this.c = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a(String str, String str2, com.netease.mpay.e.b.o oVar, Integer num, PaymentCallback paymentCallback) {
        new com.netease.mpay.e.b(this.d, this.b).c().a(oVar.c, oVar.f, oVar.a(true));
        if (str == null) {
            Cdo.c("Order Info Error");
            if (paymentCallback != null) {
                paymentCallback.onFinish(1, PaymentResult.ORDER_ERROR);
                return;
            }
            return;
        }
        if (bd.a(this.d, "netease_mpay", "loading.html")) {
            com.netease.mpay.b.a(this.d, b.a.PayChannelDispatcherActivity, new com.netease.mpay.b.p(new a.C0035a(this.b, this.c, this.a), new p.a(str2, oVar.c, oVar.e, oVar.d, oVar.f, oVar.a), new p.b(str, new b(this, new Handler(), paymentCallback))), null, num);
        } else {
            Cdo.c("Asset Files Error");
            if (paymentCallback != null) {
                paymentCallback.onFinish(1, PaymentResult.ASSETS_ERROR);
            }
        }
    }
}

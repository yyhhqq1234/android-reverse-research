package com.netease.mpay;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class g extends Handler {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ii iiVar;
        ii iiVar2;
        com.netease.mpay.e.b.a aVar;
        com.netease.mpay.e.b.a aVar2;
        com.netease.mpay.e.b.a aVar3;
        com.netease.mpay.b.s sVar;
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b.a aVar4;
        ii iiVar3;
        com.netease.mpay.e.b.a aVar5;
        com.netease.mpay.e.b.a aVar6;
        com.netease.mpay.b.s sVar2;
        String str = null;
        if (message != null && 101 == message.what && message.obj != null) {
            str = (String) message.obj;
        }
        if (!TextUtils.equals(str, "9000")) {
            if (TextUtils.equals(str, "4000") || TextUtils.equals(str, "6001")) {
                iiVar = this.a.a.e;
                iiVar.b();
                return;
            } else {
                iiVar2 = this.a.a.e;
                iiVar2.c();
                return;
            }
        }
        aVar = this.a.a.g;
        if (aVar == null) {
            this.a.a.g = new com.netease.mpay.e.b.a();
            aVar5 = this.a.a.g;
            aVar5.a = 1;
            aVar6 = this.a.a.g;
            sVar2 = this.a.a.i;
            aVar6.b = Double.valueOf(sVar2.r()).doubleValue();
        } else {
            aVar2 = this.a.a.g;
            aVar2.a++;
            aVar3 = this.a.a.g;
            double d = aVar3.b;
            sVar = this.a.a.i;
            aVar3.b = d + Double.valueOf(sVar.r()).doubleValue();
        }
        bVar = this.a.a.f;
        com.netease.mpay.e.c.p f = bVar.f();
        aVar4 = this.a.a.g;
        f.a(aVar4);
        iiVar3 = this.a.a.e;
        iiVar3.a();
    }
}

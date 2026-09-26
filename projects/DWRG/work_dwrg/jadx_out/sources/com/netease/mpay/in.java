package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.kv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class in implements kv.b {
    final /* synthetic */ ij a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public in(ij ijVar) {
        this.a = ijVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.kv.b
    public void a(int i) {
        switch (i) {
            case 1:
                this.a.z();
                return;
            case 2:
                this.a.b(PaymentResult.PAY_CHANNEL_ERROR);
                return;
            case 3:
                this.a.A();
                return;
            case 4:
                this.a.B();
                return;
            case 5:
                this.a.C();
                return;
            default:
                this.a.A();
                return;
        }
    }
}

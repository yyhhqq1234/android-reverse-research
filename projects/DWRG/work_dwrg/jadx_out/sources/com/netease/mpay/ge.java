package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ge implements MobileBindCallback {
    final /* synthetic */ gd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge(gd gdVar) {
        this.a = gdVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MobileBindCallback
    public void onFinish(User user) {
        this.a.a.post(new gf(this, user));
    }
}

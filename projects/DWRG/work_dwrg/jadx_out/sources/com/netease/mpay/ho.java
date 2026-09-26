package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.hl;

/* loaded from: classes.dex */
class ho implements Runnable {
    final /* synthetic */ hl.b a;
    final /* synthetic */ hl.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ho(hl.a aVar, hl.b bVar) {
        this.b = aVar;
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b();
    }
}

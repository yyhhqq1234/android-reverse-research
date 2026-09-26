package com.netease.mpay.f.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
class h implements Runnable {
    final /* synthetic */ a.b a;
    final /* synthetic */ d.b b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d.b bVar, a.b bVar2) {
        this.b = bVar;
        this.a = bVar2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        d.this.a(this.a, d.this.f);
    }
}

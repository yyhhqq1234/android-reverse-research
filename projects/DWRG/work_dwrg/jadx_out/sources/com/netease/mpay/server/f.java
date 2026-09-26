package com.netease.mpay.server;

import com.dodola.rocoo.Hack;
import com.netease.mpay.server.e;

/* loaded from: classes.dex */
class f implements e.a {
    final /* synthetic */ e.b a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e.b bVar) {
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.e.a
    public void a() {
        Boolean bool;
        Boolean bool2;
        bool = e.this.d;
        synchronized (bool) {
            bool2 = e.this.d;
            bool2.notify();
        }
    }

    @Override // com.netease.mpay.server.e.a
    public void a(String str) {
        Boolean bool;
        Boolean bool2;
        bool = e.this.d;
        synchronized (bool) {
            e.this.e = true;
            e.this.f = str;
            bool2 = e.this.d;
            bool2.notify();
        }
    }
}

package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.hl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hp implements hl.b {
    final /* synthetic */ hl.a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hp(hl.a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.hl.b
    public boolean a() {
        hx hxVar;
        hxVar = this.a.c;
        return hxVar.a;
    }

    @Override // com.netease.mpay.hl.b
    public void b() {
        hx hxVar;
        hxVar = this.a.c;
        hxVar.a(com.netease.mpay.widget.ao.a(), com.netease.mpay.widget.ao.b());
    }
}

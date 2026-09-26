package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.server.response.urslogin.EmailRelatedMobile;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ls implements com.netease.mpay.f.a.b {
    final /* synthetic */ String a;
    final /* synthetic */ lq b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ls(lq lqVar, String str) {
        this.b = lqVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.widget.s sVar;
        sVar = this.b.e;
        sVar.a(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.urslogin.a aVar) {
        if (aVar.b.size() == 1) {
            this.b.a(this.a, aVar.a, (EmailRelatedMobile) aVar.b.get(0));
        } else {
            this.b.c(this.a);
        }
    }
}

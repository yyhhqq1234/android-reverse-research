package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gt implements bp.a {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gt(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(String str, String str2) {
        Cdo.c("*****************");
        Cdo.a(str, str2, this.a.a, new com.netease.mpay.e.b(this.a.a, this.a.c).e().a().e);
        Cdo.c("*****************");
    }

    @Override // com.netease.mpay.f.bp.a
    public void a(b.a aVar, String str, String str2) {
        a(str2, str);
    }

    @Override // com.netease.mpay.f.bp.a
    public void a(com.netease.mpay.server.response.af afVar, String str) {
        String a;
        if (afVar != null) {
            a = this.a.a(afVar.a);
            a(str, a);
        }
    }
}

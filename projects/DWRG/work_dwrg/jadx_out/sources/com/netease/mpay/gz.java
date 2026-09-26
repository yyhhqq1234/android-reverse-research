package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.cz;
import com.netease.mpay.f.t;
import com.netease.mpay.widget.RIdentifier;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gz implements cz.a {
    final /* synthetic */ Integer a;
    final /* synthetic */ MpayApi.a b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gz(MpayApi mpayApi, Integer num, MpayApi.a aVar) {
        this.c = mpayApi;
        this.a = num;
        this.b = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.cz.a
    public void a() {
        this.b.a();
    }

    @Override // com.netease.mpay.cz.a
    public void a(t.c cVar, String str) {
        AuthenticationCallback authenticationCallback;
        if (t.c.ReadServerError == cVar) {
            com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.c.a, this.c.c);
            com.netease.mpay.e.b.e b = bVar.e().b();
            com.netease.mpay.e.b.p b2 = bVar.h().b();
            b2.a(new Date().getTime(), b.e);
            if (b2.b >= b.d) {
                bVar.h().a();
                this.c.b(this.a);
                return;
            }
            bVar.h().a(b2);
        }
        if (str != null && !str.equals("")) {
            new com.netease.mpay.widget.s(this.c.a).a(str, this.c.a.getString(RIdentifier.h.j), new ha(this));
        } else {
            authenticationCallback = this.c.i;
            authenticationCallback.onDialogFinish();
        }
    }
}

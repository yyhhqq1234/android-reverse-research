package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.User;
import com.netease.mpay.b.an;
import com.netease.mpay.widget.RIdentifier;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements AuthenticationCallback {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(m mVar) {
        this.a = mVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onDialogFinish() {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onEnterGame(String str, String str2) {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onGuestBindSuccess(User user) {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLoginSuccess(User user) {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b.q qVar;
        m mVar = this.a;
        bVar = this.a.f;
        mVar.i = bVar.c().a();
        this.a.h = null;
        qVar = this.a.i;
        Iterator it = qVar.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (oVar.f == user.type && oVar.d != null && oVar.d.equals(user.token)) {
                this.a.h = oVar;
            }
        }
        if (this.a.h == null) {
            new an(this.a.a.getResources().getString(RIdentifier.h.cV), false).a(this.a.a);
        } else {
            this.a.b(this.a.h);
            this.a.a(this.a.h.c, this.a.d.b);
        }
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLogout(String str) {
    }
}

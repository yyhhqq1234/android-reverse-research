package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class ec extends a {
    private com.netease.mpay.b.l d;
    private Resources e;

    public ec(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void b(String str) {
        if (str == null) {
            new com.netease.mpay.b.am().a(this.a);
            return;
        }
        if (str.equals("1")) {
            s();
        } else if (str.equals("2")) {
            t();
        } else {
            new com.netease.mpay.b.am().a(this.a);
        }
    }

    private void s() {
        hi.a().a((Activity) this.a, this.d.d(), (String) null, false, true, (Integer) 1);
    }

    private void t() {
        b.a(this.a, b.a.RegistrationActivity, new com.netease.mpay.b.u(this.d.d(), false), null, 2);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.l(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i != 1 && i != 2) {
            alVar.a(this.a);
            return;
        }
        if ((alVar instanceof com.netease.mpay.b.ao) && !((com.netease.mpay.b.ao) alVar).b) {
            if (this.d.b != null) {
                this.d.b.onLoginSuccess(new UserExt((com.netease.mpay.b.ao) alVar));
            }
            ((com.netease.mpay.b.ao) alVar).a().a(this.a);
            return;
        }
        if (this.d.b != null && i == 1) {
            this.d.b.onLoginFail(this.e.getString(RIdentifier.h.aw));
        } else if (this.d.b != null && i == 2) {
            this.d.b.onLoginFail(this.e.getString(RIdentifier.h.bb));
        }
        alVar.a(this.a);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.d.b == null || this.d.a == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.e = this.a.getResources();
            b(this.d.a);
        }
    }
}

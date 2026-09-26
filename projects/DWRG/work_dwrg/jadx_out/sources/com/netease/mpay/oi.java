package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class oi extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.ah e;
    private com.netease.mpay.widget.s f;
    private boolean g;

    public oi(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.ah(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (1081 == i && 100 == i2) {
            this.f.a(this.a.getString(RIdentifier.h.dF));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.widget.b.c
    public void a(b.a aVar) {
        if (aVar.a()) {
            new com.netease.mpay.b.ap().a(this.a);
        } else {
            super.a(aVar);
        }
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.g = false;
        if (TextUtils.isEmpty(this.e.a()) || this.e.a == null || this.e.a == an.a.ILLEAGAL) {
            closeWindow();
        } else {
            this.f = new com.netease.mpay.widget.s(this.a);
            w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), this.e.a).d(this.e.b).c(this.e.c).a(this.e.e, this.e.f));
        }
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        super.closeWindow();
        if (this.e.d != null) {
            this.e.d.a();
            this.g = true;
        }
    }

    @Override // com.netease.mpay.a
    public void j() {
        super.j();
        if (this.e.d == null || this.g) {
            return;
        }
        this.e.d.a();
        this.g = true;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerify(String str) {
        if (this.e.d == null) {
            super.onVerify(str);
            return;
        }
        this.e.d.a(str);
        this.a.finish();
        this.g = true;
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}

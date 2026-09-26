package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.auth.a;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;

/* loaded from: classes.dex */
public class kr extends a implements IUiListener {
    private com.netease.mpay.b.k d;
    private Tencent e;
    private boolean f;

    public kr(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            new com.netease.mpay.b.aq().a(this.a);
        } else {
            new com.netease.mpay.widget.s(this.a).a(str, this.a.getString(RIdentifier.h.cH), new kt(this), this.a.getString(RIdentifier.h.cJ), new ku(this), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.e = Tencent.createInstance(com.netease.mpay.auth.a.a(), this.a.getApplicationContext());
        this.e.login(this.a, com.netease.mpay.auth.a.a, this);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.k(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 11101) {
            Tencent tencent = this.e;
            Tencent.handleResultData(intent, this);
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.d.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.f = false;
        }
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.f) {
            return;
        }
        this.f = true;
        s();
    }

    @Override // com.tencent.tauth.IUiListener
    public void onCancel() {
        new com.netease.mpay.b.aq().a(this.a);
    }

    @Override // com.tencent.tauth.IUiListener
    public void onComplete(Object obj) {
        a.C0033a a = com.netease.mpay.auth.a.a(obj);
        if (a == null) {
            b(this.a.getResources().getString(RIdentifier.h.aw));
        } else {
            new com.netease.mpay.f.bg(this.a, this.d.a(), this.d.b(), a, false, new ks(this)).h();
        }
    }

    @Override // com.tencent.tauth.IUiListener
    public void onError(UiError uiError) {
        new com.netease.mpay.b.aq().a(this.a);
    }
}

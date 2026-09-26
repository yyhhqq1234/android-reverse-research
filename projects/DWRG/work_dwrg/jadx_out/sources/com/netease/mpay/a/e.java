package com.netease.mpay.a;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.al;
import com.netease.mpay.widget.av;

/* loaded from: classes.dex */
public class e extends com.netease.mpay.a {
    private Activity d;
    private com.netease.mpay.b.g e;
    private a f;
    private av g;

    public e(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.d = fragmentActivity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        this.g = av.a(this.d, false);
        this.g.show();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.g(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        if (i2 == 0 && this.g != null && this.g.isShowing()) {
            this.g.dismiss();
        }
        this.f.a(i, i2, intent);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.e.b) {
            this.f = new a(this.d, this.e.a(), this.e.b(), this.e.a, this.e.b);
        } else {
            this.f = new a(this.d, this.e.a(), this.e.b(), this.e.a);
        }
        this.f.a();
        s();
    }

    @Override // com.netease.mpay.a
    public void j() {
        if (this.g == null || !this.g.isShowing()) {
            return;
        }
        this.g.dismiss();
    }
}

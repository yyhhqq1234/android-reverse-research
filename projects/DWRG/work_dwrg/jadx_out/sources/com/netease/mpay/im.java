package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.an;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class im implements View.OnClickListener {
    final /* synthetic */ ij a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public im(ij ijVar) {
        this.a = ijVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b.a(this.a.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(this.a.d.d(), an.a.PAY_HELP), null, null);
    }
}

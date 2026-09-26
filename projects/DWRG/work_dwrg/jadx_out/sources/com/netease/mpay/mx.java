package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mx implements View.OnClickListener {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mx(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        new com.netease.mpay.b.au().a(this.a.a);
    }
}

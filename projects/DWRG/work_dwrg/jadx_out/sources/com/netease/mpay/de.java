package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class de implements View.OnClickListener {
    final /* synthetic */ dd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public de(dd ddVar) {
        this.a = ddVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.w();
    }
}

package com.netease.mpay.widget;

import android.app.Dialog;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements View.OnClickListener {
    final /* synthetic */ a.InterfaceC0054a a;
    final /* synthetic */ a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, a.InterfaceC0054a interfaceC0054a) {
        this.b = aVar;
        this.a = interfaceC0054a;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Dialog dialog;
        dialog = this.b.a;
        dialog.dismiss();
        this.a.a();
    }
}

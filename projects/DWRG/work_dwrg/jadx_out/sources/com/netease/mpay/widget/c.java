package com.netease.mpay.widget;

import android.app.Dialog;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements View.OnClickListener {
    final /* synthetic */ a.b a;
    final /* synthetic */ a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, a.b bVar) {
        this.b = aVar;
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Dialog dialog;
        dialog = this.b.a;
        dialog.dismiss();
        this.a.b();
    }
}

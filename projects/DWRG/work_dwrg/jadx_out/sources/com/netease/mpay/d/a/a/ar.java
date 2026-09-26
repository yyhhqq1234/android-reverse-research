package com.netease.mpay.d.a.a;

import android.app.Dialog;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar extends bf.c {
    final /* synthetic */ an a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(an anVar) {
        this.a = anVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        Dialog dialog;
        dialog = this.a.b;
        dialog.dismiss();
    }
}

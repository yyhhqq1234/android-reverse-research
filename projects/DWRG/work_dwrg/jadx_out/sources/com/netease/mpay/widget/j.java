package com.netease.mpay.widget;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class j extends bf.c {
    final /* synthetic */ EditText a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar, EditText editText) {
        this.b = eVar;
        this.a = editText;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        this.a.setText("");
        this.a.requestFocus();
    }
}

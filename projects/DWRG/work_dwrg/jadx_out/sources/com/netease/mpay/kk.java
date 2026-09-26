package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class kk implements View.OnClickListener {
    final /* synthetic */ View a;
    final /* synthetic */ kj b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kk(kj kjVar, View view) {
        this.b = kjVar;
        this.a = view;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.b.a.k;
        editText.setText("");
        this.a.setVisibility(4);
    }
}

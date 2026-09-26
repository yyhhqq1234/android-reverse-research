package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class jm implements View.OnClickListener {
    final /* synthetic */ jl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jm(jl jlVar) {
        this.a = jlVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        View view2;
        editText = this.a.a.h;
        editText.setText("");
        view2 = this.a.a.i;
        view2.setVisibility(4);
    }
}

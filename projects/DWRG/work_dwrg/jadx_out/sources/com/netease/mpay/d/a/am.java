package com.netease.mpay.d.a;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class am implements View.OnClickListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ af b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(af afVar, EditText editText) {
        this.b = afVar;
        this.a = editText;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.setText("");
    }
}

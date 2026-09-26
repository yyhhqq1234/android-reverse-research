package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class jq implements View.OnClickListener {
    final /* synthetic */ jp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jq(jp jpVar) {
        this.a = jpVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        View view2;
        editText = this.a.a.j;
        editText.setText("");
        view2 = this.a.a.k;
        view2.setVisibility(4);
    }
}

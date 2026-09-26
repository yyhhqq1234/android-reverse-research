package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class jk implements View.OnClickListener {
    final /* synthetic */ jj a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jk(jj jjVar) {
        this.a = jjVar;
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

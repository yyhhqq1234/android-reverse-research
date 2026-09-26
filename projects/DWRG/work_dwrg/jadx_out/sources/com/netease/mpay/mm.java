package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mm implements View.OnClickListener {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mm(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.a.l;
        editText.setText("");
    }
}

package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mi implements View.OnClickListener {
    final /* synthetic */ mb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mi(mb mbVar) {
        this.a = mbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.a.h;
        editText.setText("");
    }
}

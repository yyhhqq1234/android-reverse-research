package com.netease.mpay;

import android.view.View;
import android.widget.AutoCompleteTextView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bb implements View.OnClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AutoCompleteTextView autoCompleteTextView;
        autoCompleteTextView = this.a.h;
        autoCompleteTextView.setCursorVisible(true);
    }
}

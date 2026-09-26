package com.netease.mpay;

import android.view.View;
import android.widget.AutoCompleteTextView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ly implements View.OnClickListener {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ly(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AutoCompleteTextView autoCompleteTextView;
        autoCompleteTextView = this.a.i;
        autoCompleteTextView.setCursorVisible(true);
    }
}

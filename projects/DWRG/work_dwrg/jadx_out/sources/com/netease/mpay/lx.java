package com.netease.mpay;

import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lx implements View.OnClickListener {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lx(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AutoCompleteTextView autoCompleteTextView;
        ImageView imageView;
        autoCompleteTextView = this.a.i;
        autoCompleteTextView.setText("");
        imageView = this.a.j;
        imageView.setVisibility(8);
        this.a.y();
    }
}

package com.netease.mpay;

import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements View.OnClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AutoCompleteTextView autoCompleteTextView;
        EditText editText;
        ImageView imageView;
        autoCompleteTextView = this.a.h;
        autoCompleteTextView.setText("");
        editText = this.a.j;
        editText.setText("");
        imageView = this.a.i;
        imageView.setVisibility(8);
        this.a.x();
    }
}

package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements TextWatcher {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean u;
        EditText editText;
        ImageView imageView;
        button = this.a.l;
        u = this.a.u();
        com.netease.mpay.widget.bf.a(button, u);
        al alVar = this.a;
        editText = this.a.j;
        imageView = this.a.k;
        alVar.a(editText, imageView);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

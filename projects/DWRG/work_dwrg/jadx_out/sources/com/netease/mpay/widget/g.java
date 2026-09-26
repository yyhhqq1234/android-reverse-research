package com.netease.mpay.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements TextWatcher {
    final /* synthetic */ EditText a;
    final /* synthetic */ View b;
    final /* synthetic */ e c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar, EditText editText, View view) {
        this.c = eVar;
        this.a = editText;
        this.b = view;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.c.a(this.a, this.b);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

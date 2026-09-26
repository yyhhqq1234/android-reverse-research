package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class na implements TextWatcher {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public na(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean v;
        EditText editText;
        ImageView imageView;
        button = this.a.n;
        v = this.a.v();
        com.netease.mpay.widget.bf.a(button, v);
        mk mkVar = this.a;
        editText = this.a.l;
        imageView = this.a.m;
        mkVar.a(editText, imageView);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

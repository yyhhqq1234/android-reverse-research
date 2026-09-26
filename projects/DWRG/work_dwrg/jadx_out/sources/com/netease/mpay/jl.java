package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jl implements TextWatcher {
    final /* synthetic */ jg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jl(jg jgVar) {
        this.a = jgVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        EditText editText;
        EditText editText2;
        boolean a;
        EditText editText3;
        View view;
        View view2;
        View view3;
        this.a.b(0);
        button = this.a.g;
        jg jgVar = this.a;
        editText = this.a.h;
        editText2 = this.a.j;
        a = jgVar.a(editText, editText2);
        com.netease.mpay.widget.bf.a(button, a);
        editText3 = this.a.h;
        if (editText3.getText().toString().equals("")) {
            view = this.a.i;
            view.setVisibility(4);
        } else {
            view2 = this.a.i;
            view2.setVisibility(0);
            view3 = this.a.i;
            view3.setOnClickListener(new jm(this));
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

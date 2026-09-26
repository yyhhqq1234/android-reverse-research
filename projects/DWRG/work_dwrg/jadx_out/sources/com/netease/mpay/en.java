package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class en implements TextWatcher {
    final /* synthetic */ ed a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public en(ed edVar) {
        this.a = edVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean t;
        EditText editText;
        this.a.b(2);
        button = this.a.m;
        t = this.a.t();
        com.netease.mpay.widget.bf.a(button, t);
        RelativeLayout relativeLayout = (RelativeLayout) this.a.a.findViewById(RIdentifier.f.cm);
        editText = this.a.k;
        if (editText.getText().toString().equals("")) {
            relativeLayout.setVisibility(4);
            return;
        }
        relativeLayout.setVisibility(0);
        relativeLayout.setOnClickListener(new eo(this, relativeLayout));
        this.a.t = true;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

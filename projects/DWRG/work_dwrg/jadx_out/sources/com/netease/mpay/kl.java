package com.netease.mpay;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kl implements TextWatcher {
    final /* synthetic */ kd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kl(kd kdVar) {
        this.a = kdVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean t;
        EditText editText;
        this.a.c(2);
        button = this.a.i;
        t = this.a.t();
        com.netease.mpay.widget.bf.a(button, t);
        View findViewById = this.a.a.findViewById(RIdentifier.f.cm);
        editText = this.a.k;
        if (editText.getText().toString().equals("")) {
            findViewById.setVisibility(4);
        } else {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new km(this, findViewById));
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

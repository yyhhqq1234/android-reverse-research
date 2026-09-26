package com.netease.mpay.d.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cq;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements TextWatcher {
    final /* synthetic */ View a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, View view) {
        this.b = eVar;
        this.a = view;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        boolean b;
        Button button = this.b.c;
        b = this.b.b();
        bf.a(button, b);
        this.b.a(this.b.b, this.a);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (charSequence == null) {
            return;
        }
        String d = cq.d(charSequence.toString());
        if (d.equals(charSequence.toString())) {
            return;
        }
        this.b.b.setText(d);
        this.b.b.setSelection((d.length() + (i + i3)) - charSequence.length());
    }
}

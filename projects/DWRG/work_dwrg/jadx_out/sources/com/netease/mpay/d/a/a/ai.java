package com.netease.mpay.d.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements TextWatcher {
    final /* synthetic */ aa a;
    final /* synthetic */ aa.b b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(aa.b bVar, aa aaVar) {
        this.b = bVar;
        this.a = aaVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        EditText editText;
        button = this.b.i;
        aa.b bVar = this.b;
        editText = this.b.f;
        bf.a(button, bVar.a(editText));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

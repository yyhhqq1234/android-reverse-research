package com.netease.mpay.d.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.r;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements TextWatcher {
    final /* synthetic */ r a;
    final /* synthetic */ r.c b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(r.c cVar, r rVar) {
        this.b = cVar;
        this.a = rVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        EditText editText;
        button = this.b.g;
        r.c cVar = this.b;
        editText = this.b.d;
        bf.a(button, cVar.a(editText));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

package com.netease.mpay.d.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.af;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements TextWatcher {
    final /* synthetic */ EditText a;
    final /* synthetic */ ImageView b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(af afVar, EditText editText, ImageView imageView) {
        this.c = afVar;
        this.a = editText;
        this.b = imageView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        boolean c;
        af.c cVar;
        af.b a;
        button = this.c.g;
        c = this.c.c();
        bf.a(button, c);
        this.c.b(this.a, this.b);
        cVar = this.c.h;
        a = this.c.a(this.a);
        cVar.a(a);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

package com.netease.mpay.d.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements TextWatcher {
    final /* synthetic */ aa.a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(aa.a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        Button button;
        EditText editText;
        EditText editText2;
        ImageView imageView;
        button = this.a.f;
        aa.a aVar = this.a;
        editText = this.a.d;
        bf.a(button, aVar.a(editText));
        aa.a aVar2 = this.a;
        editText2 = this.a.d;
        imageView = this.a.e;
        aVar2.a(editText2, imageView);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

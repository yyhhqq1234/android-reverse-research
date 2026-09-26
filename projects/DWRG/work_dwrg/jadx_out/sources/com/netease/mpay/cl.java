package com.netease.mpay;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cl implements TextWatcher {
    final /* synthetic */ ck a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(ck ckVar) {
        this.a = ckVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.a.v();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText;
        Resources resources;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        EditText editText5;
        EditText editText6;
        Button button;
        com.netease.mpay.widget.s sVar;
        Resources resources2;
        EditText editText7;
        editText = this.a.j;
        if (editText.getText().toString().length() > 250) {
            resources = this.a.i;
            String string = resources.getString(RIdentifier.h.A);
            editText2 = this.a.j;
            editText3 = this.a.j;
            editText2.setText(editText3.getText().toString().subSequence(0, 249));
            editText4 = this.a.j;
            editText4.clearFocus();
            editText5 = this.a.k;
            if (editText5.getText().toString().trim().length() == 0) {
                editText7 = this.a.k;
                editText7.requestFocus();
            } else {
                InputMethodManager inputMethodManager = (InputMethodManager) this.a.a.getSystemService("input_method");
                editText6 = this.a.j;
                inputMethodManager.hideSoftInputFromWindow(editText6.getWindowToken(), 0);
                button = this.a.l;
                button.requestFocus();
            }
            sVar = this.a.f;
            resources2 = this.a.i;
            sVar.b(string, resources2.getString(RIdentifier.h.cn), new cm(this));
        }
    }
}

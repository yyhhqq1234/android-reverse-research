package com.netease.mpay.d.a;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.widget.ay;
import com.netease.mpay.widget.az;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class p implements TextWatcher {
    final /* synthetic */ o a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        EditText editText;
        Button button;
        com.netease.mpay.e.b.af afVar;
        boolean z;
        com.netease.mpay.e.b.af afVar2;
        editText = this.a.g;
        String trim = editText.getText().toString().trim();
        button = this.a.l;
        bf.a(button, !trim.equals(""));
        afVar = this.a.f;
        if (afVar.v) {
            z = this.a.m;
            if (z || trim.equals("")) {
                return;
            }
            this.a.m = true;
            ay a = ay.a(this.a.b, bk.k);
            Activity activity = this.a.b;
            afVar2 = this.a.f;
            a.a(activity, afVar2.b, az.a(this.a.b), "mobile_account", "input_code", "");
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

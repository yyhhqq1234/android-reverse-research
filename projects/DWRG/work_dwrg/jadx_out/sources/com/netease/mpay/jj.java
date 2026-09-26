package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jj implements View.OnFocusChangeListener {
    final /* synthetic */ jg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jj(jg jgVar) {
        this.a = jgVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View view2;
        EditText editText;
        View view3;
        View view4;
        if (z) {
            editText = this.a.h;
            if (!editText.getText().toString().equals("")) {
                view3 = this.a.i;
                view3.setVisibility(0);
                view4 = this.a.i;
                view4.setOnClickListener(new jk(this));
                return;
            }
        }
        view2 = this.a.i;
        view2.setVisibility(4);
    }
}

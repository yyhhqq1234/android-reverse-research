package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class em implements View.OnClickListener {
    final /* synthetic */ RelativeLayout a;
    final /* synthetic */ el b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public em(el elVar, RelativeLayout relativeLayout) {
        this.b = elVar;
        this.a = relativeLayout;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.b.a.k;
        editText.setText("");
        this.a.setVisibility(4);
    }
}

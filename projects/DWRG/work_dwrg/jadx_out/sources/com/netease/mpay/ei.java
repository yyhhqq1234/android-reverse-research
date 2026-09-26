package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ei implements View.OnClickListener {
    final /* synthetic */ RelativeLayout a;
    final /* synthetic */ eh b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ei(eh ehVar, RelativeLayout relativeLayout) {
        this.b = ehVar;
        this.a = relativeLayout;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.b.a.j;
        editText.setText("");
        this.a.setVisibility(4);
    }
}

package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class el implements View.OnFocusChangeListener {
    final /* synthetic */ ed a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public el(ed edVar) {
        this.a = edVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText;
        RelativeLayout relativeLayout = (RelativeLayout) this.a.a.findViewById(RIdentifier.f.cm);
        if (z) {
            editText = this.a.k;
            if (!editText.getText().toString().equals("")) {
                relativeLayout.setVisibility(0);
                relativeLayout.setOnClickListener(new em(this, relativeLayout));
                return;
            }
        }
        relativeLayout.setVisibility(4);
    }
}

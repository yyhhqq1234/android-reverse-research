package com.netease.mpay;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kf implements View.OnFocusChangeListener {
    final /* synthetic */ kd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kf(kd kdVar) {
        this.a = kdVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText;
        View findViewById = this.a.a.findViewById(RIdentifier.f.cl);
        if (z) {
            editText = this.a.j;
            if (!editText.getText().toString().equals("")) {
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(new kg(this, findViewById));
                return;
            }
        }
        findViewById.setVisibility(4);
    }
}

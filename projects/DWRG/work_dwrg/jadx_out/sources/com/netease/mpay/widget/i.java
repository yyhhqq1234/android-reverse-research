package com.netease.mpay.widget;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements View.OnFocusChangeListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ View b;
    final /* synthetic */ e c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(e eVar, EditText editText, View view) {
        this.c = eVar;
        this.a = editText;
        this.b = view;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.c.a(this.a, this.b);
    }
}

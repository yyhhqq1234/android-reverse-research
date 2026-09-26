package com.netease.mpay.d.a.a;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements View.OnFocusChangeListener {
    final /* synthetic */ View a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(e eVar, View view) {
        this.b = eVar;
        this.a = view;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.b.a(this.b.b, this.a);
    }
}

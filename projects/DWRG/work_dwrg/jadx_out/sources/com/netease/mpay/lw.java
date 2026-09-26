package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lw implements View.OnFocusChangeListener {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lw(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.a.z();
    }
}

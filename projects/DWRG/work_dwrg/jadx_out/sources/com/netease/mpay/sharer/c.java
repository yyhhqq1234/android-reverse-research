package com.netease.mpay.sharer;

import android.view.View;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class c implements View.OnClickListener {
    final /* synthetic */ b a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.a.onBackPressed();
    }
}

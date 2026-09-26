package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements View.OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar, Activity activity) {
        this.b = eVar;
        this.a = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        bf.a(this.a, view.getWindowToken());
        this.b.a.a(this.b.b.getText().toString().trim().replace(" ", ""));
    }
}

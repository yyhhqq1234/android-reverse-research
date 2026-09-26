package com.netease.mpay.d.a;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class ag extends bf.c {
    final /* synthetic */ TextView a;
    final /* synthetic */ af b;
    private boolean c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar, TextView textView) {
        this.b = afVar;
        this.a = textView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        Activity activity;
        EditText editText;
        this.c = !this.c;
        activity = this.b.b;
        TextView textView = this.a;
        editText = this.b.f;
        af.b(activity, textView, editText, this.c);
    }
}

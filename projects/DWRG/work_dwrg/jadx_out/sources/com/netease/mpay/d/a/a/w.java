package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.r;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w extends bf.c {
    final /* synthetic */ r a;
    final /* synthetic */ Activity b;
    final /* synthetic */ r.c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(r.c cVar, r rVar, Activity activity) {
        this.c = cVar;
        this.a = rVar;
        this.b = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        EditText editText;
        bf.a(this.b, view.getWindowToken());
        r rVar = r.this;
        editText = this.c.d;
        rVar.a(editText.getText().toString());
    }
}

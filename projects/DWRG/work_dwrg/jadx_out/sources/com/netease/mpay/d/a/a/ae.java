package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae extends bf.c {
    final /* synthetic */ aa a;
    final /* synthetic */ Activity b;
    final /* synthetic */ aa.a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(aa.a aVar, aa aaVar, Activity activity) {
        this.c = aVar;
        this.a = aaVar;
        this.b = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        EditText editText;
        bf.a(this.b, view.getWindowToken());
        aa aaVar = aa.this;
        editText = this.c.d;
        aaVar.b(editText.getText().toString());
    }
}

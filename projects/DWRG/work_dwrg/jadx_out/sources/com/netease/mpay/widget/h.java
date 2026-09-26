package com.netease.mpay.widget;

import android.view.View;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;
import com.netease.mpay.widget.e;

/* loaded from: classes.dex */
class h extends bf.c {
    final /* synthetic */ e.a a;
    final /* synthetic */ EditText b;
    final /* synthetic */ e c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, e.a aVar, EditText editText) {
        this.c = eVar;
        this.a = aVar;
        this.b = editText;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        if (this.a != null) {
            this.a.a(this.b.getText().toString());
        }
    }
}

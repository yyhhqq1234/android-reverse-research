package com.netease.mpay;

import android.app.Dialog;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.eu;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ev extends bf.c {
    final /* synthetic */ int a;
    final /* synthetic */ eu.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ev(eu.a aVar, int i) {
        this.b = aVar;
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        eu.b bVar;
        ArrayList arrayList;
        Dialog dialog;
        bVar = eu.this.b;
        arrayList = this.b.f;
        bVar.a(((Integer) arrayList.get(this.a)).intValue());
        dialog = eu.this.a;
        dialog.dismiss();
    }
}

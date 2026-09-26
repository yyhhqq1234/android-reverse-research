package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class be implements View.OnClickListener {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ bc b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(bc bcVar, ArrayList arrayList) {
        this.b = bcVar;
        this.a = arrayList;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.b.c(this.a);
    }
}

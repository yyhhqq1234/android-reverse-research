package com.netease.mpay;

import android.view.View;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ds extends bf.c {
    final /* synthetic */ dp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(dp dpVar) {
        this.a = dpVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        ImageView imageView;
        int i;
        this.a.u();
        imageView = this.a.r;
        imageView.setVisibility(0);
        dp dpVar = this.a;
        i = this.a.s;
        dpVar.s = i | 1;
    }
}

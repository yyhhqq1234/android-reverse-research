package com.netease.mpay.f;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.ay;

/* loaded from: classes.dex */
class az implements DialogInterface.OnClickListener {
    final /* synthetic */ ay.b a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(ay.b bVar) {
        this.a = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new ay(this.a.a, this.a.c, this.a.b, this.a.d, this.a.e, this.a.f, this.a.g).h();
    }
}

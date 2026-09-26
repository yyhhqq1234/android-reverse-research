package com.netease.mpay.f.a;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.ah;
import com.netease.mpay.f.an;
import com.netease.mpay.hk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements DialogInterface.OnClickListener {
    final /* synthetic */ an.a a;
    final /* synthetic */ d b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, an.a aVar) {
        this.b = dVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.b.a(this.b.c, b.a.WebLinksActivity, new ah(new a.C0035a(this.b.d, this.b.e, hk.a().a(this.b.d)), this.a), null, null);
    }
}

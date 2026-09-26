package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mobsecurity.SecException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb implements DialogInterface.OnClickListener {
    final /* synthetic */ bz a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(bz bzVar) {
        this.a = bzVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.b.f fVar;
        int i2;
        fVar = this.a.e;
        if (!fVar.f) {
            ii iiVar = new ii(this.a.a);
            i2 = this.a.i;
            switch (i2) {
                case -101:
                    iiVar.d();
                    break;
                case SecException.a /* -100 */:
                case 1:
                    iiVar.c();
                    break;
                case 0:
                case 7:
                    iiVar.b();
                    break;
                case 4:
                    iiVar.a();
                    break;
                default:
                    iiVar.c();
                    break;
            }
        } else {
            this.a.y();
        }
        dialogInterface.dismiss();
    }
}

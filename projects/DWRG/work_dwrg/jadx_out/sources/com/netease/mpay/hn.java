package com.netease.mpay;

import android.content.DialogInterface;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hn implements DialogInterface.OnClickListener {
    final /* synthetic */ hx a;
    final /* synthetic */ hl b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hn(hl hlVar, hx hxVar) {
        this.b = hlVar;
        this.a = hxVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.widget.s sVar;
        com.netease.mpay.widget.s sVar2;
        com.netease.mpay.widget.s sVar3;
        com.netease.mpay.widget.s sVar4;
        com.netease.mpay.widget.s sVar5;
        String a = this.a != null ? this.a.a() : "";
        switch (i) {
            case 0:
                if (TextUtils.isEmpty(a)) {
                    sVar5 = this.b.k;
                    sVar5.a(this.b.a.getString(RIdentifier.h.bP));
                    return;
                } else if (com.netease.mpay.widget.z.a(this.b.a.getApplicationContext(), com.netease.mpay.widget.z.a(a))) {
                    sVar4 = this.b.k;
                    sVar4.a(this.b.a.getString(RIdentifier.h.cP));
                    return;
                } else {
                    sVar3 = this.b.k;
                    sVar3.a(this.b.a.getString(RIdentifier.h.cQ));
                    return;
                }
            case 1:
                if (TextUtils.isEmpty(a)) {
                    sVar2 = this.b.k;
                    sVar2.a(this.b.a.getString(RIdentifier.h.bP));
                    return;
                } else {
                    com.netease.mpay.widget.aa.a(this.b.a, a);
                    sVar = this.b.k;
                    sVar.a(this.b.a.getString(RIdentifier.h.o));
                    return;
                }
            default:
                return;
        }
    }
}

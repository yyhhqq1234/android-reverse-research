package com.netease.mpay;

import android.view.View;
import android.widget.PopupWindow;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dy extends bf.c {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ dp b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dy(dp dpVar, com.netease.mpay.e.b.o oVar) {
        this.b = dpVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        PopupWindow popupWindow;
        com.netease.mpay.e.b.q qVar;
        com.netease.mpay.e.b.q qVar2;
        PopupWindow popupWindow2;
        PopupWindow popupWindow3;
        popupWindow = this.b.o;
        if (popupWindow != null) {
            popupWindow2 = this.b.o;
            if (popupWindow2.isShowing()) {
                popupWindow3 = this.b.o;
                popupWindow3.dismiss();
            }
        }
        if (this.a != null) {
            qVar2 = this.b.g;
            qVar2.a.remove(this.a);
            new com.netease.mpay.f.ax(this.b.a, this.b.d.a(), this.b.d.b(), this.a, false).h();
        }
        qVar = this.b.g;
        if (qVar.a.size() < 1) {
            this.b.u();
        } else {
            this.b.a((com.netease.mpay.e.b.o) null);
        }
    }
}

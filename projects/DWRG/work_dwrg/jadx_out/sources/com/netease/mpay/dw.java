package com.netease.mpay;

import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dw implements AdapterView.OnItemClickListener {
    final /* synthetic */ dp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(dp dpVar) {
        this.a = dpVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        PopupWindow popupWindow;
        com.netease.mpay.e.b.q qVar;
        PopupWindow popupWindow2;
        PopupWindow popupWindow3;
        popupWindow = this.a.o;
        if (popupWindow != null) {
            popupWindow2 = this.a.o;
            if (popupWindow2.isShowing()) {
                popupWindow3 = this.a.o;
                popupWindow3.dismiss();
            }
        }
        qVar = this.a.g;
        new Handler().postDelayed(new dx(this, (com.netease.mpay.e.b.o) qVar.a.get(i)), 60L);
    }
}

package com.netease.mpay.widget;

import android.widget.PopupWindow;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bj implements Runnable {
    final /* synthetic */ bi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar) {
        this.a = biVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        PopupWindow popupWindow;
        PopupWindow popupWindow2;
        PopupWindow popupWindow3;
        popupWindow = this.a.e;
        if (popupWindow != null) {
            popupWindow2 = this.a.e;
            if (popupWindow2.isShowing()) {
                popupWindow3 = this.a.e;
                popupWindow3.dismiss();
            }
        }
    }
}

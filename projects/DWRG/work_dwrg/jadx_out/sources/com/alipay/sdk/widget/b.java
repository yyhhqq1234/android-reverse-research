package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {
    final /* synthetic */ a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0003a alertDialogC0003a;
        a.AlertDialogC0003a alertDialogC0003a2;
        a.AlertDialogC0003a alertDialogC0003a3;
        a.AlertDialogC0003a alertDialogC0003a4;
        boolean z;
        alertDialogC0003a = this.a.f;
        if (alertDialogC0003a == null) {
            this.a.f = new a.AlertDialogC0003a(this.a.g);
            alertDialogC0003a4 = this.a.f;
            z = this.a.e;
            alertDialogC0003a4.setCancelable(z);
        }
        try {
            alertDialogC0003a2 = this.a.f;
            if (!alertDialogC0003a2.isShowing()) {
                alertDialogC0003a3 = this.a.f;
                alertDialogC0003a3.show();
            }
        } catch (Exception e) {
        }
    }
}

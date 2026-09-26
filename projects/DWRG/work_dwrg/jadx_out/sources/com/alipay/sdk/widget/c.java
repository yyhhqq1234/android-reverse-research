package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements Runnable {
    final /* synthetic */ a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0003a alertDialogC0003a;
        a.AlertDialogC0003a alertDialogC0003a2;
        alertDialogC0003a = this.a.f;
        if (alertDialogC0003a != null) {
            try {
                alertDialogC0003a2 = this.a.f;
                alertDialogC0003a2.dismiss();
            } catch (Exception e) {
            }
        }
    }
}

package com.netease.mpay.widget;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax implements Runnable {
    final /* synthetic */ Handler a;
    final /* synthetic */ Runnable[] b;
    final /* synthetic */ aw.a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(aw.a aVar, Handler handler, Runnable[] runnableArr) {
        this.c = aVar;
        this.a = handler;
        this.b = runnableArr;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.c.b()) {
            return;
        }
        this.c.c();
        this.a.postDelayed(this.b[0], this.c.a());
    }
}

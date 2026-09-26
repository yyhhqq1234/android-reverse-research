package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.environment.config.SdkConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ib implements Runnable {
    final /* synthetic */ hy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ib(hy hyVar) {
        this.a = hyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean e;
        Handler handler;
        Runnable runnable;
        e = this.a.e();
        if (e) {
            handler = this.a.o;
            runnable = this.a.r;
            handler.postDelayed(runnable, SdkConstants.A_MUNITE);
        }
    }
}

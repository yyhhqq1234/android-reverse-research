package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.environment.config.SdkConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ie implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ long d;
    final /* synthetic */ hy e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ie(hy hyVar, String str, String str2, String str3, long j) {
        this.e = hyVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.netease.mpay.e.b bVar;
        Handler handler;
        Runnable runnable;
        Handler handler2;
        Runnable runnable2;
        int i;
        bVar = this.e.e;
        bVar.i().a(this.a, this.b, this.c, this.d);
        handler = this.e.o;
        runnable = this.e.r;
        handler.postDelayed(runnable, SdkConstants.A_MUNITE);
        handler2 = this.e.o;
        runnable2 = this.e.q;
        i = this.e.a;
        handler2.postDelayed(runnable2, i);
    }
}

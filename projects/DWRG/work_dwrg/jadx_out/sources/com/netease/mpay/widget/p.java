package com.netease.mpay.widget;

import android.content.Context;
import android.os.Handler;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ AlerterWindowService e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(AlerterWindowService alerterWindowService, String str, String str2, String str3, String str4) {
        this.e = alerterWindowService;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        be beVar;
        Handler handler;
        int i;
        Context applicationContext = this.e.getApplicationContext();
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        beVar = this.e.b;
        n.a(applicationContext, str, str2, str3, str4, beVar);
        handler = this.e.c;
        q qVar = new q(this);
        i = this.e.a;
        handler.postDelayed(qVar, i);
    }
}

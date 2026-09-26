package com.netease.mpay.widget;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ AlerterWindowService e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(AlerterWindowService alerterWindowService, String str, String str2, String str3, String str4) {
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
        this.e.a(this.a, this.b, this.c, this.d);
    }
}

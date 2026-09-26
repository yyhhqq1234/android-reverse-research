package com.netease.mpay.server.response;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ n d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, Context context, String str, String str2) {
        this.d = nVar;
        this.a = context;
        this.b = str;
        this.c = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        j.a.b(this.a, this.b, this.c);
    }
}

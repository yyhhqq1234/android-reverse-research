package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.netease.mpay.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ long d;
    final /* synthetic */ long e;
    final /* synthetic */ hy f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cif(hy hyVar, String str, String str2, String str3, long j, long j2) {
        this.f = hyVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = j2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f.a(this.a, this.b, this.c, this.d, this.e);
    }
}

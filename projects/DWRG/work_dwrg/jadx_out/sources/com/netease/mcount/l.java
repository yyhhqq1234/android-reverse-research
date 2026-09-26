package com.netease.mcount;

import android.content.Context;

/* loaded from: classes.dex */
final class l implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context, boolean z) {
        this.a = context;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        k.a(this.a, this.b);
    }
}

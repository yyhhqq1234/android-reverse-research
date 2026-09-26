package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;

/* loaded from: classes.dex */
final class h implements Runnable {
    final /* synthetic */ Intent a;
    final /* synthetic */ g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, Intent intent) {
        this.b = gVar;
        this.a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        activity = this.b.a.a;
        activity.startActivity(this.a);
    }
}

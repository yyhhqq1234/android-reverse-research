package com.netease.mcount;

import android.content.Context;

/* loaded from: classes.dex */
final class m implements Runnable {
    final /* synthetic */ Context a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new o(this.a).a();
        } catch (p e) {
            r.a("failed to post the init message.");
        }
    }
}

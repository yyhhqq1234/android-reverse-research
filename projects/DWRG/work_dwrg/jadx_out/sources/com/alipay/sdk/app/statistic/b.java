package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.j;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.packet.impl.c cVar = new com.alipay.sdk.packet.impl.c();
        try {
            String b = j.b(this.a, a.a, null);
            if (!TextUtils.isEmpty(b) && cVar.a(this.a, b) != null) {
                j.a(this.a, a.a);
            }
        } catch (Throwable th) {
        }
        try {
            if (!TextUtils.isEmpty(this.b)) {
                cVar.a(this.a, this.b);
            }
        } catch (IOException e) {
            j.a(this.a, a.a, this.b);
        } catch (Throwable th2) {
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcbn implements Runnable {
    zzcbn(zzcbp zzcbpVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}

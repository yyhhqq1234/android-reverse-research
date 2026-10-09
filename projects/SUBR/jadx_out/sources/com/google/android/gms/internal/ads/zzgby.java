package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgby extends zzgci {
    zzgby() {
    }

    public static zzgby zzu(ListenableFuture listenableFuture) {
        return listenableFuture instanceof zzgby ? (zzgby) listenableFuture : new zzgbz(listenableFuture);
    }
}

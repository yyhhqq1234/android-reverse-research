package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffx {
    public static final zzfgd zza(Callable callable, Object obj, zzfgf zzfgfVar) {
        return zzb(callable, zzfgfVar.zzb, obj, zzfgfVar);
    }

    public static final zzfgd zzb(Callable callable, zzgcs zzgcsVar, Object obj, zzfgf zzfgfVar) {
        return new zzfgd(zzfgfVar, obj, zzfgf.zza, Collections.emptyList(), zzgcsVar.zzb(callable));
    }

    public static final zzfgd zzc(ListenableFuture listenableFuture, Object obj, zzfgf zzfgfVar) {
        return new zzfgd(zzfgfVar, obj, zzfgf.zza, Collections.emptyList(), listenableFuture);
    }

    public static final zzfgd zzd(final zzffs zzffsVar, zzgcs zzgcsVar, Object obj, zzfgf zzfgfVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzffw
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                zzffsVar.zza();
                return null;
            }
        }, zzgcsVar, obj, zzfgfVar);
    }
}

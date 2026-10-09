package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfc {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    static zzbfa zza() {
        return (zzbfa) zza.get();
    }

    static zzbfb zzb() {
        return (zzbfb) zzb.get();
    }

    public static void zzc(zzbfa zzbfaVar) {
        zza.set(zzbfaVar);
    }
}

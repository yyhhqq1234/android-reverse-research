package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfvj {
    public static zzfvf zza(zzfvf zzfvfVar) {
        if ((zzfvfVar instanceof zzfvi) || (zzfvfVar instanceof zzfvg)) {
            return zzfvfVar;
        }
        return zzfvfVar instanceof Serializable ? new zzfvg(zzfvfVar) : new zzfvi(zzfvfVar);
    }
}

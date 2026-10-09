package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzalq {
    private static final Comparator zza = new Comparator() { // from class: com.google.android.gms.internal.ads.zzalp
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((zzalq) obj).zzb.zzb, ((zzalq) obj2).zzb.zzb);
        }
    };
    private final zzalr zzb;
    private final int zzc;

    /* synthetic */ zzalq(zzalr zzalrVar, int i, zzalu zzaluVar) {
        this.zzb = zzalrVar;
        this.zzc = i;
    }
}

package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfyb extends zzfzs {
    final /* synthetic */ zzfyc zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfyb(zzfyc zzfycVar, ListIterator listIterator) {
        super(listIterator);
        this.zza = zzfycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzr
    final Object zza(Object obj) {
        return this.zza.zzb.apply(obj);
    }
}

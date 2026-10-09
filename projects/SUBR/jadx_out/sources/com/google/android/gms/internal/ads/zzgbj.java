package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javax.annotation.CheckForNull;
import kotlin.UByte$$ExternalSyntheticBackport0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbj extends zzgbi {
    final AtomicReferenceFieldUpdater zza;
    final AtomicIntegerFieldUpdater zzb;

    zzgbj(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    final int zza(zzgbm zzgbmVar) {
        return this.zzb.decrementAndGet(zzgbmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    final void zzb(zzgbm zzgbmVar, @CheckForNull Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.zza;
            if (UByte$$ExternalSyntheticBackport0.m(atomicReferenceFieldUpdater, zzgbmVar, (Object) null, set2)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(zzgbmVar) == null);
    }
}

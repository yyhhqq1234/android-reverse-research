package com.google.android.gms.internal.games_v2;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.UByte$$ExternalSyntheticBackport0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@17.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzak {
    private final AtomicReference zza = new AtomicReference();

    protected abstract zzaj zza();

    public final void zzb() {
        zzaj zzajVar = (zzaj) this.zza.get();
        if (zzajVar != null) {
            zzajVar.zzd();
        }
    }

    public final void zzc(String str, int i) {
        zzaj zzajVar = (zzaj) this.zza.get();
        if (zzajVar == null) {
            zzaj zzajVarZza = zza();
            AtomicReference atomicReference = this.zza;
            while (!UByte$$ExternalSyntheticBackport0.m(atomicReference, null, zzajVarZza)) {
                if (atomicReference.get() != null) {
                    zzajVar = (zzaj) this.zza.get();
                }
            }
            zzajVar = zzajVarZza;
        }
        zzajVar.zzc(str, i);
    }
}

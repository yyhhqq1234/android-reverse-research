package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcvc {
    private final Context zza;
    private final zzfcj zzb;
    private final Bundle zzc;
    private final zzfcb zzd;
    private final zzcut zze;
    private final zzedb zzf;
    private final int zzg;

    /* synthetic */ zzcvc(zzcva zzcvaVar, zzcvb zzcvbVar) {
        this.zza = zzcvaVar.zza;
        this.zzb = zzcvaVar.zzb;
        this.zzc = zzcvaVar.zzc;
        this.zzd = zzcvaVar.zzd;
        this.zze = zzcvaVar.zze;
        this.zzf = zzcvaVar.zzf;
        this.zzg = zzcvaVar.zzg;
    }

    final int zza() {
        return this.zzg;
    }

    final Context zzb(Context context) {
        return this.zza;
    }

    final Bundle zzc() {
        return this.zzc;
    }

    final zzcut zzd() {
        return this.zze;
    }

    final zzcva zze() {
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(this.zza);
        zzcvaVar.zzk(this.zzb);
        zzcvaVar.zzg(this.zzc);
        zzcvaVar.zzh(this.zze);
        zzcvaVar.zze(this.zzf);
        return zzcvaVar;
    }

    final zzedb zzf(String str) {
        zzedb zzedbVar = this.zzf;
        return zzedbVar != null ? zzedbVar : new zzedb(str);
    }

    final zzfcb zzg() {
        return this.zzd;
    }

    final zzfcj zzh() {
        return this.zzb;
    }
}

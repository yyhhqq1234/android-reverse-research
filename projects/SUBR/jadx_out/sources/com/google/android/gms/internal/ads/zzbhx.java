package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhx extends zzbgz {
    final /* synthetic */ zzbia zza;

    /* synthetic */ zzbhx(zzbia zzbiaVar, zzbhz zzbhzVar) {
        this.zza = zzbiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zze(zzbgq zzbgqVar, String str) {
        zzbia zzbiaVar = this.zza;
        if (zzbiaVar.zzb == null) {
            return;
        }
        zzbiaVar.zzb.zzb(zzbiaVar.zzf(zzbgqVar), str);
    }
}

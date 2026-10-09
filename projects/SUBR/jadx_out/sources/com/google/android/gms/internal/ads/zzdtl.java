package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdtl extends zzbwv {
    final /* synthetic */ zzdtn zza;

    zzdtl(zzdtn zzdtnVar) {
        this.zza = zzdtnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zze(int i) throws RemoteException {
        zzdtn zzdtnVar = this.zza;
        zzdtnVar.zzb.zzm(zzdtnVar.zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdtn zzdtnVar = this.zza;
        zzdtnVar.zzb.zzm(zzdtnVar.zza, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zzg() throws RemoteException {
        zzdtn zzdtnVar = this.zza;
        zzdtnVar.zzb.zzp(zzdtnVar.zza);
    }
}

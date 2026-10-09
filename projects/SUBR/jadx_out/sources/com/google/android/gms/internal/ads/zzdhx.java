package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdhx implements zzayk {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdia zzb;

    zzdhx(zzdia zzdiaVar, String str) {
        this.zza = str;
        this.zzb = zzdiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final void zzdn(zzayj zzayjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbR)).booleanValue()) {
            synchronized (this) {
                if (zzayjVar.zzj) {
                    zzdia zzdiaVar = this.zzb;
                    if (zzdiaVar.zzo != null) {
                        zzdiaVar.zzy.put(this.zza, true);
                        zzdia zzdiaVar2 = this.zzb;
                        if (zzdiaVar2.zzo == null) {
                            return;
                        } else {
                            zzdiaVar2.zzB(zzdiaVar2.zzo.zzf(), this.zzb.zzo.zzl(), this.zzb.zzo.zzm(), true);
                        }
                    }
                }
                return;
            }
        }
        if (zzayjVar.zzj) {
            zzdia zzdiaVar3 = this.zzb;
            if (zzdiaVar3.zzo != null) {
                zzdiaVar3.zzy.put(this.zza, true);
                zzdia zzdiaVar4 = this.zzb;
                if (zzdiaVar4.zzo == null) {
                    return;
                }
                zzdiaVar4.zzB(zzdiaVar4.zzo.zzf(), this.zzb.zzo.zzl(), this.zzb.zzo.zzm(), true);
            }
        }
    }
}

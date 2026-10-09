package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlg extends zztu {
    private final zzbp zzc;

    zzlg(zzlh zzlhVar, zzbq zzbqVar) {
        super(zzbqVar);
        this.zzc = new zzbp();
    }

    @Override // com.google.android.gms.internal.ads.zztu, com.google.android.gms.internal.ads.zzbq
    public final zzbo zzd(int i, zzbo zzboVar, boolean z) {
        zzbo zzboVarZzd = this.zzb.zzd(i, zzboVar, z);
        if (this.zzb.zze(zzboVarZzd.zzc, this.zzc, 0L).zzb()) {
            Object obj = zzboVar.zza;
            Object obj2 = zzboVar.zzb;
            int i2 = zzboVar.zzc;
            long j = zzboVar.zzd;
            long j2 = zzboVar.zze;
            zzboVarZzd.zzi(obj, obj2, i2, j, 0L, zzb.zza, true);
        } else {
            zzboVarZzd.zzf = true;
        }
        return zzboVarZzd;
    }
}

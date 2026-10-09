package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmo implements zzcvw {
    private final zzfbr zza;
    private final zzfca zzb;
    private final zzfiv zzc;
    private final zzfja zzd;

    public zzcmo(zzfca zzfcaVar, zzfja zzfjaVar, zzfiv zzfivVar) {
        this.zzb = zzfcaVar;
        this.zzd = zzfjaVar;
        this.zzc = zzfivVar;
        this.zza = zzfcaVar.zzb.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdz(com.google.android.gms.ads.internal.client.zze zzeVar) {
        List list = this.zza.zza;
        this.zzd.zze(this.zzc.zzc(this.zzb, null, list), null);
    }
}

package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajg implements zzadm {
    final /* synthetic */ zzaji zza;

    /* synthetic */ zzajg(zzaji zzajiVar, zzajh zzajhVar) {
        this.zza = zzajiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final long zza() {
        zzaji zzajiVar = this.zza;
        return zzajiVar.zzd.zzf(zzajiVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        zzaji zzajiVar = this.zza;
        long jZzg = zzajiVar.zzd.zzg(j);
        long j2 = zzajiVar.zzb;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(jZzg);
        zzaji zzajiVar2 = this.zza;
        long jLongValue = j2 + bigIntegerValueOf.multiply(BigInteger.valueOf(zzajiVar2.zzc - zzajiVar2.zzb)).divide(BigInteger.valueOf(this.zza.zzf)).longValue();
        zzaji zzajiVar3 = this.zza;
        zzadn zzadnVar = new zzadn(j, Math.max(zzajiVar3.zzb, Math.min(jLongValue - 30000, zzajiVar3.zzc - 1)));
        return new zzadk(zzadnVar, zzadnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final boolean zzh() {
        return true;
    }
}

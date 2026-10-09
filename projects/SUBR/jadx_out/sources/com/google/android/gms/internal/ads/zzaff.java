package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaff extends zzada {
    final /* synthetic */ zzadm zza;
    final /* synthetic */ zzafg zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaff(zzafg zzafgVar, zzadm zzadmVar, zzadm zzadmVar2) {
        super(zzadmVar);
        this.zza = zzadmVar2;
        this.zzb = zzafgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzada, com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        zzadk zzadkVarZzg = this.zza.zzg(j);
        zzadn zzadnVar = zzadkVarZzg.zza;
        zzadn zzadnVar2 = new zzadn(zzadnVar.zzb, zzadnVar.zzc + this.zzb.zzb);
        zzadn zzadnVar3 = zzadkVarZzg.zzb;
        return new zzadk(zzadnVar2, new zzadn(zzadnVar3.zzb, zzadnVar3.zzc + this.zzb.zzb));
    }
}

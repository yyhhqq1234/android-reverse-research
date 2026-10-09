package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfn implements Comparable {
    private long zzc;
    private long zzb = -9223372036854775807L;
    private final zzdy zza = new zzdy();

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfn zzfnVar = (zzfn) obj;
        int iCompare = Long.compare(this.zzb, zzfnVar.zzb);
        return iCompare != 0 ? iCompare : Long.compare(this.zzc, zzfnVar.zzc);
    }

    public final void zzc(long j, long j2, zzdy zzdyVar) {
        zzcw.zzf(j != -9223372036854775807L);
        this.zzb = j;
        this.zzc = j2;
        this.zza.zzI(zzdyVar.zzb());
        System.arraycopy(zzdyVar.zzN(), zzdyVar.zzd(), this.zza.zzN(), 0, zzdyVar.zzb());
    }
}

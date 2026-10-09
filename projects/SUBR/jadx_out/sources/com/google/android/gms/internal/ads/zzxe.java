package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxe extends zzxo implements Comparable {
    private final int zze;
    private final int zzf;

    public zzxe(int i, zzbr zzbrVar, int i2, zzxh zzxhVar, int i3) {
        super(i, zzbrVar, i2);
        this.zze = zzlk.zza(i3, zzxhVar.zzO) ? 1 : 0;
        this.zzf = this.zzd.zza();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxe zzxeVar) {
        return Integer.compare(this.zzf, zzxeVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final /* bridge */ /* synthetic */ boolean zzc(zzxo zzxoVar) {
        return false;
    }
}

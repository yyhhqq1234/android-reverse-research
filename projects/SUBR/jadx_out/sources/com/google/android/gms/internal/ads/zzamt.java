package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamt implements zzamj {
    private zzadt zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzdy zza = new zzdy(10);
    private long zzd = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        zzcw.zzb(this.zzb);
        if (this.zzc) {
            int iZzb = zzdyVar.zzb();
            int i = this.zzf;
            if (i < 10) {
                int iMin = Math.min(iZzb, 10 - i);
                System.arraycopy(zzdyVar.zzN(), zzdyVar.zzd(), this.zza.zzN(), this.zzf, iMin);
                if (this.zzf + iMin == 10) {
                    this.zza.zzL(0);
                    if (this.zza.zzm() != 73 || this.zza.zzm() != 68 || this.zza.zzm() != 51) {
                        zzdo.zzf("Id3Reader", "Discarding invalid ID3 tag");
                        this.zzc = false;
                        return;
                    } else {
                        this.zza.zzM(3);
                        this.zze = this.zza.zzl() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iZzb, this.zze - this.zzf);
            this.zzb.zzr(zzdyVar, iMin2);
            this.zzf += iMin2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        zzadt zzadtVarZzw = zzacqVar.zzw(zzanxVar.zza(), 5);
        this.zzb = zzadtVarZzw;
        zzz zzzVar = new zzz();
        zzzVar.zzM(zzanxVar.zzb());
        zzzVar.zzaa("application/id3");
        zzadtVarZzw.zzm(zzzVar.zzag());
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
        int i;
        zzcw.zzb(this.zzb);
        if (this.zzc && (i = this.zze) != 0 && this.zzf == i) {
            zzcw.zzf(this.zzd != -9223372036854775807L);
            this.zzb.zzt(this.zzd, 1, this.zze, 0, null);
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        this.zzd = j;
        this.zze = 0;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzc = false;
        this.zzd = -9223372036854775807L;
    }
}

package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zztq implements zzwa {
    private final zzfxn zza;
    private long zzb;

    public zztq(List list, List list2) {
        zzfxk zzfxkVar = new zzfxk();
        zzcw.zzd(list.size() == list2.size());
        for (int i = 0; i < list.size(); i++) {
            zzfxkVar.zzf(new zztp((zzwa) list.get(i), (List) list2.get(i)));
        }
        this.zza = zzfxkVar.zzi();
        this.zzb = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final long zzb() {
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        for (int i = 0; i < this.zza.size(); i++) {
            zztp zztpVar = (zztp) this.zza.get(i);
            long jZzb = zztpVar.zzb();
            if ((zztpVar.zza().contains(1) || zztpVar.zza().contains(2) || zztpVar.zza().contains(4)) && jZzb != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzb);
            }
            if (jZzb != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jZzb);
            }
        }
        if (jMin != Long.MAX_VALUE) {
            this.zzb = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.zzb;
        return j != -9223372036854775807L ? j : jMin2;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final long zzc() {
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < this.zza.size(); i++) {
            long jZzc = ((zztp) this.zza.get(i)).zzc();
            if (jZzc != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzc);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final void zzm(long j) {
        for (int i = 0; i < this.zza.size(); i++) {
            ((zztp) this.zza.get(i)).zzm(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final boolean zzo(zzkj zzkjVar) {
        boolean zZzo;
        boolean z = false;
        do {
            long jZzc = zzc();
            if (jZzc == Long.MIN_VALUE) {
                break;
            }
            zZzo = false;
            for (int i = 0; i < this.zza.size(); i++) {
                long jZzc2 = ((zztp) this.zza.get(i)).zzc();
                boolean z2 = jZzc2 != Long.MIN_VALUE && jZzc2 <= zzkjVar.zza;
                if (jZzc2 == jZzc || z2) {
                    zZzo |= ((zztp) this.zza.get(i)).zzo(zzkjVar);
                }
            }
            z |= zZzo;
        } while (zZzo);
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final boolean zzp() {
        for (int i = 0; i < this.zza.size(); i++) {
            if (((zztp) this.zza.get(i)).zzp()) {
                return true;
            }
        }
        return false;
    }
}

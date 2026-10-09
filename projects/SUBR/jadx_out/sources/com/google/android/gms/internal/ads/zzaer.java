package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaer extends zzaby {
    public zzaer(final zzacy zzacyVar, int i, long j, long j2) {
        long j3;
        Objects.requireNonNull(zzacyVar);
        zzabv zzabvVar = new zzabv() { // from class: com.google.android.gms.internal.ads.zzaeo
            @Override // com.google.android.gms.internal.ads.zzabv
            public final long zza(long j4) {
                return zzacyVar.zzb(j4);
            }
        };
        zzaep zzaepVar = new zzaep(zzacyVar, i, null);
        long jZza = zzacyVar.zza();
        long j4 = zzacyVar.zzj;
        int i2 = zzacyVar.zzd;
        if (i2 > 0) {
            j3 = ((((long) i2) + ((long) zzacyVar.zzc)) / 2) + 1;
        } else {
            int i3 = zzacyVar.zza;
            long j5 = 4096;
            if (i3 == zzacyVar.zzb && i3 > 0) {
                j5 = i3;
            }
            j3 = (((j5 * ((long) zzacyVar.zzg)) * ((long) zzacyVar.zzh)) / 8) + 64;
        }
        super(zzabvVar, zzaepVar, jZza, 0L, j4, j, j2, j3, Math.max(6, zzacyVar.zzc));
    }
}

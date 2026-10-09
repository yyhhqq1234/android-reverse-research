package com.google.android.gms.internal.ads;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaet extends zzaex {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzaet(zzadt zzadtVar) {
        super(zzadtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    protected final boolean zza(zzdy zzdyVar) throws zzaew {
        if (this.zzc) {
            zzdyVar.zzM(1);
        } else {
            int iZzm = zzdyVar.zzm();
            int i = iZzm >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(iZzm >> 2) & 3];
                zzz zzzVar = new zzz();
                zzzVar.zzaa("audio/mpeg");
                zzzVar.zzz(1);
                zzzVar.zzab(i2);
                this.zza.zzm(zzzVar.zzag());
                this.zzd = true;
            } else if (i == 7 || i == 8) {
                zzz zzzVar2 = new zzz();
                zzzVar2.zzaa(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                zzzVar2.zzz(1);
                zzzVar2.zzab(ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED);
                this.zza.zzm(zzzVar2.zzag());
                this.zzd = true;
            } else if (i != 10) {
                throw new zzaew("Audio format not supported: " + i);
            }
            this.zzc = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    protected final boolean zzb(zzdy zzdyVar, long j) throws zzbc {
        if (this.zze == 2) {
            int iZzb = zzdyVar.zzb();
            this.zza.zzr(zzdyVar, iZzb);
            this.zza.zzt(j, 1, iZzb, 0, null);
            return true;
        }
        int iZzm = zzdyVar.zzm();
        if (iZzm != 0 || this.zzd) {
            if (this.zze == 10 && iZzm != 1) {
                return false;
            }
            int iZzb2 = zzdyVar.zzb();
            this.zza.zzr(zzdyVar, iZzb2);
            this.zza.zzt(j, 1, iZzb2, 0, null);
            return true;
        }
        int iZzb3 = zzdyVar.zzb();
        byte[] bArr = new byte[iZzb3];
        zzdyVar.zzH(bArr, 0, iZzb3);
        zzabi zzabiVarZza = zzabk.zza(bArr);
        zzz zzzVar = new zzz();
        zzzVar.zzaa("audio/mp4a-latm");
        zzzVar.zzA(zzabiVarZza.zzc);
        zzzVar.zzz(zzabiVarZza.zzb);
        zzzVar.zzab(zzabiVarZza.zza);
        zzzVar.zzN(Collections.singletonList(bArr));
        this.zza.zzm(zzzVar.zzag());
        this.zzd = true;
        return false;
    }
}

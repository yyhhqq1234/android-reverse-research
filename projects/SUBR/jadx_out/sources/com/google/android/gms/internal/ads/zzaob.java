package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import okhttp3.internal.http.StatusLine;
import org.json.g3;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaob implements zzaoc {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, g3.a.b.INSTANCE_NOT_FOUND_IN_SHOW, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzacq zzc;
    private final zzadt zzd;
    private final zzaof zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzdy zzh;
    private final int zzi;
    private final zzab zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaob(zzacq zzacqVar, zzadt zzadtVar, zzaof zzaofVar) throws zzbc {
        this.zzc = zzacqVar;
        this.zzd = zzadtVar;
        this.zze = zzaofVar;
        int iMax = Math.max(1, zzaofVar.zzc / 10);
        this.zzi = iMax;
        zzdy zzdyVar = new zzdy(zzaofVar.zzf);
        zzdyVar.zzk();
        int iZzk = zzdyVar.zzk();
        this.zzf = iZzk;
        int i = zzaofVar.zzb;
        int i2 = (((zzaofVar.zzd - (i * 4)) * 8) / (zzaofVar.zze * i)) + 1;
        if (iZzk != i2) {
            throw zzbc.zza("Expected frames per block: " + i2 + "; got: " + iZzk, null);
        }
        int i3 = zzei.zza;
        int i4 = ((iMax + iZzk) - 1) / iZzk;
        this.zzg = new byte[zzaofVar.zzd * i4];
        this.zzh = new zzdy(i4 * (iZzk + iZzk) * i);
        int i5 = ((zzaofVar.zzc * zzaofVar.zzd) * 8) / iZzk;
        zzz zzzVar = new zzz();
        zzzVar.zzaa("audio/raw");
        zzzVar.zzy(i5);
        zzzVar.zzV(i5);
        zzzVar.zzR((iMax + iMax) * i);
        zzzVar.zzz(zzaofVar.zzb);
        zzzVar.zzab(zzaofVar.zzc);
        zzzVar.zzU(2);
        this.zzj = zzzVar.zzag();
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long jZzu = this.zzl + zzei.zzu(this.zzn, 1000000L, this.zze.zzc, RoundingMode.DOWN);
        int iZze = zze(i);
        this.zzd.zzt(jZzu, 1, iZze, this.zzm - iZze, null);
        this.zzn += (long) i;
        this.zzm -= iZze;
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zza(int i, long j) {
        this.zzc.zzO(new zzaoi(this.zze, this.zzf, i, j));
        this.zzd.zzm(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003f A[LOOP:0: B:6:0x0024->B:12:0x003f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0021 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0026  */
    /* JADX WARN: Code duplicated, block: B:9:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003c -> B:4:0x0021). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.google.android.gms.internal.ads.zzaoc
    public final boolean zzc(com.google.android.gms.internal.ads.zzaco r21, long r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaob.zzc(com.google.android.gms.internal.ads.zzaco, long):boolean");
    }
}

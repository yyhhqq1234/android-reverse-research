package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
class zziy extends zzix {
    protected final byte[] zza;

    zziy(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjb) || zzd() != ((zzjb) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zziy)) {
            return obj.equals(this);
        }
        zziy zziyVar = (zziy) obj;
        int iZzk = zzk();
        int iZzk2 = zziyVar.zzk();
        if (iZzk != 0 && iZzk2 != 0 && iZzk != iZzk2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zziyVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zziyVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zziyVar.zzd());
        }
        if (!(zziyVar instanceof zziy)) {
            return zziyVar.zzf(0, iZzd).equals(zzf(0, iZzd));
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zziyVar.zza;
        zziyVar.zzc();
        int i = 0;
        int i2 = 0;
        while (i < iZzd) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    protected final int zze(int i, int i2, int i3) {
        return zzkk.zzd(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final zzjb zzf(int i, int i2) {
        int iZzj = zzj(0, i2, zzd());
        return iZzj == 0 ? zzjb.zzb : new zziv(this.zza, 0, iZzj);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    final void zzh(zzir zzirVar) throws IOException {
        ((zzjg) zzirVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean zzi() {
        return zzna.zzf(this.zza, 0, zzd());
    }
}

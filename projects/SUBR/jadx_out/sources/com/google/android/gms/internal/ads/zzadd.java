package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadd {
    private final zzdy zza = new zzdy(10);

    public final zzay zza(zzaco zzacoVar, zzage zzageVar) throws IOException {
        zzay zzayVarZza = null;
        int i = 0;
        while (true) {
            try {
                zzacoVar.zzh(this.zza.zzN(), 0, 10);
                this.zza.zzL(0);
                if (this.zza.zzo() != 4801587) {
                    break;
                }
                this.zza.zzM(3);
                int iZzl = this.zza.zzl();
                int i2 = iZzl + 10;
                if (zzayVarZza == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.zza.zzN(), 0, bArr, 0, 10);
                    zzacoVar.zzh(bArr, 10, iZzl);
                    zzayVarZza = zzagg.zza(bArr, i2, zzageVar, new zzafi());
                } else {
                    zzacoVar.zzg(iZzl);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        zzacoVar.zzj();
        zzacoVar.zzg(i);
        return zzayVarZza;
    }
}

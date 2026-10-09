package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakt implements zzakf {
    private final zzdy zza = new zzdy();
    private final zzdy zzb = new zzdy();
    private final zzaks zzc = new zzaks();
    private Inflater zzd;

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        this.zza.zzJ(bArr, i2 + i);
        this.zza.zzL(i);
        zzdy zzdyVar = this.zza;
        if (zzdyVar.zzb() > 0 && zzdyVar.zzf() == 120) {
            if (this.zzd == null) {
                this.zzd = new Inflater();
            }
            if (zzei.zzH(zzdyVar, this.zzb, this.zzd)) {
                zzdy zzdyVar2 = this.zzb;
                zzdyVar.zzJ(zzdyVar2.zzN(), zzdyVar2.zze());
            }
        }
        this.zzc.zze();
        ArrayList arrayList = new ArrayList();
        while (true) {
            zzdy zzdyVar3 = this.zza;
            if (zzdyVar3.zzb() < 3) {
                zzdbVar.zza(new zzajx(arrayList, -9223372036854775807L, -9223372036854775807L));
                return;
            }
            zzaks zzaksVar = this.zzc;
            int iZze = zzdyVar3.zze();
            int iZzm = zzdyVar3.zzm();
            int iZzq = zzdyVar3.zzq();
            int iZzd = zzdyVar3.zzd() + iZzq;
            zzco zzcoVar = null;
            if (iZzd > iZze) {
                zzdyVar3.zzL(iZze);
            } else {
                if (iZzm != 128) {
                    switch (iZzm) {
                        case 20:
                            zzaks.zzd(zzaksVar, zzdyVar3, iZzq);
                            break;
                        case 21:
                            zzaks.zzb(zzaksVar, zzdyVar3, iZzq);
                            break;
                        case 22:
                            zzaks.zzc(zzaksVar, zzdyVar3, iZzq);
                            break;
                    }
                } else {
                    zzco zzcoVarZza = zzaksVar.zza();
                    zzaksVar.zze();
                    zzcoVar = zzcoVarZza;
                }
                zzdyVar3.zzL(iZzd);
            }
            if (zzcoVar != null) {
                arrayList.add(zzcoVar);
            }
        }
    }
}

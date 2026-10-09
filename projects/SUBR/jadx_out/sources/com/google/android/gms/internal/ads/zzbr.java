package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbr {
    public final int zza;
    public final String zzb;
    public final int zzc;
    private final zzab[] zzd;
    private int zze;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbr(String str, zzab... zzabVarArr) {
        int length = zzabVarArr.length;
        int i = 1;
        zzcw.zzd(length > 0);
        this.zzb = str;
        this.zzd = zzabVarArr;
        this.zza = length;
        int iZzb = zzbb.zzb(zzabVarArr[0].zzo);
        this.zzc = iZzb == -1 ? zzbb.zzb(zzabVarArr[0].zzn) : iZzb;
        String strZzc = zzc(zzabVarArr[0].zzd);
        int i2 = zzabVarArr[0].zzf | 16384;
        while (true) {
            zzab[] zzabVarArr2 = this.zzd;
            if (i >= zzabVarArr2.length) {
                return;
            }
            if (!strZzc.equals(zzc(zzabVarArr2[i].zzd))) {
                zzab[] zzabVarArr3 = this.zzd;
                zzd("languages", zzabVarArr3[0].zzd, zzabVarArr3[i].zzd, i);
                return;
            } else {
                zzab[] zzabVarArr4 = this.zzd;
                if (i2 != (zzabVarArr4[i].zzf | 16384)) {
                    zzd("role flags", Integer.toBinaryString(zzabVarArr4[0].zzf), Integer.toBinaryString(this.zzd[i].zzf), i);
                    return;
                }
                i++;
            }
        }
    }

    private static String zzc(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private static void zzd(String str, String str2, String str3, int i) {
        zzdo.zzd("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzbr zzbrVar = (zzbr) obj;
            if (this.zzb.equals(zzbrVar.zzb) && Arrays.equals(this.zzd, zzbrVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zze;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((this.zzb.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Arrays.hashCode(this.zzd);
        this.zze = iHashCode;
        return iHashCode;
    }

    public final int zza(zzab zzabVar) {
        int i = 0;
        while (true) {
            zzab[] zzabVarArr = this.zzd;
            if (i >= zzabVarArr.length) {
                return -1;
            }
            if (zzabVar == zzabVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public final zzab zzb(int i) {
        return this.zzd[i];
    }
}

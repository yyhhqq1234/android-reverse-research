package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzad {
    public final String zza;
    public final String zzb;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzad(String str, String str2) {
        this.zza = zzei.zzE(str);
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzad zzadVar = (zzad) obj;
            if (Objects.equals(this.zza, zzadVar.zza) && Objects.equals(this.zzb, zzadVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zzb.hashCode() * 31;
        String str = this.zza;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}

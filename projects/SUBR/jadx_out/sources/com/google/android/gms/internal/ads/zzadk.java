package com.google.android.gms.internal.ads;

import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadk {
    public final zzadn zza;
    public final zzadn zzb;

    public zzadk(zzadn zzadnVar, zzadn zzadnVar2) {
        this.zza = zzadnVar;
        this.zzb = zzadnVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzadk zzadkVar = (zzadk) obj;
            if (this.zza.equals(zzadkVar.zza) && this.zzb.equals(zzadkVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        zzadn zzadnVar = this.zza;
        zzadn zzadnVar2 = this.zzb;
        return y8.i.d + zzadnVar.toString() + (zzadnVar.equals(zzadnVar2) ? "" : ", ".concat(this.zzb.toString())) + y8.i.e;
    }
}

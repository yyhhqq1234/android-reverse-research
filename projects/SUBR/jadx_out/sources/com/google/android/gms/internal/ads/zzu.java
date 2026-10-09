package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzu implements Comparator<zzt>, Parcelable {
    public static final Parcelable.Creator<zzu> CREATOR = new zzr();
    public final String zza;
    public final int zzb;
    private final zzt[] zzc;
    private int zzd;

    zzu(Parcel parcel) {
        this.zza = parcel.readString();
        zzt[] zztVarArr = (zzt[]) parcel.createTypedArray(zzt.CREATOR);
        int i = zzei.zza;
        zzt[] zztVarArr2 = zztVarArr;
        this.zzc = zztVarArr2;
        this.zzb = zztVarArr2.length;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzt zztVar, zzt zztVar2) {
        zzt zztVar3 = zztVar;
        zzt zztVar4 = zztVar2;
        if (zzh.zza.equals(zztVar3.zza)) {
            return !zzh.zza.equals(zztVar4.zza) ? 1 : 0;
        }
        return zztVar3.zza.compareTo(zztVar4.zza);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzu zzuVar = (zzu) obj;
            if (Objects.equals(this.zza, zzuVar.zza) && Arrays.equals(this.zzc, zzuVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeTypedArray(this.zzc, 0);
    }

    public final zzt zza(int i) {
        return this.zzc[i];
    }

    public final zzu zzb(String str) {
        return Objects.equals(this.zza, str) ? this : new zzu(str, false, this.zzc);
    }

    public final int hashCode() {
        int i = this.zzd;
        if (i != 0) {
            return i;
        }
        String str = this.zza;
        int iHashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.zzc);
        this.zzd = iHashCode;
        return iHashCode;
    }

    private zzu(String str, boolean z, zzt... zztVarArr) {
        this.zza = str;
        zztVarArr = z ? (zzt[]) zztVarArr.clone() : zztVarArr;
        this.zzc = zztVarArr;
        this.zzb = zztVarArr.length;
        Arrays.sort(zztVarArr, this);
    }

    public zzu(String str, zzt... zztVarArr) {
        this(null, true, zztVarArr);
    }

    public zzu(List list) {
        this(null, false, (zzt[]) list.toArray(new zzt[0]));
    }
}

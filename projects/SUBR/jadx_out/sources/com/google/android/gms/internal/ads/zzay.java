package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay implements Parcelable {
    public static final Parcelable.Creator<zzay> CREATOR = new zzaw();
    public final long zza;
    private final zzax[] zzb;

    public zzay(long j, zzax... zzaxVarArr) {
        this.zza = j;
        this.zzb = zzaxVarArr;
    }

    zzay(Parcel parcel) {
        this.zzb = new zzax[parcel.readInt()];
        int i = 0;
        while (true) {
            zzax[] zzaxVarArr = this.zzb;
            if (i >= zzaxVarArr.length) {
                this.zza = parcel.readLong();
                return;
            } else {
                zzaxVarArr[i] = (zzax) parcel.readParcelable(zzax.class.getClassLoader());
                i++;
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzay zzayVar = (zzay) obj;
            if (Arrays.equals(this.zzb, zzayVar.zzb) && this.zza == zzayVar.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.zzb) * 31;
        long j = this.zza;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        String str;
        long j = this.zza;
        String string = Arrays.toString(this.zzb);
        if (j == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        return "entries=" + string + str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzb.length);
        for (zzax zzaxVar : this.zzb) {
            parcel.writeParcelable(zzaxVar, 0);
        }
        parcel.writeLong(this.zza);
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final zzax zzb(int i) {
        return this.zzb[i];
    }

    public final zzay zzc(zzax... zzaxVarArr) {
        int length = zzaxVarArr.length;
        if (length == 0) {
            return this;
        }
        long j = this.zza;
        zzax[] zzaxVarArr2 = this.zzb;
        int i = zzei.zza;
        int length2 = zzaxVarArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(zzaxVarArr2, length2 + length);
        System.arraycopy(zzaxVarArr, 0, objArrCopyOf, length2, length);
        return new zzay(j, (zzax[]) objArrCopyOf);
    }

    public final zzay zzd(zzay zzayVar) {
        return zzayVar == null ? this : zzc(zzayVar.zzb);
    }

    public zzay(List list) {
        this(-9223372036854775807L, (zzax[]) list.toArray(new zzax[0]));
    }
}

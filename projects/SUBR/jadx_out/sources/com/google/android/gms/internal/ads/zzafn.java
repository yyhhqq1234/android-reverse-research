package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzafn implements zzax {
    public static final Parcelable.Creator<zzafn> CREATOR = new zzafm();
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzafn(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    zzafn(Parcel parcel) {
        this.zza = parcel.readInt();
        String string = parcel.readString();
        int i = zzei.zza;
        this.zzb = string;
        this.zzc = parcel.readString();
        this.zzd = parcel.readInt();
        this.zze = parcel.readInt();
        this.zzf = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzh = parcel.createByteArray();
    }

    public static zzafn zzb(zzdy zzdyVar) {
        int iZzg = zzdyVar.zzg();
        String strZze = zzbb.zze(zzdyVar.zzB(zzdyVar.zzg(), StandardCharsets.US_ASCII));
        String strZzB = zzdyVar.zzB(zzdyVar.zzg(), StandardCharsets.UTF_8);
        int iZzg2 = zzdyVar.zzg();
        int iZzg3 = zzdyVar.zzg();
        int iZzg4 = zzdyVar.zzg();
        int iZzg5 = zzdyVar.zzg();
        int iZzg6 = zzdyVar.zzg();
        byte[] bArr = new byte[iZzg6];
        zzdyVar.zzH(bArr, 0, iZzg6);
        return new zzafn(iZzg, strZze, strZzB, iZzg2, iZzg3, iZzg4, iZzg5, bArr);
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
            zzafn zzafnVar = (zzafn) obj;
            if (this.zza == zzafnVar.zza && this.zzb.equals(zzafnVar.zzb) && this.zzc.equals(zzafnVar.zzc) && this.zzd == zzafnVar.zzd && this.zze == zzafnVar.zze && this.zzf == zzafnVar.zzf && this.zzg == zzafnVar.zzg && Arrays.equals(this.zzh, zzafnVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.zza + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + this.zzd) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31) + Arrays.hashCode(this.zzh);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.zzb + ", description=" + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeInt(this.zzd);
        parcel.writeInt(this.zze);
        parcel.writeInt(this.zzf);
        parcel.writeInt(this.zzg);
        parcel.writeByteArray(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzax
    public final void zza(zzat zzatVar) {
        zzatVar.zza(this.zzh, this.zza);
    }
}

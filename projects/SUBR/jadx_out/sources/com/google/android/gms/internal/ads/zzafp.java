package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class zzafp implements zzax {
    public static final Parcelable.Creator<zzafp> CREATOR = new zzafo();
    public final String zza;
    public final String zzb;

    protected zzafp(Parcel parcel) {
        String string = parcel.readString();
        int i = zzei.zza;
        this.zza = string;
        this.zzb = parcel.readString();
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
            zzafp zzafpVar = (zzafp) obj;
            if (this.zza.equals(zzafpVar.zza) && this.zzb.equals(zzafpVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return "VC: " + this.zza + y8.i.b + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    @Override // com.google.android.gms.internal.ads.zzax
    public final void zza(zzat zzatVar) {
        byte b;
        switch (this.zza) {
            case "ALBUM":
                b = 2;
                break;
            case "TITLE":
                b = 0;
                break;
            case "DESCRIPTION":
                b = 4;
                break;
            case "ALBUMARTIST":
                b = 3;
                break;
            case "ARTIST":
                b = 1;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            zzatVar.zzq(this.zzb);
            return;
        }
        if (b == 1) {
            zzatVar.zze(this.zzb);
            return;
        }
        if (b == 2) {
            zzatVar.zzd(this.zzb);
        } else if (b == 3) {
            zzatVar.zzc(this.zzb);
        } else {
            if (b != 4) {
                return;
            }
            zzatVar.zzh(this.zzb);
        }
    }

    public zzafp(String str, String str2) {
        this.zza = zzftt.zzb(str);
        this.zzb = str2;
    }
}

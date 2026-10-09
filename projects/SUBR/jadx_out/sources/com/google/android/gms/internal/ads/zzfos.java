package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfos extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfos> CREATOR = new zzfot();
    public final int zza;
    private zzasy zzb = null;
    private byte[] zzc;

    zzfos(int i, byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        byte[] bArrZzaV = this.zzc;
        if (bArrZzaV == null) {
            bArrZzaV = this.zzb.zzaV();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArrZzaV, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzasy zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzasy.zzd(this.zzc, zzgxb.zza());
                this.zzc = null;
            } catch (zzgyg | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzb();
        return this.zzb;
    }

    private final void zzb() {
        zzasy zzasyVar = this.zzb;
        if (zzasyVar != null || this.zzc == null) {
            if (zzasyVar == null || this.zzc != null) {
                if (zzasyVar != null && this.zzc != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (zzasyVar != null || this.zzc != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }
}

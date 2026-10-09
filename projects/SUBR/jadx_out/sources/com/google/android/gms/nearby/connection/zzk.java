package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-nearby@@18.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator<ConnectionOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        byte[] bArrCreateByteArray = null;
        boolean z = false;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = true;
        boolean z8 = true;
        boolean z9 = false;
        boolean z10 = true;
        boolean z11 = true;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 2:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 3:
                    z3 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 4:
                    z4 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 5:
                    z5 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 6:
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    z7 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 8:
                    z8 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 10:
                    z9 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 12:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ConnectionOptions(z, z2, z3, z4, z5, z6, z7, z8, bArrCreateByteArray, z9, z10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionOptions[] newArray(int i) {
        return new ConnectionOptions[i];
    }
}

package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbvb extends zzayb implements zzbvc {
    public zzbvb() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    protected final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzayc.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzayc.zzc(parcel);
            zzf(parcelFileDescriptor);
        } else if (i == 2) {
            com.google.android.gms.ads.internal.util.zzbb zzbbVar = (com.google.android.gms.ads.internal.util.zzbb) zzayc.zza(parcel, com.google.android.gms.ads.internal.util.zzbb.CREATOR);
            zzayc.zzc(parcel);
            zze(zzbbVar);
        } else {
            if (i != 3) {
                return false;
            }
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) zzayc.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzbvk zzbvkVar = (zzbvk) zzayc.zza(parcel, zzbvk.CREATOR);
            zzayc.zzc(parcel);
            zzg(parcelFileDescriptor2, zzbvkVar);
        }
        parcel2.writeNoException();
        return true;
    }
}

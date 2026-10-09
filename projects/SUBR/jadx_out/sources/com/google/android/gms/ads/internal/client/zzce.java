package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzce extends zzayb implements zzcf {
    public zzce() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    protected final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzft zzftVar = (zzft) zzayc.zza(parcel, zzft.CREATOR);
            zzayc.zzc(parcel);
            zze(zzftVar);
        } else {
            if (i != 2) {
                return false;
            }
            zzft zzftVar2 = (zzft) zzayc.zza(parcel, zzft.CREATOR);
            zzayc.zzc(parcel);
            zzf(zzftVar2);
        }
        parcel2.writeNoException();
        return true;
    }
}

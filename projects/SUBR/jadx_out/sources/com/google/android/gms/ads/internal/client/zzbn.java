package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbn extends zzayb implements zzbo {
    public zzbn() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    protected final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzc();
        } else {
            if (i != 2) {
                return false;
            }
            zze zzeVar = (zze) zzayc.zza(parcel, zze.CREATOR);
            zzayc.zzc(parcel);
            zzb(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}

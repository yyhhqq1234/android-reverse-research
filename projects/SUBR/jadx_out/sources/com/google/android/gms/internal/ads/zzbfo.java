package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbfo extends zzayb implements zzbfp {
    public zzbfo() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static zzbfp zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return iInterfaceQueryLocalInterface instanceof zzbfp ? (zzbfp) iInterfaceQueryLocalInterface : new zzbfn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    protected final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String strZzg = zzg();
            parcel2.writeNoException();
            parcel2.writeString(strZzg);
            return true;
        }
        if (i != 3) {
            return false;
        }
        List listZzh = zzh();
        parcel2.writeNoException();
        parcel2.writeList(listZzh);
        return true;
    }
}

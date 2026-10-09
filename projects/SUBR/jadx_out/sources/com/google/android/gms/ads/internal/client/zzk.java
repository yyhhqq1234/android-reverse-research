package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbuh;
import com.google.android.gms.internal.ads.zzbuj;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzk extends RemoteCreator {
    private zzbuj zza;

    public zzk() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof zzbz ? (zzbz) iInterfaceQueryLocalInterface : new zzbz(iBinder);
    }

    public final zzby zza(Context context, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        zzbcl.zza(context);
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue()) {
            try {
                IBinder iBinderZze = ((zzbz) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), zzsVar, str, zzbpeVar, 244410000, i);
                if (iBinderZze == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                return iInterfaceQueryLocalInterface instanceof zzby ? (zzby) iInterfaceQueryLocalInterface : new zzbw(iBinderZze);
            } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder iBinderZze2 = ((zzbz) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzj
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return iInterfaceQueryLocalInterface2 instanceof zzbz ? (zzbz) iInterfaceQueryLocalInterface2 : new zzbz(iBinder);
                }
            })).zze(ObjectWrapper.wrap(context), zzsVar, str, zzbpeVar, 244410000, i);
            if (iBinderZze2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = iBinderZze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return iInterfaceQueryLocalInterface2 instanceof zzby ? (zzby) iInterfaceQueryLocalInterface2 : new zzbw(iBinderZze2);
        } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e2) {
            zzbuj zzbujVarZza = zzbuh.zza(context);
            this.zza = zzbujVarZza;
            zzbujVarZza.zzh(e2, "AdManagerCreator.newAdManagerByDynamiteLoader");
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
            return null;
        }
    }
}

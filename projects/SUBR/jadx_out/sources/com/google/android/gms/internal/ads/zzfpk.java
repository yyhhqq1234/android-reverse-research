package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfpk {
    final zzfpn zza;
    final boolean zzb;

    private zzfpk(zzfpn zzfpnVar) {
        this.zza = zzfpnVar;
        this.zzb = zzfpnVar != null;
    }

    public static zzfpk zzb(Context context, String str, String str2) {
        zzfpn zzfplVar;
        try {
            try {
                try {
                    IBinder iBinderInstantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    IBinder iBinder = iBinderInstantiate;
                    if (iBinderInstantiate == null) {
                        zzfplVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderInstantiate.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfplVar = iInterfaceQueryLocalInterface instanceof zzfpn ? (zzfpn) iInterfaceQueryLocalInterface : new zzfpl(iBinderInstantiate);
                    }
                    zzfpn zzfpnVar = zzfplVar;
                    zzfplVar.zze(ObjectWrapper.wrap(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzfpk(zzfplVar);
                } catch (Exception e) {
                    throw new zzfom(e);
                }
            } catch (Exception e2) {
                throw new zzfom(e2);
            }
        } catch (RemoteException | zzfom | NullPointerException | SecurityException unused) {
            Log.d("GASS", "Cannot dynamite load clearcut");
            return new zzfpk(new zzfpo());
        }
    }

    public static zzfpk zzc() {
        zzfpo zzfpoVar = new zzfpo();
        Log.d("GASS", "Clearcut logging disabled");
        return new zzfpk(zzfpoVar);
    }

    public final zzfpi zza(byte[] bArr) {
        return new zzfpi(this, bArr, null);
    }
}

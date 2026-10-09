package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdf {
    private static zzfdf zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcw zzc;
    private final AtomicReference zzd = new AtomicReference();

    zzfdf(Context context, com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.zzb = context;
        this.zzc = zzcwVar;
    }

    static com.google.android.gms.ads.internal.client.zzcw zza(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzcv.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to retrieve lite SDK info.", e);
            return null;
        }
    }

    public static zzfdf zzd(Context context) {
        synchronized (zzfdf.class) {
            zzfdf zzfdfVar = zza;
            if (zzfdfVar != null) {
                return zzfdfVar;
            }
            Context applicationContext = context.getApplicationContext();
            long jLongValue = ((Long) zzbem.zzb.zze()).longValue();
            com.google.android.gms.ads.internal.client.zzcw zzcwVarZza = null;
            if (jLongValue > 0 && jLongValue <= 244410203) {
                zzcwVarZza = zza(applicationContext);
            }
            zzfdf zzfdfVar2 = new zzfdf(applicationContext, zzcwVarZza);
            zza = zzfdfVar2;
            return zzfdfVar2;
        }
    }

    private final com.google.android.gms.ads.internal.client.zzfb zzg() {
        com.google.android.gms.ads.internal.client.zzcw zzcwVar = this.zzc;
        if (zzcwVar != null) {
            try {
                return zzcwVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public final zzbpe zzb() {
        return (zzbpe) this.zzd.get();
    }

    public final VersionInfoParcel zzc(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.client.zzfb zzfbVarZzg;
        com.google.android.gms.ads.internal.zzv.zzq();
        boolean zZzF = com.google.android.gms.ads.internal.util.zzs.zzF(this.zzb);
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(244410000, i2, true, zZzF);
        return (((Boolean) zzbem.zzc.zze()).booleanValue() && (zzfbVarZzg = zzg()) != null) ? new VersionInfoParcel(244410000, zzfbVarZzg.zza(), true, zZzF) : versionInfoParcel;
    }

    public final String zze() {
        com.google.android.gms.ads.internal.client.zzfb zzfbVarZzg = zzg();
        if (zzfbVarZzg != null) {
            return zzfbVarZzg.zzb();
        }
        return null;
    }

    public final void zzf(zzbpe zzbpeVar) {
        zzbpe adapterCreator;
        if (!((Boolean) zzbem.zza.zze()).booleanValue()) {
            zzfde.zza(this.zzd, null, zzbpeVar);
            return;
        }
        com.google.android.gms.ads.internal.client.zzcw zzcwVar = this.zzc;
        if (zzcwVar == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = zzcwVar.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        AtomicReference atomicReference = this.zzd;
        if (adapterCreator != null) {
            zzbpeVar = adapterCreator;
        }
        zzfde.zza(atomicReference, null, zzbpeVar);
    }
}

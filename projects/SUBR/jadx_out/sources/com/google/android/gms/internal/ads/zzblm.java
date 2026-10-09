package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzblm implements zzapf {
    private volatile zzbkz zza;
    private final Context zzb;

    public zzblm(Context context) {
        this.zzb = context;
    }

    static /* bridge */ /* synthetic */ void zzc(zzblm zzblmVar) {
        if (zzblmVar.zza == null) {
            return;
        }
        zzblmVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzapf
    public final zzapi zza(zzapm zzapmVar) throws zzapv {
        Parcelable.Creator<zzbla> creator = zzbla.CREATOR;
        Map mapZzl = zzapmVar.zzl();
        int size = mapZzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry entry : mapZzl.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            strArr2[i2] = (String) entry.getValue();
            i2++;
        }
        zzbla zzblaVar = new zzbla(zzapmVar.zzk(), strArr, strArr2);
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
        try {
            zzcab zzcabVar = new zzcab();
            this.zza = new zzbkz(this.zzb, com.google.android.gms.ads.internal.zzv.zzu().zzb(), new zzblk(this, zzcabVar), new zzbll(this, zzcabVar));
            this.zza.checkAvailabilityAndConnect();
            ListenableFuture listenableFutureZzo = zzgch.zzo(zzgch.zzn(zzcabVar, new zzbli(this, zzblaVar), zzbzw.zza), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzey)).intValue(), TimeUnit.MILLISECONDS, zzbzw.zzd);
            listenableFutureZzo.addListener(new zzblj(this), zzbzw.zza);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) listenableFutureZzo.get();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            zzblc zzblcVar = (zzblc) new zzbvi(parcelFileDescriptor).zza(zzblc.CREATOR);
            if (zzblcVar == null) {
                return null;
            }
            if (zzblcVar.zza) {
                throw new zzapv(zzblcVar.zzb);
            }
            if (zzblcVar.zze.length != zzblcVar.zzf.length) {
                return null;
            }
            HashMap map = new HashMap();
            while (true) {
                String[] strArr3 = zzblcVar.zze;
                if (i >= strArr3.length) {
                    return new zzapi(zzblcVar.zzc, zzblcVar.zzd, map, zzblcVar.zzg, zzblcVar.zzh);
                }
                map.put(strArr3[i], zzblcVar.zzf[i]);
                i++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            throw th;
        }
    }
}

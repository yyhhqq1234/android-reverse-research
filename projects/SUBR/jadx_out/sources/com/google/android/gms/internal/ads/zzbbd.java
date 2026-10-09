package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbbd implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbav zza;
    final /* synthetic */ zzcab zzb;
    final /* synthetic */ zzbbf zzc;

    zzbbd(zzbbf zzbbfVar, zzbav zzbavVar, zzcab zzcabVar) {
        this.zza = zzbavVar;
        this.zzb = zzcabVar;
        this.zzc = zzbbfVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzc.zzd) {
            zzbbf zzbbfVar = this.zzc;
            if (zzbbfVar.zzb) {
                return;
            }
            zzbbfVar.zzb = true;
            final zzbau zzbauVar = this.zzc.zza;
            if (zzbauVar == null) {
                return;
            }
            zzgcs zzgcsVar = zzbzw.zza;
            final zzbav zzbavVar = this.zza;
            final zzcab zzcabVar = this.zzb;
            final ListenableFuture listenableFutureZza = zzgcsVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbba
                @Override // java.lang.Runnable
                public final void run() {
                    zzbbd zzbbdVar = this.zza;
                    zzbau zzbauVar2 = zzbauVar;
                    zzcab zzcabVar2 = zzcabVar;
                    try {
                        zzbax zzbaxVarZzq = zzbauVar2.zzq();
                        boolean zZzp = zzbauVar2.zzp();
                        zzbav zzbavVar2 = zzbavVar;
                        zzbas zzbasVarZzg = zZzp ? zzbaxVarZzq.zzg(zzbavVar2) : zzbaxVarZzq.zzf(zzbavVar2);
                        if (!zzbasVarZzg.zze()) {
                            zzcabVar2.zzd(new RuntimeException("No entry contents."));
                            zzbbf.zze(zzbbdVar.zzc);
                            return;
                        }
                        zzbbc zzbbcVar = new zzbbc(zzbbdVar, zzbasVarZzg.zzc(), 1);
                        int i = zzbbcVar.read();
                        if (i == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzbbcVar.unread(i);
                        zzcabVar2.zzc(zzbbh.zzb(zzbbcVar, zzbasVarZzg.zzd(), zzbasVarZzg.zzg(), zzbasVarZzg.zza(), zzbasVarZzg.zzf()));
                    } catch (RemoteException | IOException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                        zzcabVar2.zzd(e);
                        zzbbf.zze(zzbbdVar.zzc);
                    }
                }
            });
            final zzcab zzcabVar2 = this.zzb;
            zzcabVar2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbb
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzbbd.zzd;
                    if (zzcabVar2.isCancelled()) {
                        listenableFutureZza.cancel(true);
                    }
                }
            }, zzbzw.zzg);
        }
    }
}

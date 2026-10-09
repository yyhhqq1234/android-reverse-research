package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzazb implements Runnable {
    final /* synthetic */ zzazc zza;

    zzazb(zzazc zzazcVar) {
        this.zza = zzazcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza.zzc) {
            zzazc zzazcVar = this.zza;
            if (zzazcVar.zzd && zzazcVar.zze) {
                zzazcVar.zzd = false;
                com.google.android.gms.ads.internal.util.client.zzo.zze("App went background");
                Iterator it = this.zza.zzf.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzazd) it.next()).zza(false);
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                    }
                }
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zze("App is still foreground");
            }
        }
    }
}

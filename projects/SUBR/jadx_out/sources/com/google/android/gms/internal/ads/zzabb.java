package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabb {
    private final Handler zza;
    private final zzabc zzb;

    public zzabb(Handler handler, zzabc zzabcVar) {
        if (zzabcVar == null) {
            handler = null;
        }
        this.zza = handler;
        this.zzb = zzabcVar;
    }

    public final void zza(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaar
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzg(str, j, j2);
                }
            });
        }
    }

    public final void zzb(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaba
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzh(str);
                }
            });
        }
    }

    public final void zzc(final zzhs zzhsVar) {
        zzhsVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaz
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzi(zzhsVar);
                }
            });
        }
    }

    public final void zzd(final int i, final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaat
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzj(i, j);
                }
            });
        }
    }

    public final void zze(final zzhs zzhsVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaax
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzk(zzhsVar);
                }
            });
        }
    }

    public final void zzf(final zzab zzabVar, final zzht zzhtVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaay
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzl(zzabVar, zzhtVar);
                }
            });
        }
    }

    final /* synthetic */ void zzg(String str, long j, long j2) {
        int i = zzei.zza;
        this.zzb.zzp(str, j, j2);
    }

    final /* synthetic */ void zzh(String str) {
        int i = zzei.zza;
        this.zzb.zzq(str);
    }

    final /* synthetic */ void zzi(zzhs zzhsVar) {
        zzhsVar.zza();
        int i = zzei.zza;
        this.zzb.zzr(zzhsVar);
    }

    final /* synthetic */ void zzj(int i, long j) {
        int i2 = zzei.zza;
        this.zzb.zzl(i, j);
    }

    final /* synthetic */ void zzk(zzhs zzhsVar) {
        int i = zzei.zza;
        this.zzb.zzs(zzhsVar);
    }

    final /* synthetic */ void zzl(zzab zzabVar, zzht zzhtVar) {
        int i = zzei.zza;
        this.zzb.zzu(zzabVar, zzhtVar);
    }

    final /* synthetic */ void zzm(Object obj, long j) {
        int i = zzei.zza;
        this.zzb.zzm(obj, j);
    }

    final /* synthetic */ void zzn(long j, int i) {
        int i2 = zzei.zza;
        this.zzb.zzt(j, i);
    }

    final /* synthetic */ void zzo(Exception exc) {
        int i = zzei.zza;
        this.zzb.zzo(exc);
    }

    final /* synthetic */ void zzp(zzcd zzcdVar) {
        int i = zzei.zza;
        this.zzb.zzv(zzcdVar);
    }

    public final void zzq(final Object obj) {
        Handler handler = this.zza;
        if (handler != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaau
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzm(obj, jElapsedRealtime);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaav
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzn(j, i);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaw
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(exc);
                }
            });
        }
    }

    public final void zzt(final zzcd zzcdVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaas
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzp(zzcdVar);
                }
            });
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcqb implements zzayk {
    private final zzcex zza;
    private final Executor zzb;
    private final AtomicReference zzc = new AtomicReference();

    zzcqb(zzcex zzcexVar, Executor executor) {
        this.zza = zzcexVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final synchronized void zzdn(zzayj zzayjVar) {
        if (this.zza != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmv)).booleanValue()) {
                if (zzayjVar.zzj) {
                    if (!Boolean.TRUE.equals(this.zzc.getAndSet(true))) {
                        Executor executor = this.zzb;
                        final zzcex zzcexVar = this.zza;
                        Objects.requireNonNull(zzcexVar);
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpz
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcexVar.onResume();
                            }
                        });
                        return;
                    }
                }
                if (!zzayjVar.zzj) {
                    if (!Boolean.FALSE.equals(this.zzc.getAndSet(false))) {
                        Executor executor2 = this.zzb;
                        final zzcex zzcexVar2 = this.zza;
                        Objects.requireNonNull(zzcexVar2);
                        executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqa
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcexVar2.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}

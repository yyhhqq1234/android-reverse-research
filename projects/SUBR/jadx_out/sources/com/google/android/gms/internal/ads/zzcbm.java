package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbm {
    private long zzb;
    private final long zza = TimeUnit.MILLISECONDS.toNanos(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzQ)).longValue());
    private boolean zzc = true;

    zzcbm() {
    }

    public final void zza(SurfaceTexture surfaceTexture, final zzcax zzcaxVar) {
        if (zzcaxVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.zzc) {
            long j = timestamp - this.zzb;
            if (Math.abs(j) < this.zza) {
                return;
            }
        }
        this.zzc = false;
        this.zzb = timestamp;
        zzfqw zzfqwVar = com.google.android.gms.ads.internal.util.zzs.zza;
        Objects.requireNonNull(zzcaxVar);
        zzfqwVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbl
            @Override // java.lang.Runnable
            public final void run() {
                zzcaxVar.zzk();
            }
        });
    }

    public final void zzb() {
        this.zzc = true;
    }
}

package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapd {
    private final Executor zza;

    public zzapd(Handler handler) {
        this.zza = new zzapb(this, handler);
    }

    public final void zza(zzapm zzapmVar, zzapv zzapvVar) {
        zzapmVar.zzm("post-error");
        ((zzapb) this.zza).zza.post(new zzapc(zzapmVar, zzaps.zza(zzapvVar), null));
    }

    public final void zzb(zzapm zzapmVar, zzaps zzapsVar, Runnable runnable) {
        zzapmVar.zzq();
        zzapmVar.zzm("post-response");
        ((zzapb) this.zza).zza.post(new zzapc(zzapmVar, zzapsVar, runnable));
    }
}

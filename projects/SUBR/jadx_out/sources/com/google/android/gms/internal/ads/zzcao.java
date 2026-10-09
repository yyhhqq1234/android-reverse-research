package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcao implements Runnable {
    final /* synthetic */ MediaPlayer zza;
    final /* synthetic */ zzcaw zzb;

    zzcao(zzcaw zzcawVar, MediaPlayer mediaPlayer) {
        this.zza = mediaPlayer;
        this.zzb = zzcawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcaw.zzl(this.zzb, this.zza);
        zzcaw zzcawVar = this.zzb;
        if (zzcawVar.zzq != null) {
            zzcawVar.zzq.zzf();
        }
    }
}

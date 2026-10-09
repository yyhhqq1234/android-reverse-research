package com.google.android.gms.internal.ads;

import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqf {
    private final AudioTrack zza;
    private final zzon zzb;
    private AudioRouting.OnRoutingChangedListener zzc = new AudioRouting.OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.zzqe
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        public final void onRoutingChanged(AudioRouting audioRouting) {
            zzqf.zza(this.zza, audioRouting);
        }
    };

    public zzqf(AudioTrack audioTrack, zzon zzonVar) {
        this.zza = audioTrack;
        this.zzb = zzonVar;
        audioTrack.addOnRoutingChangedListener(this.zzc, new Handler(Looper.myLooper()));
    }

    public static /* synthetic */ void zza(zzqf zzqfVar, AudioRouting audioRouting) {
        if (zzqfVar.zzc == null || audioRouting.getRoutedDevice() == null) {
            return;
        }
        zzqfVar.zzb.zzh(audioRouting.getRoutedDevice());
    }

    public final void zzb() {
        AudioRouting.OnRoutingChangedListener onRoutingChangedListener = this.zzc;
        onRoutingChangedListener.getClass();
        this.zza.removeOnRoutingChangedListener(onRoutingChangedListener);
        this.zzc = null;
    }
}

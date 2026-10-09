package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqj extends AudioTrack.StreamEventCallback {
    final /* synthetic */ zzqk zza;

    zzqj(zzqk zzqkVar) {
        this.zza = zzqkVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        audioTrack.equals(this.zza.zza.zzt);
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onPresentationEnded(AudioTrack audioTrack) {
        if (audioTrack.equals(this.zza.zza.zzt)) {
            this.zza.zza.zzQ = true;
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        audioTrack.equals(this.zza.zza.zzt);
    }
}

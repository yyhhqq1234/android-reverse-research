package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpx {
    public static void zza(AudioTrack audioTrack, zzoo zzooVar) {
        audioTrack.setPreferredDevice(zzooVar == null ? null : zzooVar.zza);
    }
}

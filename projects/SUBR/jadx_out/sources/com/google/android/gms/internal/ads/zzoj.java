package com.google.android.gms.internal.ads;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzoj extends AudioDeviceCallback {
    final /* synthetic */ zzon zza;

    /* synthetic */ zzoj(zzon zzonVar, zzom zzomVar) {
        this.zza = zzonVar;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzon zzonVar = this.zza;
        this.zza.zzj(zzoi.zzc(zzonVar.zza, zzonVar.zzh, zzonVar.zzg));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzoo zzooVar = this.zza.zzg;
        int i = zzei.zza;
        for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
            if (Objects.equals(audioDeviceInfo, zzooVar)) {
                this.zza.zzg = null;
                break;
            }
        }
        zzon zzonVar = this.zza;
        zzonVar.zzj(zzoi.zzc(zzonVar.zza, zzonVar.zzh, zzonVar.zzg));
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzps {
    private final Context zza;
    private Boolean zzb;

    public zzps() {
        this.zza = null;
    }

    public zzps(Context context) {
        this.zza = context;
    }

    public final zzor zza(zzab zzabVar, zze zzeVar) {
        boolean zBooleanValue;
        AudioManager audioManager;
        zzabVar.getClass();
        zzeVar.getClass();
        if (zzei.zza < 29 || zzabVar.zzE == -1) {
            return zzor.zza;
        }
        Context context = this.zza;
        Boolean bool = this.zzb;
        boolean z = false;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            if (context == null || (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) == null) {
                this.zzb = false;
            } else {
                String parameters = audioManager.getParameters("offloadVariableRateSupported");
                this.zzb = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            }
            zBooleanValue = this.zzb.booleanValue();
        }
        String str = zzabVar.zzo;
        str.getClass();
        int iZza = zzbb.zza(str, zzabVar.zzk);
        if (iZza == 0 || zzei.zza < zzei.zzh(iZza)) {
            return zzor.zza;
        }
        int iZzi = zzei.zzi(zzabVar.zzD);
        if (iZzi == 0) {
            return zzor.zza;
        }
        try {
            AudioFormat audioFormatZzx = zzei.zzx(zzabVar.zzE, iZzi, iZza);
            if (zzei.zza < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(audioFormatZzx, zzeVar.zza().zza)) {
                    return zzor.zza;
                }
                zzop zzopVar = new zzop();
                zzopVar.zza(true);
                zzopVar.zzc(zBooleanValue);
                return zzopVar.zzd();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatZzx, zzeVar.zza().zza);
            if (playbackOffloadSupport == 0) {
                return zzor.zza;
            }
            zzop zzopVar2 = new zzop();
            if (zzei.zza > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            zzopVar2.zza(true);
            zzopVar2.zzb(z);
            zzopVar2.zzc(zBooleanValue);
            return zzopVar2.zzd();
        } catch (IllegalArgumentException unused) {
            return zzor.zza;
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfmj {
    private static int zza = 2;

    public static void zza(Context context) {
        context.registerReceiver(new zzfmi(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfmf.zza() != zzfkv.CTV) {
            return 2;
        }
        return zza;
    }
}

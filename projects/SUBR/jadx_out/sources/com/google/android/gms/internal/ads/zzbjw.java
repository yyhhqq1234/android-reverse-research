package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import com.onesignal.inAppMessages.internal.display.impl.WebViewManager;
import java.util.Map;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjw implements zzbjp {
    static final Map zza = CollectionUtils.mapOfKeyValueArrays(new String[]{WebViewManager.EVENT_TYPE_RESIZE, "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzb;
    private final zzbsc zzc;
    private final zzbsj zzd;

    public zzbjw(com.google.android.gms.ads.internal.zzb zzbVar, zzbsc zzbscVar, zzbsj zzbsjVar) {
        this.zzb = zzbVar;
        this.zzc = zzbscVar;
        this.zzd = zzbsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        int iIntValue = ((Integer) zza.get((String) map.get("a"))).intValue();
        int i = 6;
        if (iIntValue != 5) {
            if (iIntValue != 7) {
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzb;
                if (!zzbVar.zzc()) {
                    zzbVar.zzb(null);
                    return;
                }
                if (iIntValue == 1) {
                    this.zzc.zzb(map);
                    return;
                }
                if (iIntValue == 3) {
                    new zzbsf(zzcexVar, map).zzb();
                    return;
                }
                if (iIntValue == 4) {
                    new zzbrz(zzcexVar, map).zzc();
                    return;
                } else if (iIntValue != 5) {
                    if (iIntValue == 6) {
                        this.zzc.zza(true);
                        return;
                    } else if (iIntValue != 7) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean z = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (zzcexVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView is null");
            return;
        }
        if (y8.h.D.equalsIgnoreCase(str)) {
            i = 7;
        } else if (!y8.h.C.equalsIgnoreCase(str)) {
            i = z ? -1 : 14;
        }
        zzcexVar.zzau(i);
    }
}

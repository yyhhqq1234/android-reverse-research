package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcfu implements zzbjp {
    final /* synthetic */ zzcfw zza;

    zzcfu(zzcfw zzcfwVar) {
        this.zza = zzcfwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                synchronized (this.zza) {
                    zzcfw zzcfwVar = this.zza;
                    if (zzcfwVar.zzI != i) {
                        zzcfwVar.zzI = i;
                        this.zza.requestLayout();
                    }
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Exception occurred while getting webview content height", e);
            }
        }
    }
}

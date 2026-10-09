package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import org.json.mediationsdk.metadata.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcly implements zzcla {
    private final zzduv zza;

    zzcly(zzduv zzduvVar) {
        this.zza = zzduvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzo(str.equals(a.g));
    }
}

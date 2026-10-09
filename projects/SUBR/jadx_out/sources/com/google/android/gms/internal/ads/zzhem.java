package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzhem {
    final LinkedHashMap zza;

    zzhem(int i) {
        this.zza = zzheo.zzb(i);
    }

    final zzhem zza(Object obj, zzhfa zzhfaVar) {
        zzhez.zza(obj, y8.h.W);
        zzhez.zza(zzhfaVar, IronSourceConstants.EVENTS_PROVIDER);
        this.zza.put(obj, zzhfaVar);
        return this;
    }
}

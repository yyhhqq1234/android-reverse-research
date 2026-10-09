package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfvp extends zzfwg implements zzfxy {
    protected zzfvp(Map map) {
        super(map);
    }

    @Override // com.google.android.gms.internal.ads.zzfwg
    /* bridge */ /* synthetic */ Collection zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfwg
    final Collection zzb(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.android.gms.internal.ads.zzfwg
    final Collection zzc(Object obj, Collection collection) {
        return zzh(obj, (List) collection, null);
    }
}

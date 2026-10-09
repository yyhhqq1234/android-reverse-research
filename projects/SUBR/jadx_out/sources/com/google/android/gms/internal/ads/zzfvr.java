package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfvr extends zzfyg {
    final /* synthetic */ zzfvt zza;

    zzfvr(zzfvt zzfvtVar) {
        this.zza = zzfvtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return zzfwm.zza(this.zza.zza.entrySet(), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfvs(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) Objects.requireNonNull((Map.Entry) obj);
        zzfvt zzfvtVar = this.zza;
        zzfwg.zzo(zzfvtVar.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    final Map zza() {
        return this.zza;
    }
}

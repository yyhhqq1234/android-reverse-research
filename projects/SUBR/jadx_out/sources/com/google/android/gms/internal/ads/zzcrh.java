package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcrh implements zzegr {
    public final List zza;

    public zzcrh(zzcqz zzcqzVar) {
        this.zza = Collections.singletonList(zzgch.zzh(zzcqzVar));
    }

    public zzcrh(List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzegr
    public final void zzr() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            zzgch.zzr((ListenableFuture) it.next(), new zzcrg(this), zzgcz.zzc());
        }
    }
}

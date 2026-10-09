package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxu extends zzfvo {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzfuo zzb;

    zzfxu(Iterator it, zzfuo zzfuoVar) {
        this.zza = it;
        this.zzb = zzfuoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    @CheckForNull
    protected final Object zza() {
        while (this.zza.hasNext()) {
            Iterator it = this.zza;
            zzfuo zzfuoVar = this.zzb;
            Object next = it.next();
            if (zzfuoVar.zza(next)) {
                return next;
            }
        }
        zzb();
        return null;
    }
}

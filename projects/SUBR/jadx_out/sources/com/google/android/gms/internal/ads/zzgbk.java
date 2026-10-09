package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbk extends zzgbi {
    private zzgbk() {
        throw null;
    }

    /* synthetic */ zzgbk(zzgbl zzgblVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    final int zza(zzgbm zzgbmVar) {
        int i;
        synchronized (zzgbmVar) {
            i = zzgbmVar.remaining - 1;
            zzgbmVar.remaining = i;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    final void zzb(zzgbm zzgbmVar, @CheckForNull Set set, Set set2) {
        synchronized (zzgbmVar) {
            if (zzgbmVar.seenExceptions == null) {
                zzgbmVar.seenExceptions = set2;
            }
        }
    }
}

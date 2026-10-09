package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfuu implements zzfvb {
    final /* synthetic */ zzfty zza;

    zzfuu(zzfty zzftyVar) {
        this.zza = zzftyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvb
    public final /* bridge */ /* synthetic */ Iterator zza(zzfvc zzfvcVar, CharSequence charSequence) {
        return new zzfut(this, zzfvcVar, charSequence, this.zza);
    }
}

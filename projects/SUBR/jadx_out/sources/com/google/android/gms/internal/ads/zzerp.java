package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerp implements zzetq {
    public final Bundle zza;

    public zzerp(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcuv) obj).zza;
        Bundle bundleZza = zzfcx.zza(bundle, y8.h.G);
        bundleZza.putBundle("android_mem_info", this.zza);
        bundle.putBundle(y8.h.G, bundleZza);
    }
}

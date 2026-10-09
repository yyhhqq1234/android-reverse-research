package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepa implements zzher {
    public static zzepa zza() {
        return zzeoz.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        List arrayList = new ArrayList();
        if (!((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlD)).isEmpty()) {
            arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlD)).split(","));
        }
        zzhez.zzb(arrayList);
        return arrayList;
    }
}

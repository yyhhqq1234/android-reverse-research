package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzbcs {
    public static boolean zza(zzbda zzbdaVar, zzbcx zzbcxVar, String... strArr) {
        if (zzbcxVar == null) {
            return false;
        }
        zzbdaVar.zze(zzbcxVar, com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime(), strArr);
        return true;
    }
}

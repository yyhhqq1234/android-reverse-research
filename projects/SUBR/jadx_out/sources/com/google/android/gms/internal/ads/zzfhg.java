package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhg {
    public static void zza(ListenableFuture listenableFuture, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        zzg(listenableFuture, zzfhhVar, zzfgwVar, false);
    }

    public static void zzb(ListenableFuture listenableFuture, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        zzg(listenableFuture, zzfhhVar, zzfgwVar, true);
    }

    public static void zzc(ListenableFuture listenableFuture, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(listenableFuture), new zzfhf(zzfhhVar, zzfgwVar), zzbzw.zzg);
        }
    }

    public static void zzd(ListenableFuture listenableFuture, zzfgw zzfgwVar) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(listenableFuture), new zzfhd(zzfgwVar), zzbzw.zzg);
        }
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziH), str);
    }

    public static int zzf(zzfcj zzfcjVar) {
        int iZzf = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(zzfcjVar) - 1;
        return (iZzf == 0 || iZzf == 1) ? 7 : 23;
    }

    private static void zzg(ListenableFuture listenableFuture, zzfhh zzfhhVar, zzfgw zzfgwVar, boolean z) {
        if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
            zzgch.zzr(zzgby.zzu(listenableFuture), new zzfhe(zzfhhVar, zzfgwVar, z), zzbzw.zzg);
        }
    }
}

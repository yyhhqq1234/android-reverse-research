package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzdrq;
import com.google.android.gms.internal.ads.zzdsb;
import com.google.android.gms.internal.ads.zzfcj;
import com.google.android.gms.internal.ads.zzfhm;
import com.google.firebase.ktx.BuildConfig;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.en;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaa {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    public static zzfhm zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        if (TextUtils.isEmpty(string)) {
            return zzfhm.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
        switch (string) {
            case "requester_type_0":
                return zzfhm.SCAR_REQUEST_TYPE_ADMOB;
            case "requester_type_1":
                return zzfhm.SCAR_REQUEST_TYPE_INBOUND_MEDIATION;
            case "requester_type_2":
                return zzfhm.SCAR_REQUEST_TYPE_GBID;
            case "requester_type_3":
                return zzfhm.SCAR_REQUEST_TYPE_GOLDENEYE;
            case "requester_type_4":
                return zzfhm.SCAR_REQUEST_TYPE_YAVIN;
            case "requester_type_5":
                return zzfhm.SCAR_REQUEST_TYPE_UNITY;
            case "requester_type_6":
                return zzfhm.SCAR_REQUEST_TYPE_PAW;
            case "requester_type_7":
                return zzfhm.SCAR_REQUEST_TYPE_GUILDER;
            case "requester_type_8":
                return zzfhm.SCAR_REQUEST_TYPE_GAM_S2S;
            default:
                return zzfhm.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    public static String zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return BuildConfig.VERSION_NAME;
        }
        switch (str) {
            case "requester_type_0":
                return "0";
            case "requester_type_1":
                return "1";
            case "requester_type_2":
                return CommonGetHeaderBiddingToken.HB_TOKEN_VERSION;
            case "requester_type_3":
                return "3";
            case "requester_type_4":
                return "4";
            case "requester_type_5":
                return "5";
            case "requester_type_6":
                return "6";
            case "requester_type_7":
                return en.e;
            case "requester_type_8":
                return "8";
            default:
                return str;
        }
    }

    public static String zzc(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        return (zzmVar == null || (bundle = zzmVar.zzc) == null) ? BuildConfig.VERSION_NAME : bundle.getString("query_info_type");
    }

    public static void zzd(final zzdsb zzdsbVar, zzdrq zzdrqVar, final String str, final Pair... pairArr) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgM)).booleanValue()) {
            final zzdrq zzdrqVar2 = null;
            zzbzw.zza.execute(new Runnable(zzdrqVar2, str, pairArr) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzz
                public final /* synthetic */ String zzb;
                public final /* synthetic */ Pair[] zzc;

                {
                    this.zzb = str;
                    this.zzc = pairArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaa.zze(this.zza, null, this.zzb, this.zzc);
                }
            });
        }
    }

    static void zze(zzdsb zzdsbVar, zzdrq zzdrqVar, String str, Pair... pairArr) {
        ConcurrentHashMap concurrentHashMapZzc = zzdsbVar.zzc();
        zzg(concurrentHashMapZzc, "action", str);
        for (Pair pair : pairArr) {
            zzg(concurrentHashMapZzc, (String) pair.first, (String) pair.second);
        }
        zzdsbVar.zzg(concurrentHashMapZzc);
    }

    public static int zzf(zzfcj zzfcjVar) {
        if (zzfcjVar.zzr) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcjVar.zzd;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar.zzs;
        if (zzcVar == null && zzmVar.zzx == null) {
            return 1;
        }
        if (zzcVar == null || zzmVar.zzx == null) {
            return zzcVar != null ? 3 : 4;
        }
        return 5;
    }

    private static void zzg(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }
}

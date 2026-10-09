package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzfve;
import java.util.List;
import java.util.Map;
import org.json.md;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public class CsiParamDefaults {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public CsiParamDefaults(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = versionInfoParcel.afmaVersion;
    }

    public void set(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put(md.y, Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzv.zzq();
        map.put(y8.h.G, zzs.zzs());
        map.put("app", this.zzb);
        zzv.zzq();
        map.put("is_lite_sdk", true != zzs.zzF(this.zza) ? "0" : "1");
        zzbcc zzbccVar = zzbcl.zza;
        List listZzb = zzbe.zza().zzb();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzgI)).booleanValue()) {
            listZzb.addAll(zzv.zzp().zzi().zzg().zzd());
        }
        map.put("e", TextUtils.join(",", listZzb));
        map.put("sdkVersion", this.zzc);
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzli)).booleanValue()) {
            zzv.zzq();
            map.put("is_bstar", true == zzs.zzC(this.zza) ? "1" : "0");
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzjn)).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzct)).booleanValue()) {
                map.put(md.E, zzfve.zzc(zzv.zzp().zzn()));
            }
        }
    }
}

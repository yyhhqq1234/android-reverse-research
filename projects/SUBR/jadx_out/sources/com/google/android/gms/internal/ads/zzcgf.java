package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzcgf extends zzcff {
    public zzcgf(zzcex zzcexVar, zzbbj zzbbjVar, boolean z, zzebv zzebvVar) {
        super(zzcexVar, zzbbjVar, z, new zzbsh(zzcexVar, zzcexVar.zzE(), new zzbbt(zzcexVar.getContext())), null, zzebvVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final WebResourceResponse zzW(WebView webView, String str, Map map) {
        String str2;
        if (!(webView instanceof zzcex)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcex zzcexVar = (zzcex) webView;
        zzbxu zzbxuVar = this.zza;
        if (zzbxuVar != null) {
            zzbxuVar.zzd(str, map, 1);
        }
        zzfpu.zza();
        zzfqa zzfqaVar = zzfqa.zza;
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.zzc(str, map);
        }
        if (zzcexVar.zzN() != null) {
            zzcexVar.zzN().zzH();
        }
        if (zzcexVar.zzO().zzi()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaa);
        } else if (zzcexVar.zzaF()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzZ);
        } else {
            str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzY);
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        return com.google.android.gms.ads.internal.util.zzs.zzy(zzcexVar.getContext(), zzcexVar.zzn().afmaVersion, str2);
    }
}

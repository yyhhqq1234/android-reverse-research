package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdgx implements zzbjp {
    private final WeakReference zza;

    /* synthetic */ zzdgx(zzdhb zzdhbVar, zzdha zzdhaVar) {
        this.zza = new WeakReference(zzdhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        zzdhb zzdhbVar = (zzdhb) this.zza.get();
        if (zzdhbVar != null && "_ac".equals((String) map.get(y8.h.j0))) {
            zzdhbVar.zzh.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkE)).booleanValue()) {
                zzdhbVar.zzi.zzdd();
                if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                    return;
                }
                zzdhbVar.zzi.zzu();
            }
        }
    }
}

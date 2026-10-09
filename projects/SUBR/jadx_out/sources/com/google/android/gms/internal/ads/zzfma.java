package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.md;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzfma {
    private final String zza;
    private zzfnc zzb;
    private long zzc;
    private int zzd;

    public zzfma(String str) {
        zzb();
        this.zza = str;
        this.zzb = new zzfnc(null);
    }

    public final WebView zza() {
        return (WebView) this.zzb.get();
    }

    public final void zzb() {
        this.zzc = System.nanoTime();
        this.zzd = 1;
    }

    public void zzc() {
        this.zzb.clear();
    }

    public final void zzd(String str, long j) {
        if (j < this.zzc || this.zzd == 3) {
            return;
        }
        this.zzd = 3;
        zzflr.zza().zzh(zza(), this.zza, str);
    }

    public final void zze() {
        zzflr.zza().zzc(zza(), this.zza);
    }

    public final void zzf(zzfkq zzfkqVar) {
        zzflr.zza().zzd(zza(), this.zza, zzfkqVar.zzb());
    }

    public final void zzg(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zzfmg.zze(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        zzflr.zza().zzf(zza(), jSONObject);
    }

    public final void zzh(String str, long j) {
        if (j >= this.zzc) {
            this.zzd = 2;
            zzflr.zza().zzh(zza(), this.zza, str);
        }
    }

    public void zzi(zzfkt zzfktVar, zzfkr zzfkrVar) {
        zzj(zzfktVar, zzfkrVar, null);
    }

    protected final void zzj(zzfkt zzfktVar, zzfkr zzfkrVar, JSONObject jSONObject) {
        String strZzh = zzfktVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfmg.zze(jSONObject2, "environment", "app");
        zzfmg.zze(jSONObject2, "adSessionType", zzfkrVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        zzfmg.zze(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        zzfmg.zze(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfmg.zze(jSONObject3, md.y, y8.d);
        zzfmg.zze(jSONObject2, "deviceInfo", jSONObject3);
        zzfmg.zze(jSONObject2, "deviceCategory", zzfmf.zza().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfmg.zze(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfmg.zze(jSONObject4, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, zzfkrVar.zze().zzb());
        zzfmg.zze(jSONObject4, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, zzfkrVar.zze().zzc());
        zzfmg.zze(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfmg.zze(jSONObject5, "libraryVersion", "1.5.2-google_20241009");
        zzfmg.zze(jSONObject5, "appId", zzflp.zzb().zza().getApplicationContext().getPackageName());
        zzfmg.zze(jSONObject2, "app", jSONObject5);
        if (zzfkrVar.zzf() != null) {
            zzfmg.zze(jSONObject2, "contentUrl", zzfkrVar.zzf());
        }
        if (zzfkrVar.zzg() != null) {
            zzfmg.zze(jSONObject2, "customReferenceData", zzfkrVar.zzg());
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzfkrVar.zzh().iterator();
        if (it.hasNext()) {
            throw null;
        }
        zzflr.zza().zzj(zza(), strZzh, jSONObject2, jSONObject6, jSONObject);
    }

    public final void zzk(boolean z) {
        if (zzp()) {
            zzflr.zza().zzi(zza(), this.zza, true != z ? "backgrounded" : "foregrounded");
        }
    }

    public final void zzl(float f) {
        zzflr.zza().zze(zza(), this.zza, f);
    }

    public final void zzm(boolean z) {
        if (zzp()) {
            zzflr.zza().zzg(zza(), this.zza, true != z ? "unlocked" : "locked");
        }
    }

    final void zzn(WebView webView) {
        this.zzb = new zzfnc(webView);
    }

    public void zzo() {
    }

    public final boolean zzp() {
        return this.zzb.get() != null;
    }
}

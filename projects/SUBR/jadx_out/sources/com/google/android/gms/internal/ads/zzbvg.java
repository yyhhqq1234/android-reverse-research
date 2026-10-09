package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvg extends zzbve {
    private final Object zza = new Object();
    private final Context zzb;
    private SharedPreferences zzc;
    private final zzbnw zzd;
    private final VersionInfoParcel zze;

    public zzbvg(Context context, zzbnw zzbnwVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context.getApplicationContext();
        this.zze = versionInfoParcel;
        this.zzd = zzbnwVar;
    }

    public static JSONObject zzc(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzbel.zzb.zze()).booleanValue()) {
                jSONObject.put(y8.h.V, context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put("mf", zzbel.zzc.zze());
            jSONObject.put("cl", "697668803");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbve
    public final ListenableFuture zza() {
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        SharedPreferences sharedPreferences = this.zzc;
        if (com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - (sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L) < ((Long) zzbel.zzd.zze()).longValue()) {
            return zzgch.zzh(null);
        }
        return zzgch.zzm(this.zzd.zzb(zzc(this.zzb, this.zze)), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzbvf
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                this.zza.zzb((JSONObject) obj);
                return null;
            }
        }, zzbzw.zzg);
    }

    final /* synthetic */ Void zzb(JSONObject jSONObject) {
        zzbcc zzbccVar = zzbcl.zza;
        com.google.android.gms.ads.internal.client.zzbe.zzb();
        SharedPreferences sharedPreferencesZza = zzbce.zza(this.zzb);
        if (sharedPreferencesZza == null) {
            return null;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesZza.edit();
        com.google.android.gms.ads.internal.client.zzbe.zza();
        int i = zzbeb.zza;
        com.google.android.gms.ads.internal.client.zzbe.zza().zze(editorEdit, 1, jSONObject);
        com.google.android.gms.ads.internal.client.zzbe.zzb();
        editorEdit.commit();
        SharedPreferences sharedPreferences = this.zzc;
        if (sharedPreferences == null) {
            return null;
        }
        sharedPreferences.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()).apply();
        return null;
    }
}

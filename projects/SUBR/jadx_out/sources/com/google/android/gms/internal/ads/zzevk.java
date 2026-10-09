package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzevk implements zzetr {
    private final JSONObject zza;

    zzevk(Context context) {
        this.zza = zzbvg.zzc(context, VersionInfoParcel.forPackage());
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlO)).booleanValue() ? zzgch.zzh(new zzetq() { // from class: com.google.android.gms.internal.ads.zzevi
            @Override // com.google.android.gms.internal.ads.zzetq
            public final /* synthetic */ void zza(Object obj) {
            }

            @Override // com.google.android.gms.internal.ads.zzetq
            public final void zzb(Object obj) {
            }
        }) : zzgch.zzh(new zzetq() { // from class: com.google.android.gms.internal.ads.zzevj
            @Override // com.google.android.gms.internal.ads.zzetq
            public final /* synthetic */ void zza(Object obj) {
            }

            @Override // com.google.android.gms.internal.ads.zzetq
            public final void zzb(Object obj) {
                this.zza.zzc((JSONObject) obj);
            }
        });
    }

    final /* synthetic */ void zzc(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed putting version constants.");
        }
    }
}

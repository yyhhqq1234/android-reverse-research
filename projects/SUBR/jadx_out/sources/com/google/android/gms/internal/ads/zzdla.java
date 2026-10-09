package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.y8;
import org.json.z8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdla {
    private final zzgcs zza;
    private final zzdlp zzb;
    private final zzdlu zzc;

    public zzdla(zzgcs zzgcsVar, zzdlp zzdlpVar, zzdlu zzdluVar) {
        this.zza = zzgcsVar;
        this.zzb = zzdlpVar;
        this.zzc = zzdluVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final /* synthetic */ zzdif zzb(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, ListenableFuture listenableFuture3, ListenableFuture listenableFuture4, ListenableFuture listenableFuture5, JSONObject jSONObject, ListenableFuture listenableFuture6, ListenableFuture listenableFuture7, ListenableFuture listenableFuture8, ListenableFuture listenableFuture9, ListenableFuture listenableFuture10) throws Exception {
        zzdif zzdifVar = (zzdif) listenableFuture.get();
        zzdifVar.zzP((List) listenableFuture2.get());
        zzdifVar.zzM((zzbfw) listenableFuture3.get());
        zzdifVar.zzQ((zzbfw) listenableFuture4.get());
        zzdifVar.zzJ((zzbfp) listenableFuture5.get());
        zzdifVar.zzS(zzdlp.zzj(jSONObject));
        zzdifVar.zzL(zzdlp.zzi(jSONObject));
        zzcex zzcexVar = (zzcex) listenableFuture6.get();
        if (zzcexVar != null) {
            zzdifVar.zzad(zzcexVar);
            zzdifVar.zzac(zzcexVar.zzF());
            zzdifVar.zzab(zzcexVar.zzq());
        }
        zzdifVar.zzd().putAll((Bundle) listenableFuture7.get());
        zzcex zzcexVar2 = (zzcex) listenableFuture8.get();
        if (zzcexVar2 != null) {
            zzdifVar.zzO(zzcexVar2);
            zzdifVar.zzae(zzcexVar2.zzF());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue() || zzc(jSONObject)) {
            zzcex zzcexVar3 = (zzcex) listenableFuture9.get();
            if (zzcexVar3 != null) {
                zzdifVar.zzT(zzcexVar3);
            }
        } else {
            zzdifVar.zzU(listenableFuture9);
            zzdifVar.zzX(new zzcab());
        }
        for (zzdlt zzdltVar : (List) listenableFuture10.get()) {
            if (zzdltVar.zza != 1) {
                zzdifVar.zzN(zzdltVar.zzb, zzdltVar.zzd);
            } else {
                zzdifVar.zzZ(zzdltVar.zzb, zzdltVar.zzc);
            }
        }
        return zzdifVar;
    }

    private static final boolean zzc(JSONObject jSONObject) {
        return jSONObject.optInt("template_id") == 3;
    }

    public final ListenableFuture zza(final zzfca zzfcaVar, final zzfbo zzfboVar, final JSONObject jSONObject) {
        final ListenableFuture listenableFutureZzh;
        JSONObject jSONObjectOptJSONObject;
        ListenableFuture listenableFutureZzh2;
        final ListenableFuture listenableFutureZzb = this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdkv
            @Override // java.util.concurrent.Callable
            public final Object call() throws zzegu {
                zzdif zzdifVar = new zzdif();
                JSONObject jSONObject2 = jSONObject;
                zzdifVar.zzaa(jSONObject2.optInt("template_id", -1));
                zzdifVar.zzK(jSONObject2.optString("custom_template_id"));
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                String strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("omid_partner_name") : null;
                zzfca zzfcaVar2 = zzfcaVar;
                zzdifVar.zzV(strOptString);
                zzfcj zzfcjVar = zzfcaVar2.zza.zza;
                if (!zzfcjVar.zzg.contains(Integer.toString(zzdifVar.zzc()))) {
                    throw new zzegu(1, "Invalid template ID: " + zzdifVar.zzc());
                }
                if (zzdifVar.zzc() == 3) {
                    if (zzdifVar.zzA() == null) {
                        throw new zzegu(1, "No custom template id for custom template ad response.");
                    }
                    if (!zzfcjVar.zzh.contains(zzdifVar.zzA())) {
                        throw new zzegu(1, "Unexpected custom template id in the response.");
                    }
                }
                zzfbo zzfboVar2 = zzfboVar;
                zzdifVar.zzY(jSONObject2.optDouble("rating", -1.0d));
                String strOptString2 = jSONObject2.optString("headline", null);
                if (zzfboVar2.zzM) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    strOptString2 = com.google.android.gms.ads.internal.util.zzs.zzz() + " : " + strOptString2;
                }
                zzdifVar.zzZ("headline", strOptString2);
                zzdifVar.zzZ(y8.h.E0, jSONObject2.optString(y8.h.E0, null));
                zzdifVar.zzZ("call_to_action", jSONObject2.optString("call_to_action", null));
                zzdifVar.zzZ(y8.h.U, jSONObject2.optString(y8.h.U, null));
                zzdifVar.zzZ("price", jSONObject2.optString("price", null));
                zzdifVar.zzZ(y8.h.F0, jSONObject2.optString(y8.h.F0, null));
                return zzdifVar;
            }
        });
        final ListenableFuture listenableFutureZzf = this.zzb.zzf(jSONObject, "images");
        zzfbr zzfbrVar = zzfcaVar.zzb.zzb;
        zzdlp zzdlpVar = this.zzb;
        final ListenableFuture listenableFutureZzg = zzdlpVar.zzg(jSONObject, "images", zzfboVar, zzfbrVar);
        final ListenableFuture listenableFutureZze = zzdlpVar.zze(jSONObject, "secondary_image");
        final ListenableFuture listenableFutureZze2 = zzdlpVar.zze(jSONObject, "app_icon");
        final ListenableFuture listenableFutureZzd = zzdlpVar.zzd(jSONObject, z8.ATTRIBUTION);
        final ListenableFuture listenableFutureZzh3 = this.zzb.zzh(jSONObject, zzfboVar, zzfcaVar.zzb.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmO)).booleanValue() && ((Integer) Optional.ofNullable(jSONObject.optJSONObject(MimeTypes.BASE_TYPE_VIDEO)).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdkw
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((JSONObject) obj).optJSONArray("flags");
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdkx
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2.optString(y8.h.W).equals("afma_video_player_type")) {
                        return jSONObjectOptJSONObject2.optString("value");
                    }
                }
                return null;
            }
        }).map(new Function() { // from class: com.google.android.gms.internal.ads.zzdky
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(Integer.parseInt((String) obj));
            }
        }).orElse(0)).intValue() == 3) {
            zzdlp zzdlpVar2 = this.zzb;
            zzcab zzcabVar = new zzcab();
            zzgch.zzr(listenableFutureZzh3, new zzdlo(zzdlpVar2, zzcabVar), zzbzw.zzf);
            listenableFutureZzh = zzcabVar;
        } else {
            listenableFutureZzh = zzgch.zzh(new Bundle());
        }
        final ListenableFuture listenableFutureZza = this.zzc.zza(jSONObject, "custom_assets");
        final zzdlp zzdlpVar3 = this.zzb;
        if (jSONObject.optBoolean("enable_omid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String strOptString = jSONObjectOptJSONObject.optString("omid_html");
            listenableFutureZzh2 = TextUtils.isEmpty(strOptString) ? zzgch.zzh(null) : zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdle
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final ListenableFuture zza(Object obj) {
                    return zzdlpVar3.zzc(strOptString, obj);
                }
            }, zzbzw.zzf);
        } else {
            listenableFutureZzh2 = zzgch.zzh(null);
        }
        final ListenableFuture listenableFuture = listenableFutureZzh2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(listenableFutureZzb);
        arrayList.add(listenableFutureZzf);
        arrayList.add(listenableFutureZzg);
        arrayList.add(listenableFutureZze);
        arrayList.add(listenableFutureZze2);
        arrayList.add(listenableFutureZzd);
        arrayList.add(listenableFutureZzh3);
        arrayList.add(listenableFutureZzh);
        arrayList.add(listenableFutureZza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue() || zzc(jSONObject)) {
            arrayList.add(listenableFuture);
        }
        return zzgch.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdkz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdla.zzb(listenableFutureZzb, listenableFutureZzf, listenableFutureZze2, listenableFutureZze, listenableFutureZzd, jSONObject, listenableFutureZzh3, listenableFutureZzh, listenableFutureZzg, listenableFuture, listenableFutureZza);
            }
        }, this.zza);
    }
}

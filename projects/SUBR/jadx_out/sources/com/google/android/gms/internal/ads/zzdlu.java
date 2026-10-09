package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdlu {
    private final Executor zza;
    private final zzdlp zzb;

    public zzdlu(Executor executor, zzdlp zzdlpVar) {
        this.zza = executor;
        this.zzb = zzdlpVar;
    }

    public final ListenableFuture zza(JSONObject jSONObject, String str) {
        ListenableFuture listenableFutureZzh;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray == null) {
            return zzgch.zzh(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null) {
                listenableFutureZzh = zzgch.zzh(null);
            } else {
                final String strOptString = jSONObjectOptJSONObject.optString("name");
                if (strOptString == null) {
                    listenableFutureZzh = zzgch.zzh(null);
                } else {
                    String strOptString2 = jSONObjectOptJSONObject.optString("type");
                    listenableFutureZzh = "string".equals(strOptString2) ? zzgch.zzh(new zzdlt(strOptString, jSONObjectOptJSONObject.optString("string_value"))) : "image".equals(strOptString2) ? zzgch.zzm(this.zzb.zze(jSONObjectOptJSONObject, "image_value"), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdlr
                        @Override // com.google.android.gms.internal.ads.zzfuc
                        public final Object apply(Object obj) {
                            return new zzdlt(strOptString, (zzbfj) obj);
                        }
                    }, this.zza) : zzgch.zzh(null);
                }
            }
            arrayList.add(listenableFutureZzh);
        }
        return zzgch.zzm(zzgch.zzd(arrayList), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdls
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdlt zzdltVar : (List) obj) {
                    if (zzdltVar != null) {
                        arrayList2.add(zzdltVar);
                    }
                }
                return arrayList2;
            }
        }, this.zza);
    }
}

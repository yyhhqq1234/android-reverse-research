package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.gr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefq implements zzefk {
    private final zzdgq zza;
    private final zzgcs zzb;
    private final zzdla zzc;
    private final zzfdi zzd;
    private final zzdnr zze;
    private final zzdrq zzf;

    public zzefq(zzdgq zzdgqVar, zzgcs zzgcsVar, zzdla zzdlaVar, zzfdi zzfdiVar, zzdnr zzdnrVar, zzdrq zzdrqVar) {
        this.zza = zzdgqVar;
        this.zzb = zzgcsVar;
        this.zzc = zzdlaVar;
        this.zzd = zzfdiVar;
        this.zze = zzdnrVar;
        this.zzf = zzdrqVar;
    }

    private final ListenableFuture zzg(final zzfca zzfcaVar, final zzfbo zzfboVar, final JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzf.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        zzfdi zzfdiVar = this.zzd;
        zzdla zzdlaVar = this.zzc;
        final ListenableFuture listenableFutureZza = zzfdiVar.zza();
        final ListenableFuture listenableFutureZza2 = zzdlaVar.zza(zzfcaVar, zzfboVar, jSONObject);
        return zzgch.zzc(listenableFutureZza, listenableFutureZza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzefl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(listenableFutureZza2, listenableFutureZza, zzfcaVar, zzfboVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final ListenableFuture zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return zzgch.zzn(zzgch.zzn(this.zzd.zza(), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefn
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zze(zzfboVar, (zzdnl) obj);
            }
        }, this.zzb), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefo
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzf(zzfcaVar, zzfboVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zzc == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdia zzc(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzfca zzfcaVar, zzfbo zzfboVar, JSONObject jSONObject) throws Exception {
        zzdif zzdifVar = (zzdif) listenableFuture.get();
        zzdnl zzdnlVar = (zzdnl) listenableFuture2.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzf.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        zzdig zzdigVarZzd = this.zza.zzd(new zzcrp(zzfcaVar, zzfboVar, null), new zzdir(zzdifVar), new zzdhd(jSONObject, zzdnlVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            this.zzf.zza().putLong(zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza(), jCurrentTimeMillis);
            this.zzf.zza().putLong(zzdre.RENDERING_CONFIGURE_WEBVIEW_START.zza(), jCurrentTimeMillis);
        }
        zzdigVarZzd.zzh().zzb();
        zzdigVarZzd.zzi().zza(zzdnlVar);
        zzdigVarZzd.zzg().zza(zzdifVar.zzs());
        zzdigVarZzd.zzl().zza(this.zze, zzdifVar.zzq());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzf.zza().putLong(zzdre.RENDERING_CONFIGURE_WEBVIEW_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        return zzdigVarZzd.zza();
    }

    final /* synthetic */ ListenableFuture zzd(zzdnl zzdnlVar, JSONObject jSONObject) throws Exception {
        this.zzd.zzb(zzgch.zzh(zzdnlVar));
        if (jSONObject.optBoolean("success")) {
            return zzgch.zzh(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbnv("process json failed");
    }

    final /* synthetic */ ListenableFuture zze(zzfbo zzfboVar, final zzdnl zzdnlVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziA)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(gr.n, zzfboVar.zzs.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzgch.zzn(zzdnlVar.zzg("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzefm
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzd(zzdnlVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    final /* synthetic */ ListenableFuture zzf(zzfca zzfcaVar, zzfbo zzfboVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzgch.zzg(new zzdvy(3));
        }
        if (zzfcaVar.zza.zza.zzk <= 1) {
            return zzgch.zzm(zzg(zzfcaVar, zzfboVar, jSONArray.getJSONObject(0)), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzefp
                @Override // com.google.android.gms.internal.ads.zzfuc
                public final Object apply(Object obj) {
                    return Collections.singletonList(zzgch.zzh((zzdia) obj));
                }
            }, this.zzb);
        }
        int length = jSONArray.length();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcn)).booleanValue()) {
            this.zzf.zzc("nsl", String.valueOf(length));
        }
        this.zzd.zzc(Math.min(length, zzfcaVar.zza.zza.zzk));
        ArrayList arrayList = new ArrayList(zzfcaVar.zza.zza.zzk);
        for (int i = 0; i < zzfcaVar.zza.zza.zzk; i++) {
            if (i < length) {
                arrayList.add(zzg(zzfcaVar, zzfboVar, jSONArray.getJSONObject(i)));
            } else {
                arrayList.add(zzgch.zzg(new zzdvy(3)));
            }
        }
        return zzgch.zzh(arrayList);
    }
}

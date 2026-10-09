package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedx implements zzecw {
    private final zzcpq zza;
    private final Context zzb;
    private final zzdow zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final zzfuc zzf;
    private final zzdrq zzg;

    public zzedx(zzcpq zzcpqVar, Context context, Executor executor, zzdow zzdowVar, zzfcj zzfcjVar, zzfuc zzfucVar, zzdrq zzdrqVar) {
        this.zzb = context;
        this.zza = zzcpqVar;
        this.zze = executor;
        this.zzc = zzdowVar;
        this.zzd = zzfcjVar;
        this.zzf = zzfucVar;
        this.zzg = zzdrqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final ListenableFuture zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzedw
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzc(zzfcaVar, zzfboVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zza == null) ? false : true;
    }

    final /* synthetic */ ListenableFuture zzc(zzfca zzfcaVar, zzfbo zzfboVar, Object obj) throws Exception {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzg.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        com.google.android.gms.ads.internal.client.zzs zzsVarZza = zzfcp.zza(this.zzb, zzfboVar.zzu);
        final zzcex zzcexVarZza = this.zzc.zza(zzsVarZza, zzfboVar, zzfcaVar.zzb.zzb);
        zzcexVarZza.zzac(zzfboVar.zzW);
        View viewZza = (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhJ)).booleanValue() && zzfboVar.zzag) ? zzcql.zza(this.zzb, zzcexVarZza.zzF(), zzfboVar) : new zzdoz(this.zzb, zzcexVarZza.zzF(), (com.google.android.gms.ads.internal.util.zzau) this.zzf.apply(zzfboVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzg.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        zzcpq zzcpqVar = this.zza;
        zzcrp zzcrpVar = new zzcrp(zzfcaVar, zzfboVar, null);
        Objects.requireNonNull(zzcexVarZza);
        final zzcon zzconVarZza = zzcpqVar.zza(zzcrpVar, new zzcot(viewZza, zzcexVarZza, new zzcqx() { // from class: com.google.android.gms.internal.ads.zzedr
            @Override // com.google.android.gms.internal.ads.zzcqx
            public final com.google.android.gms.ads.internal.client.zzeb zza() {
                return zzcexVarZza.zzq();
            }
        }, zzfcp.zzb(zzsVarZza)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzg.zza().putLong(zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        zzconVarZza.zzh().zzi(zzcexVarZza, false, null, this.zzg.zza());
        zzconVarZza.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzeds
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcexVarZza;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        String strZzb = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zzconVarZza.zzi().zze(true)) {
            strZzb = zzcgi.zzb(strZzb, zzcgi.zza(zzfboVar));
        }
        zzconVarZza.zzh();
        ListenableFuture listenableFutureZzj = zzdov.zzj(zzcexVarZza, zzfboVar.zzs.zzb, strZzb, this.zzg.zza());
        if (zzfboVar.zzM) {
            Objects.requireNonNull(zzcexVarZza);
            listenableFutureZzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedt
                @Override // java.lang.Runnable
                public final void run() {
                    zzcexVarZza.zzah();
                }
            }, this.zze);
        }
        listenableFutureZzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedu
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd(zzcexVarZza);
            }
        }, this.zze);
        return zzgch.zzm(listenableFutureZzj, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzedv
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                return zzconVarZza.zza();
            }
        }, zzbzw.zzg);
    }

    final /* synthetic */ void zzd(zzcex zzcexVar) {
        zzcexVar.zzab();
        zzfcj zzfcjVar = this.zzd;
        zzcfz zzcfzVarZzq = zzcexVar.zzq();
        com.google.android.gms.ads.internal.client.zzga zzgaVar = zzfcjVar.zza;
        if (zzgaVar != null && zzcfzVarZzq != null) {
            zzcfzVarZzq.zzs(zzgaVar);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbr)).booleanValue() || zzcexVar.isAttachedToWindow()) {
            return;
        }
        zzcexVar.onPause();
        zzcexVar.zzav(true);
    }
}

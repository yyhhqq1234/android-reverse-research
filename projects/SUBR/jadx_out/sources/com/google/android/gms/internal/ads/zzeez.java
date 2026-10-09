package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeez implements zzecw {
    private final Context zza;
    private final zzdow zzb;
    private final zzdfu zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjs zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziM)).booleanValue();
    private final zzebv zzi;
    private final zzdrq zzj;
    private final zzdrw zzk;

    public zzeez(Context context, VersionInfoParcel versionInfoParcel, zzfcj zzfcjVar, Executor executor, zzdfu zzdfuVar, zzdow zzdowVar, zzbjs zzbjsVar, zzebv zzebvVar, zzdrq zzdrqVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzd = zzfcjVar;
        this.zzc = zzdfuVar;
        this.zze = executor;
        this.zzf = versionInfoParcel;
        this.zzb = zzdowVar;
        this.zzg = zzbjsVar;
        this.zzi = zzebvVar;
        this.zzj = zzdrqVar;
        this.zzk = zzdrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final ListenableFuture zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        final zzdpa zzdpaVar = new zzdpa();
        ListenableFuture listenableFutureZzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeeu
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzc(zzfboVar, zzfcaVar, zzdpaVar, obj);
            }
        }, this.zze);
        listenableFutureZzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeev
            @Override // java.lang.Runnable
            public final void run() {
                zzdpaVar.zzb();
            }
        }, this.zze);
        return listenableFutureZzn;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zza == null) ? false : true;
    }

    final /* synthetic */ ListenableFuture zzc(final zzfbo zzfboVar, zzfca zzfcaVar, zzdpa zzdpaVar, Object obj) throws Exception {
        final zzeez zzeezVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzj.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        final zzcex zzcexVarZza = this.zzb.zza(this.zzd.zze, zzfboVar, zzfcaVar.zzb.zzb);
        zzcexVarZza.zzac(zzfboVar.zzW);
        zzdpaVar.zza(this.zza, zzcexVarZza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            this.zzj.zza().putLong(zzdre.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        zzcab zzcabVar = new zzcab();
        final zzder zzderVarZze = this.zzc.zze(new zzcrp(zzfcaVar, zzfboVar, null), new zzdeu(new zzeey(this.zza, this.zzf, zzcabVar, zzfboVar, zzcexVarZza, this.zzd, this.zzh, this.zzg, this.zzi, this.zzk), zzcexVarZza));
        zzcabVar.zzc(zzderVarZze);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            zzeezVar = this;
            zzeezVar.zzj.zza().putLong(zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        } else {
            zzeezVar = this;
        }
        zzderVarZze.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzeew
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcexVarZza;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        String strZzb = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zzderVarZze.zzl().zze(true)) {
            strZzb = zzcgi.zzb(strZzb, zzcgi.zza(zzfboVar));
        }
        zzderVarZze.zzi().zzi(zzcexVarZza, true, zzeezVar.zzh ? zzeezVar.zzg : null, zzeezVar.zzj.zza());
        zzderVarZze.zzi();
        return zzgch.zzm(zzdov.zzj(zzcexVarZza, zzfboVar.zzs.zzb, strZzb, zzeezVar.zzj.zza()), new zzfuc(zzeezVar) { // from class: com.google.android.gms.internal.ads.zzeex
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                zzcex zzcexVar = zzcexVarZza;
                if (zzfboVar.zzM) {
                    zzcexVar.zzah();
                }
                zzder zzderVar = zzderVarZze;
                zzcexVar.zzab();
                zzcexVar.onPause();
                return zzderVar.zzg();
            }
        }, zzeezVar.zze);
    }
}

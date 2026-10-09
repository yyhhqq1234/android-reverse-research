package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeht implements zzecw {
    private final Context zza;
    private final zzdow zzb;
    private final zzdof zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjs zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziM)).booleanValue();
    private final zzebv zzi;
    private final zzdrq zzj;
    private final zzdrw zzk;

    public zzeht(Context context, VersionInfoParcel versionInfoParcel, zzfcj zzfcjVar, Executor executor, zzdof zzdofVar, zzdow zzdowVar, zzbjs zzbjsVar, zzebv zzebvVar, zzdrq zzdrqVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzd = zzfcjVar;
        this.zzc = zzdofVar;
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
        ListenableFuture listenableFutureZzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeho
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzc(zzfboVar, zzfcaVar, zzdpaVar, obj);
            }
        }, this.zze);
        listenableFutureZzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehp
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
        final zzeht zzehtVar;
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
        final zzdob zzdobVarZze = this.zzc.zze(new zzcrp(zzfcaVar, zzfboVar, null), new zzdoc(new zzehs(this.zza, this.zzb, this.zzd, this.zzf, zzfboVar, zzcabVar, zzcexVarZza, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk), zzcexVarZza));
        zzcabVar.zzc(zzdobVarZze);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcm)).booleanValue()) {
            zzehtVar = this;
            zzehtVar.zzj.zza().putLong(zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        } else {
            zzehtVar = this;
        }
        zzbkh.zzb(zzcexVarZza, zzdobVarZze.zzg());
        zzdobVarZze.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzehm
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcexVarZza;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        }, zzbzw.zzg);
        zzdobVarZze.zzl().zzi(zzcexVarZza, true, zzehtVar.zzh ? zzehtVar.zzg : null, zzehtVar.zzj.zza());
        String strZzb = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zzdobVarZze.zzm().zze(true)) {
            strZzb = zzcgi.zzb(strZzb, zzcgi.zza(zzfboVar));
        }
        zzdobVarZze.zzl();
        return zzgch.zzm(zzdov.zzj(zzcexVarZza, zzfboVar.zzs.zzb, strZzb, zzehtVar.zzj.zza()), new zzfuc(zzehtVar) { // from class: com.google.android.gms.internal.ads.zzehn
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                zzcex zzcexVar = zzcexVarZza;
                if (zzfboVar.zzM) {
                    zzcexVar.zzah();
                }
                zzdob zzdobVar = zzdobVarZze;
                zzcexVar.zzab();
                zzcexVar.onPause();
                return zzdobVar.zzi();
            }
        }, zzehtVar.zze);
    }
}

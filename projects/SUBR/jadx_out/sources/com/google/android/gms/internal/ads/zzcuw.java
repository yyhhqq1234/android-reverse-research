package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcuw {
    private final zzfgn zza;
    private final VersionInfoParcel zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhel zzg;
    private final String zzh;
    private final zzetu zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfcj zzk;
    private final int zzl;
    private final zzdbe zzm;

    zzcuw(zzfgn zzfgnVar, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, zzhel zzhelVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzetu zzetuVar, zzfcj zzfcjVar, zzdbe zzdbeVar, int i) {
        this.zza = zzfgnVar;
        this.zzb = versionInfoParcel;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhelVar;
        this.zzh = str2;
        this.zzi = zzetuVar;
        this.zzj = zzgVar;
        this.zzk = zzfcjVar;
        this.zzm = zzdbeVar;
        this.zzl = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzbvk zza(ListenableFuture listenableFuture, Bundle bundle) throws Exception {
        zzcuv zzcuvVar = (zzcuv) listenableFuture.get();
        Bundle bundle2 = zzcuvVar.zza;
        String str = (String) ((ListenableFuture) this.zzg.zzb()).get();
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgQ)).booleanValue() && this.zzj.zzN();
        String str2 = this.zzh;
        PackageInfo packageInfo = this.zzf;
        List list = this.zze;
        return new zzbvk(bundle2, this.zzb, this.zzc, this.zzd, list, packageInfo, str, str2, null, null, z, this.zzk.zzb(), bundle, zzcuvVar.zzb);
    }

    public final ListenableFuture zzb(Bundle bundle) {
        this.zzm.zza();
        return zzffx.zzc(this.zzi.zza(new zzcuv(new Bundle(), new Bundle()), bundle, this.zzl == 2), zzfgh.SIGNALS, this.zza).zza();
    }

    public final ListenableFuture zzc() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue()) {
            Bundle bundle2 = this.zzk.zzs;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final ListenableFuture listenableFutureZzb = zzb(bundle);
        return this.zza.zza(zzfgh.REQUEST_PARCEL, listenableFutureZzb, (ListenableFuture) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcuu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(listenableFutureZzb, bundle);
            }
        }).zza();
    }
}

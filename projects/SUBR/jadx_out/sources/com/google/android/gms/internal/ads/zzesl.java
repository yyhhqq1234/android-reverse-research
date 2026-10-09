package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesl implements zzetr {
    private final Context zza;
    private final zzgcs zzb;
    private final zzfcj zzc;
    private final VersionInfoParcel zzd;

    zzesl(Context context, zzgcs zzgcsVar, zzfcj zzfcjVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzgcsVar;
        this.zzc = zzfcjVar;
        this.zzd = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0042 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0044 A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0056 A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x00bf A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00d1 A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00ef A[Catch: IOException -> 0x0126, TryCatch #0 {IOException -> 0x0126, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:8:0x0030, B:13:0x0056, B:14:0x007a, B:16:0x008c, B:18:0x00a2, B:20:0x00ab, B:25:0x00d1, B:27:0x00ef, B:28:0x0113, B:30:0x011e, B:23:0x00bf, B:11:0x0044), top: B:35:0x0000 }] */
    final /* synthetic */ zzesm zzc() throws Exception {
        zzfra zzfraVar;
        boolean z;
        boolean zZze;
        zzfrf zzfrfVarZzi;
        zzfrb zzfrbVarZza;
        try {
            Context context = this.zza;
            boolean zZzb = this.zzc.zzb();
            zzfra zzfraVar2 = new zzfra();
            zzfra zzfraVar3 = new zzfra();
            boolean zZzd = true;
            if (zZzb) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdi)).booleanValue()) {
                    return new zzesm(true);
                }
            }
            if (!zZzb) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzde)).booleanValue()) {
                    zzfraVar2 = zzfre.zzj(context).zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                } else if (zZzb) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdg)).booleanValue()) {
                        zzfraVar2 = zzfre.zzj(context).zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                    }
                }
            } else if (zZzb) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdg)).booleanValue()) {
                    zzfraVar2 = zzfre.zzj(context).zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdm)).booleanValue()) {
                if (this.zzd.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdl)).intValue()) {
                    zzfrf.zzi(context).zzj();
                }
            }
            if (zZzb) {
                if (zZzb) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdh)).booleanValue()) {
                        zzfrfVarZzi = zzfrf.zzi(context);
                        zzfrbVarZza = zzfrb.zza(context);
                        if (this.zzd.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdl)).intValue()) {
                            zzfraVar3 = zzfrfVarZzi.zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdq)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                            zZzd = zzfrbVarZza.zzd();
                        }
                        zZze = zzfrbVarZza.zze();
                        zzfraVar = zzfraVar3;
                        z = zZzd;
                    }
                }
                zzfraVar = zzfraVar3;
                z = true;
                zZze = true;
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdf)).booleanValue()) {
                    zzfrfVarZzi = zzfrf.zzi(context);
                    zzfrbVarZza = zzfrb.zza(context);
                    if (this.zzd.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdl)).intValue()) {
                        zzfraVar3 = zzfrfVarZzi.zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdq)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                        zZzd = zzfrbVarZza.zzd();
                    }
                    zZze = zzfrbVarZza.zze();
                    zzfraVar = zzfraVar3;
                    z = zZzd;
                } else {
                    if (zZzb) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdh)).booleanValue()) {
                            zzfrfVarZzi = zzfrf.zzi(context);
                            zzfrbVarZza = zzfrb.zza(context);
                            if (this.zzd.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdl)).intValue()) {
                                zzfraVar3 = zzfrfVarZzi.zzh(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdq)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                                zZzd = zzfrbVarZza.zzd();
                            }
                            zZze = zzfrbVarZza.zze();
                            zzfraVar = zzfraVar3;
                            z = zZzd;
                        }
                    }
                    zzfraVar = zzfraVar3;
                    z = true;
                    zZze = true;
                }
            }
            return new zzesm(zzfraVar2, zzfraVar, z, zZze, zZzb);
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "PerAppIdSignal");
            return new zzesm(this.zzc.zzb());
        }
    }
}

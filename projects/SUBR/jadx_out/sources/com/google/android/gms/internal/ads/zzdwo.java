package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwo implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;
    private final zzhfj zzd;

    public zzdwo(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4, zzhfj zzhfjVar5) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
        this.zzd = zzhfjVar4;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0058  */
    /* JADX WARN: Code duplicated, block: B:8:0x0076  */
    /* JADX WARN: Code duplicated, block: B:9:0x0080  */
    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        ListenableFuture listenableFutureZzb;
        final zzava zzavaVar = (zzava) this.zza.zzb();
        final Context contextZza = ((zzche) this.zzb).zza();
        zzfcj zzfcjVarZza = ((zzcvk) this.zzc).zza();
        long jLongValue = ((Long) this.zzd.zzb()).longValue();
        zzgcs zzgcsVarZzc = zzffh.zzc();
        int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcO)).intValue();
        if (iIntValue != -1) {
            if (Integer.toString(iIntValue).equals(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcjVarZza.zzd)))) {
                if (com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - jLongValue < ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcQ)).intValue()) {
                    listenableFutureZzb = zzgcsVarZzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwi
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return zzavaVar.zzc().zzg(contextZza);
                        }
                    });
                } else {
                    listenableFutureZzb = zzgcsVarZzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwj
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return zzavaVar.zzc().zzf(contextZza);
                        }
                    });
                }
            } else {
                listenableFutureZzb = zzgcsVarZzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwj
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzavaVar.zzc().zzf(contextZza);
                    }
                });
            }
        } else {
            if (com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - jLongValue < ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcQ)).intValue()) {
                listenableFutureZzb = zzgcsVarZzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwi
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzavaVar.zzc().zzg(contextZza);
                    }
                });
            } else {
                listenableFutureZzb = zzgcsVarZzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwj
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzavaVar.zzc().zzf(contextZza);
                    }
                });
            }
        }
        zzhez.zzb(listenableFutureZzb);
        return listenableFutureZzb;
    }
}

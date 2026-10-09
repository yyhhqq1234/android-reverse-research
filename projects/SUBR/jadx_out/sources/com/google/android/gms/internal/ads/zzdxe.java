package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdxe implements zzdyg {
    private static final Pattern zza = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzdwg zzb;
    private final zzgcs zzc;
    private final zzfcj zzd;
    private final ScheduledExecutorService zze;
    private final zzeag zzf;
    private final zzfhh zzg;
    private final Context zzh;

    zzdxe(Context context, zzfcj zzfcjVar, zzdwg zzdwgVar, zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzeag zzeagVar, zzfhh zzfhhVar) {
        this.zzh = context;
        this.zzd = zzfcjVar;
        this.zzb = zzdwgVar;
        this.zzc = zzgcsVar;
        this.zze = scheduledExecutorService;
        this.zzf = zzeagVar;
        this.zzg = zzfhhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyg
    public final ListenableFuture zzb(zzbvk zzbvkVar) {
        Context context = this.zzh;
        ListenableFuture listenableFutureZzc = this.zzb.zzc(zzbvkVar);
        zzfgw zzfgwVarZza = zzfgv.zza(context, 11);
        zzfhg.zzd(listenableFutureZzc, zzfgwVarZza);
        ListenableFuture listenableFutureZzn = zzgch.zzn(listenableFutureZzc, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxb
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzc((zzdyi) obj);
            }
        }, this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfx)).booleanValue()) {
            listenableFutureZzn = zzgch.zzf(zzgch.zzo(listenableFutureZzn, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS, this.zze), TimeoutException.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxc
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final ListenableFuture zza(Object obj) {
                    return zzgch.zzg(new zzdvy(5));
                }
            }, zzbzw.zzg);
        }
        zzfhg.zza(listenableFutureZzn, this.zzg, zzfgwVarZza);
        zzgch.zzr(listenableFutureZzn, new zzdxd(this), zzbzw.zzg);
        return listenableFutureZzn;
    }

    final /* synthetic */ ListenableFuture zzc(zzdyi zzdyiVar) throws Exception {
        return zzgch.zzh(new zzfca(new zzfbx(this.zzd), zzfbz.zza(new InputStreamReader(zzdyiVar.zzb()), zzdyiVar.zza())));
    }
}

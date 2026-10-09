package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcaq implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcaw zzc;

    zzcaq(zzcaw zzcawVar, String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcaw zzcawVar = this.zzc;
        if (zzcawVar.zzq != null) {
            zzcawVar.zzq.zzb(this.zza, this.zzb);
        }
    }
}

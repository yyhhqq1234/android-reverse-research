package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcwf extends zzdbj implements zzcvx {
    public zzcwf(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzq(new zzdbi() { // from class: com.google.android.gms.internal.ads.zzcwe
            @Override // com.google.android.gms.internal.ads.zzdbi
            public final void zza(Object obj) {
                ((zzcwj) obj).zzq(zzeVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzb() {
        zzq(new zzdbi() { // from class: com.google.android.gms.internal.ads.zzcwd
            @Override // com.google.android.gms.internal.ads.zzdbi
            public final void zza(Object obj) {
                ((zzcwj) obj).zzq(zzfdk.zzd(11, null, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzc(final zzdgb zzdgbVar) {
        zzq(new zzdbi() { // from class: com.google.android.gms.internal.ads.zzcwc
            @Override // com.google.android.gms.internal.ads.zzdbi
            public final void zza(Object obj) {
                zzcwj zzcwjVar = (zzcwj) obj;
                String message = zzdgbVar.getMessage();
                if (message == null) {
                    message = "Internal show error.";
                }
                zzcwjVar.zzq(zzfdk.zzd(12, message, null));
            }
        });
    }
}

package com.google.android.gms.internal.ads;

import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaur implements Runnable {
    final /* synthetic */ zzaus zza;

    zzaur(zzaus zzausVar) {
        this.zza = zzausVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza.zzo) {
            if (this.zza.zzp) {
                return;
            }
            this.zza.zzp = true;
            try {
                zzaus.zzj(this.zza);
            } catch (Exception e) {
                this.zza.zzh.zzc(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_TIMED_OUT, -1L, e);
            }
            synchronized (this.zza.zzo) {
                this.zza.zzp = false;
            }
        }
    }
}

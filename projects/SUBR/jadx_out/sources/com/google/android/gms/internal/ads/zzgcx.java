package com.google.android.gms.internal.ads;

import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgcx extends zzgax.zzi implements Runnable {
    private final Runnable zza;

    @Override // com.google.android.gms.internal.ads.zzgax
    protected final String zza() {
        return "task=[" + this.zza.toString() + y8.i.e;
    }

    public zzgcx(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgdi extends zzgbx implements RunnableFuture {

    @CheckForNull
    private volatile zzgcp zza;

    zzgdi(zzgbn zzgbnVar) {
        this.zza = new zzgdg(this, zzgbnVar);
    }

    static zzgdi zze(Runnable runnable, Object obj) {
        return new zzgdi(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgcp zzgcpVar = this.zza;
        if (zzgcpVar != null) {
            zzgcpVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    @CheckForNull
    protected final String zza() {
        zzgcp zzgcpVar = this.zza;
        if (zzgcpVar == null) {
            return super.zza();
        }
        return "task=[" + zzgcpVar.toString() + y8.i.e;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    protected final void zzb() {
        zzgcp zzgcpVar;
        if (zzt() && (zzgcpVar = this.zza) != null) {
            zzgcpVar.zzh();
        }
        this.zza = null;
    }

    zzgdi(Callable callable) {
        this.zza = new zzgdh(this, callable);
    }
}

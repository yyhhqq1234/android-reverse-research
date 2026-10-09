package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfvi implements zzfvf {
    private static final zzfvf zza = new zzfvf() { // from class: com.google.android.gms.internal.ads.zzfvh
        @Override // com.google.android.gms.internal.ads.zzfvf
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private final zzfvm zzb = new zzfvm();
    private volatile zzfvf zzc;

    @CheckForNull
    private Object zzd;

    zzfvi(zzfvf zzfvfVar) {
        this.zzc = zzfvfVar;
    }

    public final String toString() {
        Object obj = this.zzc;
        if (obj == zza) {
            obj = "<supplier that returned " + String.valueOf(this.zzd) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final Object zza() {
        zzfvf zzfvfVar = this.zzc;
        zzfvf zzfvfVar2 = zza;
        if (zzfvfVar != zzfvfVar2) {
            synchronized (this.zzb) {
                if (this.zzc != zzfvfVar2) {
                    Object objZza = this.zzc.zza();
                    this.zzd = objZza;
                    this.zzc = zzfvfVar2;
                    return objZza;
                }
            }
        }
        return this.zzd;
    }
}

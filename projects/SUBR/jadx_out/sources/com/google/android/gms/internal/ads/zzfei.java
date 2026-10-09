package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfei implements zzfeg {
    private final String zza;

    public zzfei(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfeg
    public final boolean equals(Object obj) {
        if (obj instanceof zzfei) {
            return this.zza.equals(((zzfei) obj).zza);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfeg
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}

package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccr extends zzaqv {
    static final zzccr zzb = new zzccr();

    zzccr() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqv
    public final zzaqz zza(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new zzarb();
        }
        return "mvhd".equals(str) ? new zzarc() : new zzard(str);
    }
}

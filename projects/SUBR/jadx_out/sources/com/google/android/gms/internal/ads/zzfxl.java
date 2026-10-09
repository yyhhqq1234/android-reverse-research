package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxl extends zzfvn {
    private final zzfxn zza;

    zzfxl(zzfxn zzfxnVar, int i) {
        super(zzfxnVar.size(), i);
        this.zza = zzfxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvn
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}

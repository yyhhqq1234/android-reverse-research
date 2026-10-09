package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgyu implements zzgzw {
    private static final zzgza zza = new zzgys();
    private final zzgza zzb;

    public zzgyu() {
        zzgza zzgzaVar = zza;
        int i = zzgzm.zza;
        zzgyt zzgytVar = new zzgyt(zzgxk.zza(), zzgzaVar);
        byte[] bArr = zzgye.zzb;
        this.zzb = zzgytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzw
    public final zzgzv zza(Class cls) {
        int i = zzgzx.zza;
        if (!zzgxr.class.isAssignableFrom(cls)) {
            int i2 = zzgzm.zza;
        }
        zzgyz zzgyzVarZzb = this.zzb.zzb(cls);
        if (zzgyzVarZzb.zzb()) {
            int i3 = zzgzm.zza;
            return zzgzg.zzc(zzgzx.zzm(), zzgxe.zza(), zzgyzVarZzb.zza());
        }
        int i4 = zzgzm.zza;
        return zzgzf.zzm(cls, zzgyzVarZzb, zzgzj.zza(), zzgyq.zza(), zzgzx.zzm(), zzgyzVarZzb.zzc() + (-1) != 1 ? zzgxe.zza() : null, zzgyy.zza());
    }
}

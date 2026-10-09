package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfut extends zzfva {
    final /* synthetic */ zzfty zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfut(zzfuu zzfuuVar, zzfvc zzfvcVar, CharSequence charSequence, zzfty zzftyVar) {
        super(zzfvcVar, charSequence);
        this.zza = zzftyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    final int zzd(int i) {
        CharSequence charSequence = this.zzb;
        int length = charSequence.length();
        zzfun.zzb(i, length, "index");
        while (i < length) {
            if (this.zza.zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}

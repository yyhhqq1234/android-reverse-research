package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgew implements zzgdn {
    private final zzgnf zza;

    /* synthetic */ zzgew(zzgnf zzgnfVar, zzgex zzgexVar) {
        this.zza = zzgnfVar;
        if (zzgnfVar.zzg()) {
            zzglq zzglqVarZza = zzgmf.zzb().zza();
            zzglu zzgluVarZza = zzglx.zza(zzgnfVar);
            zzglqVarZza.zza(zzgluVarZza, "aead", "encrypt");
            zzglqVarZza.zza(zzgluVarZza, "aead", "decrypt");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 5) {
            for (zzgnd zzgndVar : this.zza.zzf(Arrays.copyOf(bArr, 5))) {
                try {
                    byte[] bArrZza = ((zzgdn) zzgndVar.zzd()).zza(bArr, bArr2);
                    zzgndVar.zza();
                    int length = bArr.length;
                    return bArrZza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzgnd zzgndVar2 : this.zza.zzf(zzgds.zza)) {
            try {
                byte[] bArrZza2 = ((zzgdn) zzgndVar2.zzd()).zza(bArr, bArr2);
                zzgndVar2.zza();
                int length2 = bArr.length;
                return bArrZza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}

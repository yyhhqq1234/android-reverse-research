package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentInformation;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@3.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzw {
    private final zzx zza;
    private final zzck zzb;
    private int zzc = 0;
    private ConsentInformation.PrivacyOptionsRequirementStatus zzd = ConsentInformation.PrivacyOptionsRequirementStatus.UNKNOWN;

    zzw(zzx zzxVar, zzck zzckVar) {
        this.zza = zzxVar;
        this.zzb = zzckVar;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    final zzz zza() throws zzg {
        String str;
        int i = this.zzb.zzf;
        this.zza.zzc.zzh(i == 8);
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        switch (i2) {
            case 1:
            case 2:
            case 3:
                this.zzc = 3;
                break;
            case 4:
                this.zzc = 2;
                break;
            case 5:
                this.zzc = 1;
                break;
            case 6:
                throw new zzg(1, "Invalid response from server: ".concat(String.valueOf(this.zzb.zzc)));
            case 7:
                throw new zzg(3, "Publisher misconfiguration: ".concat(String.valueOf(this.zzb.zzc)));
            default:
                throw new zzg(1, "Invalid response from server.");
        }
        int i3 = this.zzb.zzg;
        int i4 = i3 - 1;
        if (i3 == 0) {
            throw null;
        }
        if (i4 == 1) {
            this.zzd = ConsentInformation.PrivacyOptionsRequirementStatus.REQUIRED;
        } else {
            if (i4 != 2) {
                throw new zzg(1, "Invalid response from server.");
            }
            this.zzd = ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED;
        }
        zzck zzckVar = this.zzb;
        String str2 = zzckVar.zza;
        zzbp zzbpVar = str2 == null ? null : new zzbp(zzckVar.zzb, str2);
        this.zza.zzc.zzj(new HashSet(zzckVar.zzd));
        for (zzcj zzcjVar : this.zzb.zze) {
            int i5 = zzcjVar.zzb;
            int i6 = i5 - 1;
            if (i5 == 0) {
                throw null;
            }
            if (i6 == 0) {
                str = null;
            } else if (i6 == 1) {
                str = "write";
            } else if (i6 != 2) {
                str = null;
            } else {
                str = "clear";
            }
            if (str != null) {
                zzx zzxVar = this.zza;
                zzxVar.zza.zzb(str, zzcjVar.zza, zzxVar.zzb);
            }
        }
        return new zzz(this.zzc, this.zzd, zzbpVar, null);
    }
}

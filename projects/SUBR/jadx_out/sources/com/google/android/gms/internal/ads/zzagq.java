package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagq extends zzagh {
    public static final Parcelable.Creator<zzagq> CREATOR = new zzagp();
    public final String zza;
    public final zzfxn zzb;

    public zzagq(String str, String str2, List list) {
        super(str);
        zzcw.zzd(!list.isEmpty());
        this.zza = str2;
        zzfxn zzfxnVarZzl = zzfxn.zzl(list);
        this.zzb = zzfxnVarZzl;
    }

    private static List zzb(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzagq zzagqVar = (zzagq) obj;
            if (Objects.equals(this.zzf, zzagqVar.zzf) && Objects.equals(this.zza, zzagqVar.zza) && this.zzb.equals(zzagqVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zzf.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        String str = this.zza;
        return (((iHashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.zzb.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzagh
    public final String toString() {
        return this.zzf + ": description=" + this.zza + ": values=" + String.valueOf(this.zzb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeStringArray((String[]) this.zzb.toArray(new String[0]));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:74:0x0115  */
    @Override // com.google.android.gms.internal.ads.zzagh, com.google.android.gms.internal.ads.zzax
    public final void zza(zzat zzatVar) {
        switch (this.zzf) {
            case "TT2":
            case "TIT2":
                zzatVar.zzq((CharSequence) this.zzb.get(0));
                break;
            case "TP1":
            case "TPE1":
                zzatVar.zze((CharSequence) this.zzb.get(0));
                break;
            case "TP2":
            case "TPE2":
                zzatVar.zzc((CharSequence) this.zzb.get(0));
                break;
            case "TAL":
            case "TALB":
                zzatVar.zzd((CharSequence) this.zzb.get(0));
                break;
            case "TRK":
            case "TRCK":
                String str = (String) this.zzb.get(0);
                int i = zzei.zza;
                String[] strArrSplit = str.split(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH, -1);
                try {
                    int i2 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    zzatVar.zzs(Integer.valueOf(i2));
                    zzatVar.zzr(numValueOf);
                    break;
                } catch (NumberFormatException unused) {
                    return;
                }
                break;
            case "TYE":
            case "TYER":
                try {
                    zzatVar.zzl(Integer.valueOf(Integer.parseInt((String) this.zzb.get(0))));
                    break;
                } catch (NumberFormatException unused2) {
                    return;
                }
                break;
            case "TDA":
            case "TDAT":
                try {
                    String str2 = (String) this.zzb.get(0);
                    int i3 = Integer.parseInt(str2.substring(2, 4));
                    int i4 = Integer.parseInt(str2.substring(0, 2));
                    zzatVar.zzk(Integer.valueOf(i3));
                    zzatVar.zzj(Integer.valueOf(i4));
                    break;
                } catch (NumberFormatException | StringIndexOutOfBoundsException unused3) {
                    return;
                }
                break;
            case "TDRC":
                List listZzb = zzb((String) this.zzb.get(0));
                int size = listZzb.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size == 3) {
                            zzatVar.zzj((Integer) listZzb.get(2));
                        }
                    }
                    zzatVar.zzk((Integer) listZzb.get(1));
                }
                zzatVar.zzl((Integer) listZzb.get(0));
                break;
            case "TDRL":
                List listZzb2 = zzb((String) this.zzb.get(0));
                int size2 = listZzb2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 == 3) {
                            zzatVar.zzm((Integer) listZzb2.get(2));
                        }
                    }
                    zzatVar.zzn((Integer) listZzb2.get(1));
                }
                zzatVar.zzo((Integer) listZzb2.get(0));
                break;
            case "TCM":
            case "TCOM":
                zzatVar.zzf((CharSequence) this.zzb.get(0));
                break;
            case "TP3":
            case "TPE3":
                zzatVar.zzg((CharSequence) this.zzb.get(0));
                break;
            case "TXT":
            case "TEXT":
                zzatVar.zzt((CharSequence) this.zzb.get(0));
                break;
            case "TCON":
                Integer numZzf = zzgaq.zzf((String) this.zzb.get(0), 10);
                if (numZzf == null) {
                    zzatVar.zzi((CharSequence) this.zzb.get(0));
                    break;
                } else {
                    String strZza = zzagi.zza(numZzf.intValue());
                    if (strZza != null) {
                        zzatVar.zzi(strZza);
                    }
                    break;
                }
                break;
        }
    }
}

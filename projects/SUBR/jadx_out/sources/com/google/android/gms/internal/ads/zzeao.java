package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import java.util.ArrayList;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeao extends zzeap {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzcuw zzd;
    private final TelephonyManager zze;
    private final zzeag zzf;
    private zzbbq.zzq zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbbq.zzaf.zzd.CONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), zzbbq.zzaf.zzd.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbbq.zzaf.zzd.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbbq.zzaf.zzd.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbbq.zzaf.zzd.DISCONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), zzbbq.zzaf.zzd.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbbq.zzaf.zzd.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbbq.zzaf.zzd.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbbq.zzaf.zzd.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbbq.zzaf.zzd.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbbq.zzaf.zzd.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbbq.zzaf.zzd.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbbq.zzaf.zzd.CONNECTING);
    }

    zzeao(Context context, zzcuw zzcuwVar, zzeag zzeagVar, zzeac zzeacVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzeacVar, zzgVar);
        this.zzc = context;
        this.zzd = zzcuwVar;
        this.zzf = zzeagVar;
        this.zze = (TelephonyManager) context.getSystemService("phone");
    }

    static /* bridge */ /* synthetic */ zzbbq.zzab zza(zzeao zzeaoVar, Bundle bundle) {
        zzbbq.zzab.zzb zzbVar;
        zzbbq.zzab.zza zzaVarZza = zzbbq.zzab.zza();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            zzeaoVar.zzg = zzbbq.zzq.ENUM_TRUE;
        } else {
            zzeaoVar.zzg = zzbbq.zzq.ENUM_FALSE;
            if (i == 0) {
                zzaVarZza.zzd(zzbbq.zzab.zzc.CELL);
            } else if (i != 1) {
                zzaVarZza.zzd(zzbbq.zzab.zzc.NETWORKTYPE_UNSPECIFIED);
            } else {
                zzaVarZza.zzd(zzbbq.zzab.zzc.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbVar = zzbbq.zzab.zzb.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzbVar = zzbbq.zzab.zzb.THREE_G;
                    break;
                case 13:
                    zzbVar = zzbbq.zzab.zzb.LTE;
                    break;
                default:
                    zzbVar = zzbbq.zzab.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zzaVarZza.zzc(zzbVar);
        }
        return zzaVarZza.zzbr();
    }

    static /* bridge */ /* synthetic */ zzbbq.zzaf.zzd zzb(zzeao zzeaoVar, Bundle bundle) {
        return (zzbbq.zzaf.zzd) zzb.get(zzfcx.zza(zzfcx.zza(bundle, y8.h.G), "network").getInt("active_network_state", -1), zzbbq.zzaf.zzd.UNSPECIFIED);
    }

    static /* bridge */ /* synthetic */ byte[] zze(zzeao zzeaoVar, boolean z, ArrayList arrayList, zzbbq.zzab zzabVar, zzbbq.zzaf.zzd zzdVar) {
        zzbbq.zzaf.zza.C0049zza c0049zzaZzn = zzbbq.zzaf.zza.zzn();
        c0049zzaZzn.zzn(arrayList);
        c0049zzaZzn.zzD(zzg(Settings.Global.getInt(zzeaoVar.zzc.getContentResolver(), "airplane_mode_on", 0) != 0));
        c0049zzaZzn.zzE(com.google.android.gms.ads.internal.zzv.zzr().zzg(zzeaoVar.zzc, zzeaoVar.zze));
        c0049zzaZzn.zzM(zzeaoVar.zzf.zze());
        c0049zzaZzn.zzL(zzeaoVar.zzf.zzb());
        c0049zzaZzn.zzG(zzeaoVar.zzf.zza());
        c0049zzaZzn.zzH(zzdVar);
        c0049zzaZzn.zzJ(zzabVar);
        c0049zzaZzn.zzK(zzeaoVar.zzg);
        c0049zzaZzn.zzN(zzg(z));
        c0049zzaZzn.zzP(zzeaoVar.zzf.zzd());
        c0049zzaZzn.zzO(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        c0049zzaZzn.zzQ(zzg(Settings.Global.getInt(zzeaoVar.zzc.getContentResolver(), "wifi_on", 0) != 0));
        return c0049zzaZzn.zzbr().zzaV();
    }

    private static final zzbbq.zzq zzg(boolean z) {
        return z ? zzbbq.zzq.ENUM_TRUE : zzbbq.zzq.ENUM_FALSE;
    }

    public final void zzd(boolean z) {
        zzgch.zzr(this.zzd.zzb(new Bundle()), new zzean(this, z), zzbzw.zzg);
    }
}

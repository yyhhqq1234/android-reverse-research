package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgxd extends zzgxc {
    zzgxd() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxc
    final void zza(Object obj) {
        ((zzgxn) obj).zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgxc
    final void zzb(zzhaw zzhawVar, Map.Entry entry) throws IOException {
        zzgxo zzgxoVar = (zzgxo) entry.getKey();
        if (!zzgxoVar.zzc) {
            zzhau zzhauVar = zzhau.DOUBLE;
            switch (zzgxoVar.zzb) {
                case DOUBLE:
                    zzhawVar.zzf(zzgxoVar.zza, ((Double) entry.getValue()).doubleValue());
                    break;
                case FLOAT:
                    zzhawVar.zzo(zzgxoVar.zza, ((Float) entry.getValue()).floatValue());
                    break;
                case INT64:
                    zzhawVar.zzt(zzgxoVar.zza, ((Long) entry.getValue()).longValue());
                    break;
                case UINT64:
                    zzhawVar.zzK(zzgxoVar.zza, ((Long) entry.getValue()).longValue());
                    break;
                case INT32:
                    zzhawVar.zzr(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case FIXED64:
                    zzhawVar.zzm(zzgxoVar.zza, ((Long) entry.getValue()).longValue());
                    break;
                case FIXED32:
                    zzhawVar.zzk(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case BOOL:
                    zzhawVar.zzb(zzgxoVar.zza, ((Boolean) entry.getValue()).booleanValue());
                    break;
                case STRING:
                    zzhawVar.zzG(zzgxoVar.zza, (String) entry.getValue());
                    break;
                case GROUP:
                    zzhawVar.zzq(zzgxoVar.zza, entry.getValue(), zzgzm.zza().zzb(entry.getValue().getClass()));
                    break;
                case MESSAGE:
                    zzhawVar.zzv(zzgxoVar.zza, entry.getValue(), zzgzm.zza().zzb(entry.getValue().getClass()));
                    break;
                case BYTES:
                    zzhawVar.zzd(zzgxoVar.zza, (zzgwj) entry.getValue());
                    break;
                case UINT32:
                    zzhawVar.zzI(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case ENUM:
                    zzhawVar.zzr(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case SFIXED32:
                    zzhawVar.zzx(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case SFIXED64:
                    zzhawVar.zzz(zzgxoVar.zza, ((Long) entry.getValue()).longValue());
                    break;
                case SINT32:
                    zzhawVar.zzB(zzgxoVar.zza, ((Integer) entry.getValue()).intValue());
                    break;
                case SINT64:
                    zzhawVar.zzD(zzgxoVar.zza, ((Long) entry.getValue()).longValue());
                    break;
            }
        }
        zzhau zzhauVar2 = zzhau.DOUBLE;
        switch (zzgxoVar.zzb) {
            case DOUBLE:
                zzgzx.zzt(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case FLOAT:
                zzgzx.zzx(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case INT64:
                zzgzx.zzA(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case UINT64:
                zzgzx.zzI(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case INT32:
                zzgzx.zzz(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case FIXED64:
                zzgzx.zzw(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case FIXED32:
                zzgzx.zzv(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case BOOL:
                zzgzx.zzr(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case STRING:
                zzgzx.zzG(zzgxoVar.zza, (List) entry.getValue(), zzhawVar);
                break;
            case GROUP:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    zzgzx.zzy(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgzm.zza().zzb(list.get(0).getClass()));
                    break;
                }
                break;
            case MESSAGE:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    zzgzx.zzB(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgzm.zza().zzb(list2.get(0).getClass()));
                    break;
                }
                break;
            case BYTES:
                zzgzx.zzs(zzgxoVar.zza, (List) entry.getValue(), zzhawVar);
                break;
            case UINT32:
                zzgzx.zzH(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case ENUM:
                zzgzx.zzz(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case SFIXED32:
                zzgzx.zzC(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case SFIXED64:
                zzgzx.zzD(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case SINT32:
                zzgzx.zzE(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
            case SINT64:
                zzgzx.zzF(zzgxoVar.zza, (List) entry.getValue(), zzhawVar, zzgxoVar.zzd);
                break;
        }
    }
}

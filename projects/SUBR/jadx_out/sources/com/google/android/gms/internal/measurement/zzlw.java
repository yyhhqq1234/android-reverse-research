package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlw {
    private static final Class zza;
    private static final zzml zzb;
    private static final zzml zzc;
    private static final zzml zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzmn();
    }

    public static zzml zzA() {
        return zzc;
    }

    public static zzml zzB() {
        return zzd;
    }

    static Object zzC(int i, List list, zzkg zzkgVar, Object obj, zzml zzmlVar) {
        if (zzkgVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                if (zzkgVar.zza(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    obj = zzD(i, iIntValue, obj, zzmlVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzkgVar.zza(iIntValue2)) {
                    obj = zzD(i, iIntValue2, obj, zzmlVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    static Object zzD(int i, int i2, Object obj, zzml zzmlVar) {
        if (obj == null) {
            obj = zzmlVar.zze();
        }
        zzmlVar.zzf(obj, i, i2);
        return obj;
    }

    static void zzE(zzjp zzjpVar, Object obj, Object obj2) {
        zzjpVar.zza(obj2);
        throw null;
    }

    static void zzF(zzml zzmlVar, Object obj, Object obj2) {
        zzmlVar.zzh(obj, zzmlVar.zzd(zzmlVar.zzc(obj), zzmlVar.zzc(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (!zzkc.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzH(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzc(i, list, z);
    }

    public static void zzI(int i, List list, zznd zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zze(i, list);
    }

    public static void zzJ(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzg(i, list, z);
    }

    public static void zzK(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzj(i, list, z);
    }

    public static void zzL(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzl(i, list, z);
    }

    public static void zzM(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzn(i, list, z);
    }

    public static void zzN(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzp(i, list, z);
    }

    public static void zzO(int i, List list, zznd zzndVar, zzlu zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzjk) zzndVar).zzq(i, list.get(i2), zzluVar);
        }
    }

    public static void zzP(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzs(i, list, z);
    }

    public static void zzQ(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzu(i, list, z);
    }

    public static void zzR(int i, List list, zznd zzndVar, zzlu zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzjk) zzndVar).zzv(i, list.get(i2), zzluVar);
        }
    }

    public static void zzS(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzx(i, list, z);
    }

    public static void zzT(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzz(i, list, z);
    }

    public static void zzU(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzB(i, list, z);
    }

    public static void zzV(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzD(i, list, z);
    }

    public static void zzW(int i, List list, zznd zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzG(i, list);
    }

    public static void zzX(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzI(i, list, z);
    }

    public static void zzY(int i, List list, zznd zzndVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.zzK(i, list, z);
    }

    static boolean zzZ(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.zzA(i << 3) + 1);
    }

    static void zzaa(zzle zzleVar, Object obj, Object obj2, long j) {
        zzmv.zzs(obj, j, zzle.zzb(zzmv.zzf(obj, j), zzmv.zzf(obj2, j)));
    }

    private static zzml zzab(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzml) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    static int zzb(List list) {
        return list.size();
    }

    static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzz = size * zzjj.zzz(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzz += zzjj.zzt((zzjb) list.get(i2));
        }
        return iZzz;
    }

    static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzjj.zzz(i));
    }

    static int zze(List list) {
        int iZzv;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZzv = 0;
            while (i < size) {
                iZzv += zzjj.zzv(zzkdVar.zze(i));
                i++;
            }
        } else {
            iZzv = 0;
            while (i < size) {
                iZzv += zzjj.zzv(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzv;
    }

    static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.zzA(i << 3) + 4);
    }

    static int zzg(List list) {
        return list.size() * 4;
    }

    static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.zzA(i << 3) + 8);
    }

    static int zzi(List list) {
        return list.size() * 8;
    }

    static int zzj(int i, List list, zzlu zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzu = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzu += zzjj.zzu(i, (zzlj) list.get(i2), zzluVar);
        }
        return iZzu;
    }

    static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzjj.zzz(i));
    }

    static int zzl(List list) {
        int iZzv;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZzv = 0;
            while (i < size) {
                iZzv += zzjj.zzv(zzkdVar.zze(i));
                i++;
            }
        } else {
            iZzv = 0;
            while (i < size) {
                iZzv += zzjj.zzv(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzv;
    }

    static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzjj.zzz(i));
    }

    static int zzn(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iZzB = 0;
            while (i < size) {
                iZzB += zzjj.zzB(zzkyVar.zza(i));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                iZzB += zzjj.zzB(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzB;
    }

    static int zzo(int i, Object obj, zzlu zzluVar) {
        if (!(obj instanceof zzkp)) {
            return zzjj.zzA(i << 3) + zzjj.zzx((zzlj) obj, zzluVar);
        }
        int iZzA = zzjj.zzA(i << 3);
        int iZza = ((zzkp) obj).zza();
        return iZzA + zzjj.zzA(iZza) + iZza;
    }

    static int zzp(int i, List list, zzlu zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzz = zzjj.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iZzz += obj instanceof zzkp ? zzjj.zzw((zzkp) obj) : zzjj.zzx((zzlj) obj, zzluVar);
        }
        return iZzz;
    }

    static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzjj.zzz(i));
    }

    static int zzr(List list) {
        int iZzA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZzA = 0;
            while (i < size) {
                int iZze = zzkdVar.zze(i);
                iZzA += zzjj.zzA((iZze >> 31) ^ (iZze + iZze));
                i++;
            }
        } else {
            iZzA = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzA += zzjj.zzA((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iZzA;
    }

    static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzjj.zzz(i));
    }

    static int zzt(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iZzB = 0;
            while (i < size) {
                long jZza = zzkyVar.zza(i);
                iZzB += zzjj.zzB((jZza >> 63) ^ (jZza + jZza));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzB += zzjj.zzB((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
        }
        return iZzB;
    }

    static int zzu(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzz = zzjj.zzz(i) * size;
        if (list instanceof zzkr) {
            zzkr zzkrVar = (zzkr) list;
            while (i2 < size) {
                Object objZzf = zzkrVar.zzf(i2);
                iZzz += objZzf instanceof zzjb ? zzjj.zzt((zzjb) objZzf) : zzjj.zzy((String) objZzf);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iZzz += obj instanceof zzjb ? zzjj.zzt((zzjb) obj) : zzjj.zzy((String) obj);
                i2++;
            }
        }
        return iZzz;
    }

    static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzjj.zzz(i));
    }

    static int zzw(List list) {
        int iZzA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZzA = 0;
            while (i < size) {
                iZzA += zzjj.zzA(zzkdVar.zze(i));
                i++;
            }
        } else {
            iZzA = 0;
            while (i < size) {
                iZzA += zzjj.zzA(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzA;
    }

    static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzjj.zzz(i));
    }

    static int zzy(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iZzB = 0;
            while (i < size) {
                iZzB += zzjj.zzB(zzkyVar.zza(i));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                iZzB += zzjj.zzB(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzB;
    }

    public static zzml zzz() {
        return zzb;
    }
}

package com.google.android.gms.internal.measurement;

import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlm<T> implements zzlu<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmv.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlj zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzkx zzm;
    private final zzml zzn;
    private final zzjp zzo;
    private final zzlo zzp;
    private final zzle zzq;

    private zzlm(int[] iArr, Object[] objArr, int i, int i2, zzlj zzljVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zzjpVar != null && zzjpVar.zzc(zzljVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzloVar;
        this.zzm = zzkxVar;
        this.zzn = zzmlVar;
        this.zzo = zzjpVar;
        this.zzg = zzljVar;
        this.zzq = zzleVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzmv.zzf(obj, j)).longValue();
    }

    private final zzkg zzD(int i) {
        int i2 = i / 3;
        return (zzkg) this.zzd[i2 + i2 + 1];
    }

    private final zzlu zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzlu zzluVar = (zzlu) this.zzd[i3];
        if (zzluVar != null) {
            return zzluVar;
        }
        zzlu zzluVarZzb = zzlr.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzluVarZzb;
        return zzluVarZzb;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        long jZzB = zzB(i) & 1048575;
        if (zzO(obj2, i)) {
            Object objZzf = zzmv.zzf(obj, jZzB);
            Object objZzf2 = zzmv.zzf(obj2, jZzB);
            if (objZzf != null && objZzf2 != null) {
                zzmv.zzs(obj, jZzB, zzkk.zzg(objZzf, objZzf2));
                zzJ(obj, i);
            } else if (objZzf2 != null) {
                zzmv.zzs(obj, jZzB, objZzf2);
                zzJ(obj, i);
            }
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int iZzB = zzB(i);
        int i2 = this.zzc[i];
        long j = iZzB & 1048575;
        if (zzR(obj2, i2, i)) {
            Object objZzf = zzR(obj, i2, i) ? zzmv.zzf(obj, j) : null;
            Object objZzf2 = zzmv.zzf(obj2, j);
            if (objZzf != null && objZzf2 != null) {
                zzmv.zzs(obj, j, zzkk.zzg(objZzf, objZzf2));
                zzK(obj, i2, i);
            } else if (objZzf2 != null) {
                zzmv.zzs(obj, j, objZzf2);
                zzK(obj, i2, i);
            }
        }
    }

    private final void zzJ(Object obj, int i) {
        int iZzy = zzy(i);
        long j = 1048575 & iZzy;
        if (j == 1048575) {
            return;
        }
        zzmv.zzq(obj, j, (1 << (iZzy >>> 20)) | zzmv.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzmv.zzq(obj, zzy(i2) & 1048575, i);
    }

    private final void zzL(Object obj, zznd zzndVar) throws IOException {
        int i;
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int iZzB = zzB(i3);
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int iZzA = zzA(iZzB);
            if (iZzA <= 17) {
                int i7 = iArr[i3 + 2];
                int i8 = i7 & i2;
                if (i8 != i5) {
                    i4 = unsafe.getInt(obj, i8);
                    i5 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = iZzB & i2;
            switch (iZzA) {
                case 0:
                    if ((i4 & i) != 0) {
                        zzndVar.zzf(i6, zzmv.zza(obj, j));
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 1:
                    if ((i4 & i) != 0) {
                        zzndVar.zzo(i6, zzmv.zzb(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 2:
                    if ((i4 & i) != 0) {
                        zzndVar.zzt(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 3:
                    if ((i4 & i) != 0) {
                        zzndVar.zzJ(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 4:
                    if ((i4 & i) != 0) {
                        zzndVar.zzr(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 5:
                    if ((i4 & i) != 0) {
                        zzndVar.zzm(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 6:
                    if ((i4 & i) != 0) {
                        zzndVar.zzk(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 7:
                    if ((i4 & i) != 0) {
                        zzndVar.zzb(i6, zzmv.zzw(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 8:
                    if ((i4 & i) != 0) {
                        zzT(i6, unsafe.getObject(obj, j), zzndVar);
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 9:
                    if ((i4 & i) != 0) {
                        zzndVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 10:
                    if ((i4 & i) != 0) {
                        zzndVar.zzd(i6, (zzjb) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 11:
                    if ((i4 & i) != 0) {
                        zzndVar.zzH(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 12:
                    if ((i4 & i) != 0) {
                        zzndVar.zzi(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 13:
                    if ((i4 & i) != 0) {
                        zzndVar.zzw(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 14:
                    if ((i4 & i) != 0) {
                        zzndVar.zzy(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 15:
                    if ((i4 & i) != 0) {
                        zzndVar.zzA(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 16:
                    if ((i4 & i) != 0) {
                        zzndVar.zzC(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 17:
                    if ((i4 & i) != 0) {
                        zzndVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 18:
                    zzlw.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 19:
                    zzlw.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 20:
                    zzlw.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 21:
                    zzlw.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 22:
                    zzlw.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 23:
                    zzlw.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 24:
                    zzlw.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 25:
                    zzlw.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 26:
                    zzlw.zzW(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar);
                    break;
                case 27:
                    zzlw.zzR(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, zzE(i3));
                    break;
                case 28:
                    zzlw.zzI(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar);
                    break;
                case 29:
                    zzlw.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 30:
                    zzlw.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 31:
                    zzlw.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 32:
                    zzlw.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 33:
                    zzlw.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 34:
                    zzlw.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                    break;
                case 35:
                    zzlw.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 36:
                    zzlw.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 37:
                    zzlw.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 38:
                    zzlw.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 39:
                    zzlw.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 40:
                    zzlw.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 41:
                    zzlw.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 42:
                    zzlw.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 43:
                    zzlw.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 44:
                    zzlw.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 45:
                    zzlw.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 46:
                    zzlw.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 47:
                    zzlw.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 48:
                    zzlw.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                    break;
                case 49:
                    zzlw.zzO(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, zzE(i3));
                    break;
                case 50:
                    zzM(zzndVar, i6, unsafe.getObject(obj, j), i3);
                    break;
                case 51:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzf(i6, zzn(obj, j));
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzo(i6, zzo(obj, j));
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzt(i6, zzC(obj, j));
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzJ(i6, zzC(obj, j));
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzr(i6, zzr(obj, j));
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzm(i6, zzC(obj, j));
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzk(i6, zzr(obj, j));
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzb(i6, zzS(obj, j));
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i3)) {
                        zzT(i6, unsafe.getObject(obj, j), zzndVar);
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzd(i6, (zzjb) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzH(i6, zzr(obj, j));
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzi(i6, zzr(obj, j));
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzw(i6, zzr(obj, j));
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzy(i6, zzC(obj, j));
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzA(i6, zzr(obj, j));
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzC(i6, zzC(obj, j));
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i3)) {
                        zzndVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        zzml zzmlVar = this.zzn;
        zzmlVar.zzi(zzmlVar.zzc(obj), zzndVar);
    }

    private final void zzM(zznd zzndVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private final boolean zzN(Object obj, Object obj2, int i) {
        return zzO(obj, i) == zzO(obj2, i);
    }

    private final boolean zzO(Object obj, int i) {
        int iZzy = zzy(i);
        long j = iZzy & 1048575;
        if (j != 1048575) {
            return (zzmv.zzc(obj, j) & (1 << (iZzy >>> 20))) != 0;
        }
        int iZzB = zzB(i);
        long j2 = iZzB & 1048575;
        switch (zzA(iZzB)) {
            case 0:
                return Double.doubleToRawLongBits(zzmv.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzmv.zzb(obj, j2)) != 0;
            case 2:
                return zzmv.zzd(obj, j2) != 0;
            case 3:
                return zzmv.zzd(obj, j2) != 0;
            case 4:
                return zzmv.zzc(obj, j2) != 0;
            case 5:
                return zzmv.zzd(obj, j2) != 0;
            case 6:
                return zzmv.zzc(obj, j2) != 0;
            case 7:
                return zzmv.zzw(obj, j2);
            case 8:
                Object objZzf = zzmv.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzjb) {
                    return !zzjb.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzmv.zzf(obj, j2) != null;
            case 10:
                return !zzjb.zzb.equals(zzmv.zzf(obj, j2));
            case 11:
                return zzmv.zzc(obj, j2) != 0;
            case 12:
                return zzmv.zzc(obj, j2) != 0;
            case 13:
                return zzmv.zzc(obj, j2) != 0;
            case 14:
                return zzmv.zzd(obj, j2) != 0;
            case 15:
                return zzmv.zzc(obj, j2) != 0;
            case 16:
                return zzmv.zzd(obj, j2) != 0;
            case 17:
                return zzmv.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzP(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzO(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzQ(Object obj, int i, zzlu zzluVar) {
        return zzluVar.zzk(zzmv.zzf(obj, i & 1048575));
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzmv.zzc(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzmv.zzf(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zznd zzndVar) throws IOException {
        if (obj instanceof String) {
            zzndVar.zzF(i, (String) obj);
        } else {
            zzndVar.zzd(i, (zzjb) obj);
        }
    }

    static zzmm zzd(Object obj) {
        zzkc zzkcVar = (zzkc) obj;
        zzmm zzmmVar = zzkcVar.zzc;
        if (zzmmVar != zzmm.zzc()) {
            return zzmmVar;
        }
        zzmm zzmmVarZze = zzmm.zze();
        zzkcVar.zzc = zzmmVarZze;
        return zzmmVarZze;
    }

    static zzlm zzl(Class cls, zzlg zzlgVar, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar) {
        if (zzlgVar instanceof zzlt) {
            return zzm((zzlt) zzlgVar, zzloVar, zzkxVar, zzmlVar, zzjpVar, zzleVar);
        }
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x025d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0260  */
    /* JADX WARN: Code duplicated, block: B:127:0x0278  */
    /* JADX WARN: Code duplicated, block: B:128:0x027b  */
    /* JADX WARN: Code duplicated, block: B:162:0x032b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0378  */
    /* JADX WARN: Code duplicated, block: B:180:0x0385  */
    static zzlm zzm(zzlt zzltVar, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt;
        int i7;
        char cCharAt2;
        int i8;
        char cCharAt3;
        int i9;
        char cCharAt4;
        int i10;
        char cCharAt5;
        int i11;
        char cCharAt6;
        int i12;
        char cCharAt7;
        int i13;
        char cCharAt8;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int i19;
        int i20;
        int iObjectFieldOffset2;
        Field fieldZzG;
        char cCharAt9;
        int i21;
        int i22;
        int i23;
        int i24;
        Object obj;
        Field fieldZzG2;
        int i25;
        Object obj2;
        Field fieldZzG3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        boolean z = zzltVar.zzc() == 2;
        String strZzd = zzltVar.zzd();
        int length = strZzd.length();
        char c = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i30 = 1;
            while (true) {
                i = i30 + 1;
                if (strZzd.charAt(i30) < 55296) {
                    break;
                }
                i30 = i;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int iCharAt4 = strZzd.charAt(i);
        if (iCharAt4 >= 55296) {
            int i32 = iCharAt4 & 8191;
            int i33 = 13;
            while (true) {
                i29 = i31 + 1;
                cCharAt13 = strZzd.charAt(i31);
                if (cCharAt13 < 55296) {
                    break;
                }
                i32 |= (cCharAt13 & 8191) << i33;
                i33 += 13;
                i31 = i29;
            }
            iCharAt4 = i32 | (cCharAt13 << i33);
            i31 = i29;
        }
        if (iCharAt4 == 0) {
            iArr = zza;
            i3 = 0;
            iCharAt = 0;
            i5 = 0;
            iCharAt2 = 0;
            i4 = 0;
            iCharAt3 = 0;
            i2 = 0;
        } else {
            int i34 = i31 + 1;
            int iCharAt5 = strZzd.charAt(i31);
            if (iCharAt5 >= 55296) {
                int i35 = iCharAt5 & 8191;
                int i36 = 13;
                while (true) {
                    i13 = i34 + 1;
                    cCharAt8 = strZzd.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i13;
                }
                iCharAt5 = i35 | (cCharAt8 << i36);
                i34 = i13;
            }
            int i37 = i34 + 1;
            int iCharAt6 = strZzd.charAt(i34);
            if (iCharAt6 >= 55296) {
                int i38 = iCharAt6 & 8191;
                int i39 = 13;
                while (true) {
                    i12 = i37 + 1;
                    cCharAt7 = strZzd.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i12;
                }
                iCharAt6 = i38 | (cCharAt7 << i39);
                i37 = i12;
            }
            int i40 = i37 + 1;
            iCharAt = strZzd.charAt(i37);
            if (iCharAt >= 55296) {
                int i41 = iCharAt & 8191;
                int i42 = 13;
                while (true) {
                    i11 = i40 + 1;
                    cCharAt6 = strZzd.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i11;
                }
                iCharAt = i41 | (cCharAt6 << i42);
                i40 = i11;
            }
            int i43 = i40 + 1;
            int iCharAt7 = strZzd.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i10 = i43 + 1;
                    cCharAt5 = strZzd.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i10;
                }
                iCharAt7 = i44 | (cCharAt5 << i45);
                i43 = i10;
            }
            int i46 = i43 + 1;
            iCharAt2 = strZzd.charAt(i43);
            if (iCharAt2 >= 55296) {
                int i47 = iCharAt2 & 8191;
                int i48 = 13;
                while (true) {
                    i9 = i46 + 1;
                    cCharAt4 = strZzd.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i9;
                }
                iCharAt2 = i47 | (cCharAt4 << i48);
                i46 = i9;
            }
            int i49 = i46 + 1;
            int iCharAt8 = strZzd.charAt(i46);
            if (iCharAt8 >= 55296) {
                int i50 = iCharAt8 & 8191;
                int i51 = 13;
                while (true) {
                    i8 = i49 + 1;
                    cCharAt3 = strZzd.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i8;
                }
                iCharAt8 = i50 | (cCharAt3 << i51);
                i49 = i8;
            }
            int i52 = i49 + 1;
            int iCharAt9 = strZzd.charAt(i49);
            if (iCharAt9 >= 55296) {
                int i53 = iCharAt9 & 8191;
                int i54 = 13;
                while (true) {
                    i7 = i52 + 1;
                    cCharAt2 = strZzd.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i7;
                }
                iCharAt9 = i53 | (cCharAt2 << i54);
                i52 = i7;
            }
            int i55 = i52 + 1;
            iCharAt3 = strZzd.charAt(i52);
            if (iCharAt3 >= 55296) {
                int i56 = iCharAt3 & 8191;
                int i57 = 13;
                while (true) {
                    i6 = i55 + 1;
                    cCharAt = strZzd.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i6;
                }
                iCharAt3 = i56 | (cCharAt << i57);
                i55 = i6;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i2 = iCharAt5 + iCharAt5 + iCharAt6;
            i3 = iCharAt5;
            i31 = i55;
            int i58 = iCharAt8;
            i4 = iCharAt7;
            i5 = i58;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzltVar.zze();
        Class<?> cls = zzltVar.zza().getClass();
        int[] iArr2 = new int[iCharAt2 * 3];
        Object[] objArr = new Object[iCharAt2 + iCharAt2];
        int i59 = iCharAt3 + i5;
        int i60 = iCharAt3;
        int i61 = i59;
        int i62 = 0;
        int i63 = 0;
        while (i31 < length) {
            int i64 = i31 + 1;
            int iCharAt10 = strZzd.charAt(i31);
            if (iCharAt10 >= c) {
                int i65 = iCharAt10 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i28 = i66 + 1;
                    cCharAt12 = strZzd.charAt(i66);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i65 |= (cCharAt12 & 8191) << i67;
                    i67 += 13;
                    i66 = i28;
                }
                iCharAt10 = i65 | (cCharAt12 << i67);
                i14 = i28;
            } else {
                i14 = i64;
            }
            int i68 = i14 + 1;
            int iCharAt11 = strZzd.charAt(i14);
            if (iCharAt11 >= c) {
                int i69 = iCharAt11 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i27 = i70 + 1;
                    cCharAt11 = strZzd.charAt(i70);
                    i15 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i69 |= (cCharAt11 & 8191) << i71;
                    i71 += 13;
                    i70 = i27;
                    length = i15;
                }
                iCharAt11 = i69 | (cCharAt11 << i71);
                i16 = i27;
            } else {
                i15 = length;
                i16 = i68;
            }
            int i72 = iCharAt11 & 255;
            int i73 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i63] = i62;
                i63++;
            }
            if (i72 >= 51) {
                int i74 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i75 = iCharAt12 & 8191;
                    int i76 = i74;
                    int i77 = 13;
                    while (true) {
                        i26 = i76 + 1;
                        cCharAt10 = strZzd.charAt(i76);
                        i17 = i4;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i75 |= (cCharAt10 & 8191) << i77;
                        i77 += 13;
                        i76 = i26;
                        i4 = i17;
                    }
                    iCharAt12 = i75 | (cCharAt10 << i77);
                    i22 = i26;
                } else {
                    i17 = i4;
                    i22 = i74;
                }
                int i78 = i72 - 51;
                i19 = i22;
                if (i78 == 9 || i78 == 17) {
                    int i79 = i62 / 3;
                    i23 = i2 + 1;
                    objArr[i79 + i79 + 1] = objArrZze[i2];
                } else {
                    if (i78 == 12 && !z) {
                        int i80 = i62 / 3;
                        i23 = i2 + 1;
                        objArr[i80 + i80 + 1] = objArrZze[i2];
                    }
                    i24 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i24];
                    if (obj instanceof Field) {
                        fieldZzG2 = (Field) obj;
                    } else {
                        fieldZzG2 = zzG(cls, (String) obj);
                        objArrZze[i24] = fieldZzG2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzG2);
                    i25 = i24 + 1;
                    obj2 = objArrZze[i25];
                    if (obj2 instanceof Field) {
                        fieldZzG3 = (Field) obj2;
                    } else {
                        fieldZzG3 = zzG(cls, (String) obj2);
                        objArrZze[i25] = fieldZzG3;
                    }
                    strZzd = strZzd;
                    i3 = i3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzG3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i20 = 0;
                }
                i2 = i23;
                i24 = iCharAt12 + iCharAt12;
                obj = objArrZze[i24];
                if (obj instanceof Field) {
                    fieldZzG2 = (Field) obj;
                } else {
                    fieldZzG2 = zzG(cls, (String) obj);
                    objArrZze[i24] = fieldZzG2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzG2);
                i25 = i24 + 1;
                obj2 = objArrZze[i25];
                if (obj2 instanceof Field) {
                    fieldZzG3 = (Field) obj2;
                } else {
                    fieldZzG3 = zzG(cls, (String) obj2);
                    objArrZze[i25] = fieldZzG3;
                }
                strZzd = strZzd;
                i3 = i3;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzG3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i20 = 0;
            } else {
                i17 = i4;
                int i81 = i2 + 1;
                Field fieldZzG4 = zzG(cls, (String) objArrZze[i2]);
                if (i72 == 9 || i72 == 17) {
                    int i82 = i62 / 3;
                    objArr[i82 + i82 + 1] = fieldZzG4.getType();
                } else {
                    if (i72 == 27 || i72 == 49) {
                        int i83 = i62 / 3;
                        i21 = i81 + 1;
                        objArr[i83 + i83 + 1] = objArrZze[i81];
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        if (!z) {
                            int i84 = i62 / 3;
                            i21 = i81 + 1;
                            objArr[i84 + i84 + 1] = objArrZze[i81];
                        }
                    } else if (i72 == 50) {
                        int i85 = i60 + 1;
                        iArr[i60] = i62;
                        int i86 = i62 / 3;
                        int i87 = i86 + i86;
                        int i88 = i81 + 1;
                        objArr[i87] = objArrZze[i81];
                        if ((iCharAt11 & 2048) != 0) {
                            i81 = i88 + 1;
                            objArr[i87 + 1] = objArrZze[i88];
                            i60 = i85;
                        } else {
                            i60 = i85;
                            i18 = i88;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                        if ((iCharAt11 & 4096) == 4096 || i72 > 17) {
                            i19 = i16;
                            i20 = 0;
                            iObjectFieldOffset2 = 1048575;
                        } else {
                            int i89 = i16 + 1;
                            int iCharAt13 = strZzd.charAt(i16);
                            if (iCharAt13 >= 55296) {
                                int i90 = iCharAt13 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i19 = i89 + 1;
                                    cCharAt9 = strZzd.charAt(i89);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i90 |= (cCharAt9 & 8191) << i91;
                                    i91 += 13;
                                    i89 = i19;
                                }
                                iCharAt13 = i90 | (cCharAt9 << i91);
                            } else {
                                i19 = i89;
                            }
                            int i92 = i3 + i3 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i92];
                            if (obj3 instanceof Field) {
                                fieldZzG = (Field) obj3;
                            } else {
                                fieldZzG = zzG(cls, (String) obj3);
                                objArrZze[i92] = fieldZzG;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzG);
                            i20 = iCharAt13 % 32;
                        }
                        if (i72 >= 18 && i72 <= 49) {
                            iArr[i61] = iObjectFieldOffset;
                            i61++;
                        }
                        i2 = i18;
                    }
                    i18 = i21;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                    if ((iCharAt11 & 4096) == 4096) {
                        i19 = i16;
                        i20 = 0;
                        iObjectFieldOffset2 = 1048575;
                    } else {
                        i19 = i16;
                        i20 = 0;
                        iObjectFieldOffset2 = 1048575;
                    }
                    if (i72 >= 18) {
                        iArr[i61] = iObjectFieldOffset;
                        i61++;
                    }
                    i2 = i18;
                }
                i18 = i81;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzG4);
                if ((iCharAt11 & 4096) == 4096) {
                    i19 = i16;
                    i20 = 0;
                    iObjectFieldOffset2 = 1048575;
                } else {
                    i19 = i16;
                    i20 = 0;
                    iObjectFieldOffset2 = 1048575;
                }
                if (i72 >= 18) {
                    iArr[i61] = iObjectFieldOffset;
                    i61++;
                }
                i2 = i18;
            }
            int i93 = i62 + 1;
            iArr2[i62] = iCharAt10;
            int i94 = i93 + 1;
            iArr2[i93] = ((iCharAt11 & 256) != 0 ? DriveFile.MODE_READ_ONLY : 0) | ((iCharAt11 & 512) != 0 ? DriveFile.MODE_WRITE_ONLY : 0) | (i72 << 20) | iObjectFieldOffset;
            i62 = i94 + 1;
            iArr2[i94] = (i20 << 20) | iObjectFieldOffset2;
            i3 = i3;
            iCharAt = iCharAt;
            iCharAt3 = i73;
            i31 = i19;
            length = i15;
            objArr = objArr;
            strZzd = strZzd;
            iArr2 = iArr2;
            i4 = i17;
            c = 55296;
        }
        return new zzlm(iArr2, objArr, iCharAt, i4, zzltVar.zza(), z, false, iArr, iCharAt3, i59, zzloVar, zzkxVar, zzmlVar, zzjpVar, zzleVar, null);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzmv.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzmv.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzp(Object obj) {
        int i;
        int iZzA;
        int iZzA2;
        int iZzA3;
        int iZzB;
        int iZzA4;
        int iZzv;
        int iZzA5;
        int iZzA6;
        int iZzd;
        int iZzA7;
        int i2;
        int iZzu;
        int iZzi;
        int iZzz;
        int iZzA8;
        int iZzA9;
        int iZzA10;
        int iZzA11;
        int iZzA12;
        int iZzB2;
        int iZzA13;
        int iZzd2;
        int iZzA14;
        int i3;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 0;
        int iZzA15 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i5 < this.zzc.length) {
            int iZzB3 = zzB(i5);
            int[] iArr = this.zzc;
            int i8 = iArr[i5];
            int iZzA16 = zzA(iZzB3);
            if (iZzA16 <= 17) {
                int i9 = iArr[i5 + 2];
                int i10 = i9 & i4;
                i = 1 << (i9 >>> 20);
                if (i10 != i7) {
                    i6 = unsafe.getInt(obj, i10);
                    i7 = i10;
                }
            } else {
                i = 0;
            }
            long j = iZzB3 & i4;
            switch (iZzA16) {
                case 0:
                    if ((i6 & i) != 0) {
                        iZzA = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA + 8;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 1:
                    if ((i6 & i) != 0) {
                        iZzA2 = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA2 + 4;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 2:
                    if ((i6 & i) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzA3 = zzjj.zzA(i8 << 3);
                        iZzB = zzjj.zzB(j2);
                        iZzA15 += iZzA3 + iZzB;
                    }
                    break;
                case 3:
                    if ((i6 & i) != 0) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzA3 = zzjj.zzA(i8 << 3);
                        iZzB = zzjj.zzB(j3);
                        iZzA15 += iZzA3 + iZzB;
                    }
                    break;
                case 4:
                    if ((i6 & i) != 0) {
                        int i11 = unsafe.getInt(obj, j);
                        iZzA4 = zzjj.zzA(i8 << 3);
                        iZzv = zzjj.zzv(i11);
                        i2 = iZzA4 + iZzv;
                        iZzA15 += i2;
                    }
                    break;
                case 5:
                    if ((i6 & i) != 0) {
                        iZzA = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA + 8;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 6:
                    if ((i6 & i) != 0) {
                        iZzA2 = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA2 + 4;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 7:
                    if ((i6 & i) != 0) {
                        iZzA5 = zzjj.zzA(i8 << 3) + 1;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 8:
                    if ((i6 & i) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzjb)) {
                            iZzA4 = zzjj.zzA(i8 << 3);
                            iZzv = zzjj.zzy((String) object);
                            i2 = iZzA4 + iZzv;
                            iZzA15 += i2;
                        } else {
                            iZzA6 = zzjj.zzA(i8 << 3);
                            iZzd = ((zzjb) object).zzd();
                            iZzA7 = zzjj.zzA(iZzd);
                            i2 = iZzA6 + iZzA7 + iZzd;
                            iZzA15 += i2;
                        }
                    }
                    break;
                case 9:
                    if ((i6 & i) != 0) {
                        iZzA5 = zzlw.zzo(i8, unsafe.getObject(obj, j), zzE(i5));
                        iZzA15 += iZzA5;
                    }
                    break;
                case 10:
                    if ((i6 & i) != 0) {
                        zzjb zzjbVar = (zzjb) unsafe.getObject(obj, j);
                        iZzA6 = zzjj.zzA(i8 << 3);
                        iZzd = zzjbVar.zzd();
                        iZzA7 = zzjj.zzA(iZzd);
                        i2 = iZzA6 + iZzA7 + iZzd;
                        iZzA15 += i2;
                    }
                    break;
                case 11:
                    if ((i6 & i) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzA4 = zzjj.zzA(i8 << 3);
                        iZzv = zzjj.zzA(i12);
                        i2 = iZzA4 + iZzv;
                        iZzA15 += i2;
                    }
                    break;
                case 12:
                    if ((i6 & i) != 0) {
                        int i13 = unsafe.getInt(obj, j);
                        iZzA4 = zzjj.zzA(i8 << 3);
                        iZzv = zzjj.zzv(i13);
                        i2 = iZzA4 + iZzv;
                        iZzA15 += i2;
                    }
                    break;
                case 13:
                    if ((i6 & i) != 0) {
                        iZzA2 = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA2 + 4;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 14:
                    if ((i6 & i) != 0) {
                        iZzA = zzjj.zzA(i8 << 3);
                        iZzA5 = iZzA + 8;
                        iZzA15 += iZzA5;
                    }
                    break;
                case 15:
                    if ((i6 & i) != 0) {
                        int i14 = unsafe.getInt(obj, j);
                        iZzA4 = zzjj.zzA(i8 << 3);
                        iZzv = zzjj.zzA((i14 >> 31) ^ (i14 + i14));
                        i2 = iZzA4 + iZzv;
                        iZzA15 += i2;
                    }
                    break;
                case 16:
                    if ((i & i6) != 0) {
                        long j4 = unsafe.getLong(obj, j);
                        iZzA15 += zzjj.zzA(i8 << 3) + zzjj.zzB((j4 >> 63) ^ (j4 + j4));
                    }
                    break;
                case 17:
                    if ((i6 & i) != 0) {
                        iZzA5 = zzjj.zzu(i8, (zzlj) unsafe.getObject(obj, j), zzE(i5));
                        iZzA15 += iZzA5;
                    }
                    break;
                case 18:
                    iZzA5 = zzlw.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 19:
                    iZzA5 = zzlw.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 20:
                    iZzA5 = zzlw.zzm(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 21:
                    iZzA5 = zzlw.zzx(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 22:
                    iZzA5 = zzlw.zzk(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 23:
                    iZzA5 = zzlw.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 24:
                    iZzA5 = zzlw.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 25:
                    iZzA5 = zzlw.zza(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzA5;
                    break;
                case 26:
                    iZzu = zzlw.zzu(i8, (List) unsafe.getObject(obj, j));
                    iZzA15 += iZzu;
                    break;
                case 27:
                    iZzu = zzlw.zzp(i8, (List) unsafe.getObject(obj, j), zzE(i5));
                    iZzA15 += iZzu;
                    break;
                case 28:
                    iZzu = zzlw.zzc(i8, (List) unsafe.getObject(obj, j));
                    iZzA15 += iZzu;
                    break;
                case 29:
                    iZzu = zzlw.zzv(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 30:
                    iZzu = zzlw.zzd(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 31:
                    iZzu = zzlw.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 32:
                    iZzu = zzlw.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 33:
                    iZzu = zzlw.zzq(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 34:
                    iZzu = zzlw.zzs(i8, (List) unsafe.getObject(obj, j), false);
                    iZzA15 += iZzu;
                    break;
                case 35:
                    iZzi = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 36:
                    iZzi = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 37:
                    iZzi = zzlw.zzn((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 38:
                    iZzi = zzlw.zzy((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 39:
                    iZzi = zzlw.zzl((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 40:
                    iZzi = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 41:
                    iZzi = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 42:
                    iZzi = zzlw.zzb((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 43:
                    iZzi = zzlw.zzw((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 44:
                    iZzi = zzlw.zze((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 45:
                    iZzi = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 46:
                    iZzi = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 47:
                    iZzi = zzlw.zzr((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 48:
                    iZzi = zzlw.zzt((List) unsafe.getObject(obj, j));
                    if (iZzi > 0) {
                        iZzz = zzjj.zzz(i8);
                        iZzA8 = zzjj.zzA(iZzi);
                        iZzA9 = iZzz + iZzA8;
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 49:
                    iZzu = zzlw.zzj(i8, (List) unsafe.getObject(obj, j), zzE(i5));
                    iZzA15 += iZzu;
                    break;
                case 50:
                    zzle.zza(i8, unsafe.getObject(obj, j), zzF(i5));
                    break;
                case 51:
                    if (zzR(obj, i8, i5)) {
                        iZzA10 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA10 + 8;
                        iZzA15 += iZzu;
                    }
                    break;
                case 52:
                    if (zzR(obj, i8, i5)) {
                        iZzA11 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA11 + 4;
                        iZzA15 += iZzu;
                    }
                    break;
                case 53:
                    if (zzR(obj, i8, i5)) {
                        long jZzC = zzC(obj, j);
                        iZzA12 = zzjj.zzA(i8 << 3);
                        iZzB2 = zzjj.zzB(jZzC);
                        iZzA15 += iZzA12 + iZzB2;
                    }
                    break;
                case 54:
                    if (zzR(obj, i8, i5)) {
                        long jZzC2 = zzC(obj, j);
                        iZzA12 = zzjj.zzA(i8 << 3);
                        iZzB2 = zzjj.zzB(jZzC2);
                        iZzA15 += iZzA12 + iZzB2;
                    }
                    break;
                case 55:
                    if (zzR(obj, i8, i5)) {
                        int iZzr = zzr(obj, j);
                        iZzA9 = zzjj.zzA(i8 << 3);
                        iZzi = zzjj.zzv(iZzr);
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 56:
                    if (zzR(obj, i8, i5)) {
                        iZzA10 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA10 + 8;
                        iZzA15 += iZzu;
                    }
                    break;
                case 57:
                    if (zzR(obj, i8, i5)) {
                        iZzA11 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA11 + 4;
                        iZzA15 += iZzu;
                    }
                    break;
                case 58:
                    if (zzR(obj, i8, i5)) {
                        iZzu = zzjj.zzA(i8 << 3) + 1;
                        iZzA15 += iZzu;
                    }
                    break;
                case 59:
                    if (zzR(obj, i8, i5)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzjb) {
                            iZzA13 = zzjj.zzA(i8 << 3);
                            iZzd2 = ((zzjb) object2).zzd();
                            iZzA14 = zzjj.zzA(iZzd2);
                            i3 = iZzA13 + iZzA14 + iZzd2;
                            iZzA15 += i3;
                        } else {
                            iZzA9 = zzjj.zzA(i8 << 3);
                            iZzi = zzjj.zzy((String) object2);
                            i3 = iZzA9 + iZzi;
                            iZzA15 += i3;
                        }
                    }
                    break;
                case 60:
                    if (zzR(obj, i8, i5)) {
                        iZzu = zzlw.zzo(i8, unsafe.getObject(obj, j), zzE(i5));
                        iZzA15 += iZzu;
                    }
                    break;
                case 61:
                    if (zzR(obj, i8, i5)) {
                        zzjb zzjbVar2 = (zzjb) unsafe.getObject(obj, j);
                        iZzA13 = zzjj.zzA(i8 << 3);
                        iZzd2 = zzjbVar2.zzd();
                        iZzA14 = zzjj.zzA(iZzd2);
                        i3 = iZzA13 + iZzA14 + iZzd2;
                        iZzA15 += i3;
                    }
                    break;
                case 62:
                    if (zzR(obj, i8, i5)) {
                        int iZzr2 = zzr(obj, j);
                        iZzA9 = zzjj.zzA(i8 << 3);
                        iZzi = zzjj.zzA(iZzr2);
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 63:
                    if (zzR(obj, i8, i5)) {
                        int iZzr3 = zzr(obj, j);
                        iZzA9 = zzjj.zzA(i8 << 3);
                        iZzi = zzjj.zzv(iZzr3);
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 64:
                    if (zzR(obj, i8, i5)) {
                        iZzA11 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA11 + 4;
                        iZzA15 += iZzu;
                    }
                    break;
                case 65:
                    if (zzR(obj, i8, i5)) {
                        iZzA10 = zzjj.zzA(i8 << 3);
                        iZzu = iZzA10 + 8;
                        iZzA15 += iZzu;
                    }
                    break;
                case 66:
                    if (zzR(obj, i8, i5)) {
                        int iZzr4 = zzr(obj, j);
                        iZzA9 = zzjj.zzA(i8 << 3);
                        iZzi = zzjj.zzA((iZzr4 >> 31) ^ (iZzr4 + iZzr4));
                        i3 = iZzA9 + iZzi;
                        iZzA15 += i3;
                    }
                    break;
                case 67:
                    if (zzR(obj, i8, i5)) {
                        long jZzC3 = zzC(obj, j);
                        iZzA15 += zzjj.zzA(i8 << 3) + zzjj.zzB((jZzC3 >> 63) ^ (jZzC3 + jZzC3));
                    }
                    break;
                case 68:
                    if (zzR(obj, i8, i5)) {
                        iZzu = zzjj.zzu(i8, (zzlj) unsafe.getObject(obj, j), zzE(i5));
                        iZzA15 += iZzu;
                    }
                    break;
                default:
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        zzml zzmlVar = this.zzn;
        int iZza = iZzA15 + zzmlVar.zza(zzmlVar.zzc(obj));
        if (!this.zzh) {
            return iZza;
        }
        this.zzo.zza(obj);
        throw null;
    }

    private final int zzq(Object obj) {
        int iZzA;
        int iZzA2;
        int iZzA3;
        int iZzB;
        int iZzA4;
        int iZzv;
        int iZzA5;
        int iZzA6;
        int iZzd;
        int iZzA7;
        int iZzo;
        int iZzz;
        int iZzA8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzB2 = zzB(i3);
            int iZzA9 = zzA(iZzB2);
            int i4 = this.zzc[i3];
            long j = iZzB2 & 1048575;
            if (iZzA9 >= zzju.DOUBLE_LIST_PACKED.zza() && iZzA9 <= zzju.SINT64_LIST_PACKED.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (iZzA9) {
                case 0:
                    if (zzO(obj, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 1:
                    if (zzO(obj, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 2:
                    if (zzO(obj, i3)) {
                        long jZzd = zzmv.zzd(obj, j);
                        iZzA3 = zzjj.zzA(i4 << 3);
                        iZzB = zzjj.zzB(jZzd);
                        i2 += iZzA3 + iZzB;
                    }
                    break;
                case 3:
                    if (zzO(obj, i3)) {
                        long jZzd2 = zzmv.zzd(obj, j);
                        iZzA3 = zzjj.zzA(i4 << 3);
                        iZzB = zzjj.zzB(jZzd2);
                        i2 += iZzA3 + iZzB;
                    }
                    break;
                case 4:
                    if (zzO(obj, i3)) {
                        int iZzc = zzmv.zzc(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzv(iZzc);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 5:
                    if (zzO(obj, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 6:
                    if (zzO(obj, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 7:
                    if (zzO(obj, i3)) {
                        iZzA5 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 8:
                    if (zzO(obj, i3)) {
                        Object objZzf = zzmv.zzf(obj, j);
                        if (objZzf instanceof zzjb) {
                            iZzA6 = zzjj.zzA(i4 << 3);
                            iZzd = ((zzjb) objZzf).zzd();
                            iZzA7 = zzjj.zzA(iZzd);
                            i = iZzA6 + iZzA7 + iZzd;
                            i2 += i;
                        } else {
                            iZzA4 = zzjj.zzA(i4 << 3);
                            iZzv = zzjj.zzy((String) objZzf);
                            i = iZzA4 + iZzv;
                            i2 += i;
                        }
                    }
                    break;
                case 9:
                    if (zzO(obj, i3)) {
                        iZzo = zzlw.zzo(i4, zzmv.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 10:
                    if (zzO(obj, i3)) {
                        zzjb zzjbVar = (zzjb) zzmv.zzf(obj, j);
                        iZzA6 = zzjj.zzA(i4 << 3);
                        iZzd = zzjbVar.zzd();
                        iZzA7 = zzjj.zzA(iZzd);
                        i = iZzA6 + iZzA7 + iZzd;
                        i2 += i;
                    }
                    break;
                case 11:
                    if (zzO(obj, i3)) {
                        int iZzc2 = zzmv.zzc(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzA(iZzc2);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 12:
                    if (zzO(obj, i3)) {
                        int iZzc3 = zzmv.zzc(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzv(iZzc3);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 13:
                    if (zzO(obj, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 14:
                    if (zzO(obj, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 15:
                    if (zzO(obj, i3)) {
                        int iZzc4 = zzmv.zzc(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzA((iZzc4 >> 31) ^ (iZzc4 + iZzc4));
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 16:
                    if (zzO(obj, i3)) {
                        long jZzd3 = zzmv.zzd(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzB((jZzd3 >> 63) ^ (jZzd3 + jZzd3));
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 17:
                    if (zzO(obj, i3)) {
                        iZzo = zzjj.zzu(i4, (zzlj) zzmv.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 18:
                    iZzo = zzlw.zzh(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 19:
                    iZzo = zzlw.zzf(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 20:
                    iZzo = zzlw.zzm(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 21:
                    iZzo = zzlw.zzx(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 22:
                    iZzo = zzlw.zzk(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 23:
                    iZzo = zzlw.zzh(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 24:
                    iZzo = zzlw.zzf(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 25:
                    iZzo = zzlw.zza(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 26:
                    iZzo = zzlw.zzu(i4, (List) zzmv.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 27:
                    iZzo = zzlw.zzp(i4, (List) zzmv.zzf(obj, j), zzE(i3));
                    i2 += iZzo;
                    break;
                case 28:
                    iZzo = zzlw.zzc(i4, (List) zzmv.zzf(obj, j));
                    i2 += iZzo;
                    break;
                case 29:
                    iZzo = zzlw.zzv(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 30:
                    iZzo = zzlw.zzd(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 31:
                    iZzo = zzlw.zzf(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 32:
                    iZzo = zzlw.zzh(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 33:
                    iZzo = zzlw.zzq(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 34:
                    iZzo = zzlw.zzs(i4, (List) zzmv.zzf(obj, j), false);
                    i2 += iZzo;
                    break;
                case 35:
                    iZzv = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 36:
                    iZzv = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 37:
                    iZzv = zzlw.zzn((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 38:
                    iZzv = zzlw.zzy((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 39:
                    iZzv = zzlw.zzl((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 40:
                    iZzv = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 41:
                    iZzv = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 42:
                    iZzv = zzlw.zzb((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 43:
                    iZzv = zzlw.zzw((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 44:
                    iZzv = zzlw.zze((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 45:
                    iZzv = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 46:
                    iZzv = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 47:
                    iZzv = zzlw.zzr((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 48:
                    iZzv = zzlw.zzt((List) unsafe.getObject(obj, j));
                    if (iZzv > 0) {
                        iZzz = zzjj.zzz(i4);
                        iZzA8 = zzjj.zzA(iZzv);
                        iZzA4 = iZzz + iZzA8;
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 49:
                    iZzo = zzlw.zzj(i4, (List) zzmv.zzf(obj, j), zzE(i3));
                    i2 += iZzo;
                    break;
                case 50:
                    zzle.zza(i4, zzmv.zzf(obj, j), zzF(i3));
                    break;
                case 51:
                    if (zzR(obj, i4, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 52:
                    if (zzR(obj, i4, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 53:
                    if (zzR(obj, i4, i3)) {
                        long jZzC = zzC(obj, j);
                        iZzA3 = zzjj.zzA(i4 << 3);
                        iZzB = zzjj.zzB(jZzC);
                        i2 += iZzA3 + iZzB;
                    }
                    break;
                case 54:
                    if (zzR(obj, i4, i3)) {
                        long jZzC2 = zzC(obj, j);
                        iZzA3 = zzjj.zzA(i4 << 3);
                        iZzB = zzjj.zzB(jZzC2);
                        i2 += iZzA3 + iZzB;
                    }
                    break;
                case 55:
                    if (zzR(obj, i4, i3)) {
                        int iZzr = zzr(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzv(iZzr);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 56:
                    if (zzR(obj, i4, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 57:
                    if (zzR(obj, i4, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 58:
                    if (zzR(obj, i4, i3)) {
                        iZzA5 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA5 + 1;
                        i2 += iZzo;
                    }
                    break;
                case 59:
                    if (zzR(obj, i4, i3)) {
                        Object objZzf2 = zzmv.zzf(obj, j);
                        if (objZzf2 instanceof zzjb) {
                            iZzA6 = zzjj.zzA(i4 << 3);
                            iZzd = ((zzjb) objZzf2).zzd();
                            iZzA7 = zzjj.zzA(iZzd);
                            i = iZzA6 + iZzA7 + iZzd;
                            i2 += i;
                        } else {
                            iZzA4 = zzjj.zzA(i4 << 3);
                            iZzv = zzjj.zzy((String) objZzf2);
                            i = iZzA4 + iZzv;
                            i2 += i;
                        }
                    }
                    break;
                case 60:
                    if (zzR(obj, i4, i3)) {
                        iZzo = zzlw.zzo(i4, zzmv.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
                case 61:
                    if (zzR(obj, i4, i3)) {
                        zzjb zzjbVar2 = (zzjb) zzmv.zzf(obj, j);
                        iZzA6 = zzjj.zzA(i4 << 3);
                        iZzd = zzjbVar2.zzd();
                        iZzA7 = zzjj.zzA(iZzd);
                        i = iZzA6 + iZzA7 + iZzd;
                        i2 += i;
                    }
                    break;
                case 62:
                    if (zzR(obj, i4, i3)) {
                        int iZzr2 = zzr(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzA(iZzr2);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 63:
                    if (zzR(obj, i4, i3)) {
                        int iZzr3 = zzr(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzv(iZzr3);
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 64:
                    if (zzR(obj, i4, i3)) {
                        iZzA2 = zzjj.zzA(i4 << 3);
                        iZzo = iZzA2 + 4;
                        i2 += iZzo;
                    }
                    break;
                case 65:
                    if (zzR(obj, i4, i3)) {
                        iZzA = zzjj.zzA(i4 << 3);
                        iZzo = iZzA + 8;
                        i2 += iZzo;
                    }
                    break;
                case 66:
                    if (zzR(obj, i4, i3)) {
                        int iZzr4 = zzr(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzA((iZzr4 >> 31) ^ (iZzr4 + iZzr4));
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 67:
                    if (zzR(obj, i4, i3)) {
                        long jZzC3 = zzC(obj, j);
                        iZzA4 = zzjj.zzA(i4 << 3);
                        iZzv = zzjj.zzB((jZzC3 >> 63) ^ (jZzC3 + jZzC3));
                        i = iZzA4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 68:
                    if (zzR(obj, i4, i3)) {
                        iZzo = zzjj.zzu(i4, (zzlj) zzmv.zzf(obj, j), zzE(i3));
                        i2 += iZzo;
                    }
                    break;
            }
        }
        zzml zzmlVar = this.zzn;
        return i2 + zzmlVar.zza(zzmlVar.zzc(obj));
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzmv.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzio zzioVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzld) object).zze()) {
            zzld zzldVarZzb = zzld.zza().zzb();
            zzle.zzb(zzldVarZzb, object);
            unsafe.putObject(obj, j, zzldVarZzb);
        }
        throw null;
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzio zzioVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzip.zzn(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzip.zzb(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iZzm = zzip.zzm(bArr, i, zzioVar);
                unsafe.putObject(obj, j, Long.valueOf(zzioVar.zzb));
                unsafe.putInt(obj, j2, i4);
                return iZzm;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iZzj = zzip.zzj(bArr, i, zzioVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzioVar.zza));
                unsafe.putInt(obj, j2, i4);
                return iZzj;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(zzip.zzn(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(zzip.zzb(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iZzm2 = zzip.zzm(bArr, i, zzioVar);
                unsafe.putObject(obj, j, Boolean.valueOf(zzioVar.zzb != 0));
                unsafe.putInt(obj, j2, i4);
                return iZzm2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZzj2 = zzip.zzj(bArr, i, zzioVar);
                int i9 = zzioVar.zza;
                if (i9 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & DriveFile.MODE_WRITE_ONLY) != 0 && !zzna.zzf(bArr, iZzj2, iZzj2 + i9)) {
                        throw zzkm.zzc();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzj2, i9, zzkk.zzb));
                    iZzj2 += i9;
                }
                unsafe.putInt(obj, j2, i4);
                return iZzj2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZzd = zzip.zzd(zzE(i8), bArr, i, i2, zzioVar);
                Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object == null) {
                    unsafe.putObject(obj, j, zzioVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzkk.zzg(object, zzioVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzd;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzip.zza(bArr, i, zzioVar);
                unsafe.putObject(obj, j, zzioVar.zzc);
                unsafe.putInt(obj, j2, i4);
                return iZza;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZzj3 = zzip.zzj(bArr, i, zzioVar);
                int i10 = zzioVar.zza;
                zzkg zzkgVarZzD = zzD(i8);
                if (zzkgVarZzD == null || zzkgVarZzD.zza(i10)) {
                    unsafe.putObject(obj, j, Integer.valueOf(i10));
                    unsafe.putInt(obj, j2, i4);
                } else {
                    zzd(obj).zzh(i3, Long.valueOf(i10));
                }
                return iZzj3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iZzj4 = zzip.zzj(bArr, i, zzioVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzjf.zzb(zzioVar.zza)));
                unsafe.putInt(obj, j2, i4);
                return iZzj4;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iZzm3 = zzip.zzm(bArr, i, zzioVar);
                unsafe.putObject(obj, j, Long.valueOf(zzjf.zzc(zzioVar.zzb)));
                unsafe.putInt(obj, j2, i4);
                return iZzm3;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                int iZzc = zzip.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzioVar);
                Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j, zzioVar.zzc);
                } else {
                    unsafe.putObject(obj, j, zzkk.zzg(object2, zzioVar.zzc));
                }
                unsafe.putInt(obj, j2, i4);
                return iZzc;
            default:
                return i;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0081. Please report as an issue. */
    private final int zzu(Object obj, byte[] bArr, int i, int i2, zzio zzioVar) throws IOException {
        int i3;
        int iZzk;
        int i4;
        int i5;
        Unsafe unsafe;
        int i6;
        int i7;
        int i8;
        int iZzm;
        int iZzd;
        int i9;
        int i10;
        int i11;
        zzlm<T> zzlmVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i12 = i2;
        zzioVar = zzioVar;
        Unsafe unsafe2 = zzb;
        int i13 = 1048575;
        int i14 = -1;
        int iZzi = i;
        int i15 = -1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (iZzi < i12) {
            int i19 = iZzi + 1;
            byte b = bArr2[iZzi];
            if (b < 0) {
                iZzk = zzip.zzk(b, bArr2, i19, zzioVar);
                i3 = zzioVar.zza;
            } else {
                i3 = b;
                iZzk = i19;
            }
            int i20 = i3 >>> 3;
            int i21 = i3 & 7;
            int iZzx = i20 > i15 ? zzlmVar.zzx(i20, i16 / 3) : zzlmVar.zzw(i20);
            if (iZzx == i14) {
                i4 = iZzk;
                i5 = i20;
                unsafe = unsafe2;
                i6 = 0;
            } else {
                int[] iArr = zzlmVar.zzc;
                int i22 = iArr[iZzx + 1];
                int iZzA = zzA(i22);
                long j = i22 & i13;
                if (iZzA <= 17) {
                    int i23 = iArr[iZzx + 2];
                    int i24 = 1 << (i23 >>> 20);
                    int i25 = i23 & 1048575;
                    if (i25 != i18) {
                        if (i18 != 1048575) {
                            unsafe2.putInt(obj2, i18, i17);
                        }
                        if (i25 != 1048575) {
                            i17 = unsafe2.getInt(obj2, i25);
                        }
                        i18 = i25;
                    }
                    switch (iZzA) {
                        case 0:
                            i7 = iZzx;
                            i8 = iZzk;
                            i5 = i20;
                            if (i21 == 1) {
                                zzmv.zzo(obj2, j, Double.longBitsToDouble(zzip.zzn(bArr2, i8)));
                                iZzi = i8 + 8;
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 1:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i8 = iZzk;
                            i5 = i20;
                            if (i21 == 5) {
                                zzmv.zzp(obj2, j, Float.intBitsToFloat(zzip.zzb(bArr2, i8)));
                                iZzi = i8 + 4;
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 2:
                        case 3:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i8 = iZzk;
                            i5 = i20;
                            if (i21 == 0) {
                                iZzm = zzip.zzm(bArr2, i8, zzioVar);
                                unsafe2.putLong(obj, j, zzioVar.zzb);
                                i17 |= i24;
                                iZzi = iZzm;
                                i16 = i7;
                                i15 = i5;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 4:
                        case 11:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i8 = iZzk;
                            i5 = i20;
                            if (i21 == 0) {
                                iZzi = zzip.zzj(bArr2, i8, zzioVar);
                                unsafe2.putInt(obj2, j, zzioVar.zza);
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 5:
                        case 14:
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 1) {
                                i8 = iZzk;
                                unsafe2.putLong(obj, j, zzip.zzn(bArr2, iZzk));
                                iZzi = i8 + 8;
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 6:
                        case 13:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 5) {
                                unsafe2.putInt(obj2, j, zzip.zzb(bArr2, iZzk));
                                iZzi = iZzk + 4;
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 7:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 0) {
                                iZzi = zzip.zzm(bArr2, iZzk, zzioVar);
                                zzmv.zzm(obj2, j, zzioVar.zzb != 0);
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 8:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 2) {
                                iZzi = (536870912 & i22) == 0 ? zzip.zzg(bArr2, iZzk, zzioVar) : zzip.zzh(bArr2, iZzk, zzioVar);
                                unsafe2.putObject(obj2, j, zzioVar.zzc);
                                i17 |= i24;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 9:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 2) {
                                iZzd = zzip.zzd(zzlmVar.zzE(i7), bArr2, iZzk, i12, zzioVar);
                                Object object = unsafe2.getObject(obj2, j);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j, zzioVar.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j, zzkk.zzg(object, zzioVar.zzc));
                                }
                                i17 |= i24;
                                iZzi = iZzd;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 10:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 2) {
                                iZzd = zzip.zza(bArr2, iZzk, zzioVar);
                                unsafe2.putObject(obj2, j, zzioVar.zzc);
                                i17 |= i24;
                                iZzi = iZzd;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 12:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 0) {
                                iZzd = zzip.zzj(bArr2, iZzk, zzioVar);
                                unsafe2.putInt(obj2, j, zzioVar.zza);
                                i17 |= i24;
                                iZzi = iZzd;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 15:
                            zzioVar = zzioVar;
                            i7 = iZzx;
                            i5 = i20;
                            if (i21 == 0) {
                                iZzd = zzip.zzj(bArr2, iZzk, zzioVar);
                                unsafe2.putInt(obj2, j, zzjf.zzb(zzioVar.zza));
                                i17 |= i24;
                                iZzi = iZzd;
                                i16 = i7;
                                i15 = i5;
                            }
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 16:
                            if (i21 != 0) {
                                i5 = i20;
                                i7 = iZzx;
                                i8 = iZzk;
                                i4 = i8;
                                unsafe = unsafe2;
                                i6 = i7;
                            } else {
                                zzioVar = zzioVar;
                                iZzm = zzip.zzm(bArr2, iZzk, zzioVar);
                                i7 = iZzx;
                                i5 = i20;
                                unsafe2.putLong(obj, j, zzjf.zzc(zzioVar.zzb));
                                i17 |= i24;
                                iZzi = iZzm;
                                i16 = i7;
                                i15 = i5;
                            }
                            break;
                        default:
                            i5 = i20;
                            i7 = iZzx;
                            i8 = iZzk;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                    }
                    i14 = -1;
                    i13 = 1048575;
                } else {
                    zzioVar = zzioVar;
                    i7 = iZzx;
                    int i26 = iZzk;
                    i5 = i20;
                    if (iZzA == 27) {
                        if (i21 == 2) {
                            zzkj zzkjVarZzd = (zzkj) unsafe2.getObject(obj2, j);
                            if (!zzkjVarZzd.zzc()) {
                                int size = zzkjVarZzd.size();
                                zzkjVarZzd = zzkjVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j, zzkjVarZzd);
                            }
                            iZzi = zzip.zze(zzlmVar.zzE(i7), i3, bArr, i26, i2, zzkjVarZzd, zzioVar);
                            i17 = i17;
                            i16 = i7;
                            i15 = i5;
                            i14 = -1;
                            i13 = 1048575;
                        } else {
                            i9 = i26;
                            i10 = i17;
                            i11 = i18;
                            unsafe = unsafe2;
                            i6 = i7;
                        }
                    } else if (iZzA <= 49) {
                        i10 = i17;
                        i11 = i18;
                        unsafe = unsafe2;
                        i6 = i7;
                        iZzi = zzv(obj, bArr, i26, i2, i3, i5, i21, i7, i22, iZzA, j, zzioVar);
                        if (iZzi != i26) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i12 = i2;
                            zzioVar = zzioVar;
                            i18 = i11;
                            i15 = i5;
                            i17 = i10;
                            i16 = i6;
                            unsafe2 = unsafe;
                            i14 = -1;
                            i13 = 1048575;
                            zzlmVar = this;
                        } else {
                            i4 = iZzi;
                            i18 = i11;
                            i17 = i10;
                        }
                    } else {
                        i9 = i26;
                        i10 = i17;
                        i11 = i18;
                        unsafe = unsafe2;
                        i6 = i7;
                        if (iZzA != 50) {
                            iZzi = zzt(obj, bArr, i9, i2, i3, i5, i21, i22, iZzA, j, i6, zzioVar);
                            if (iZzi != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzioVar = zzioVar;
                                i18 = i11;
                                i15 = i5;
                                i17 = i10;
                                i16 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzlmVar = this;
                            } else {
                                i4 = iZzi;
                                i18 = i11;
                                i17 = i10;
                            }
                        } else if (i21 == 2) {
                            iZzi = zzs(obj, bArr, i9, i2, i6, j, zzioVar);
                            if (iZzi != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzioVar = zzioVar;
                                i18 = i11;
                                i15 = i5;
                                i17 = i10;
                                i16 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzlmVar = this;
                            } else {
                                i4 = iZzi;
                                i18 = i11;
                                i17 = i10;
                            }
                        }
                    }
                    i4 = i9;
                    i18 = i11;
                    i17 = i10;
                }
            }
            iZzi = zzip.zzi(i3, bArr, i4, i2, zzd(obj), zzioVar);
            zzlmVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i12 = i2;
            zzioVar = zzioVar;
            i15 = i5;
            i16 = i6;
            unsafe2 = unsafe;
            i14 = -1;
            i13 = 1048575;
        }
        int i27 = i17;
        int i28 = i18;
        Unsafe unsafe3 = unsafe2;
        if (i28 != 1048575) {
            unsafe3.putInt(obj, i28, i27);
        }
        if (iZzi == i2) {
            return iZzi;
        }
        throw zzkm.zze();
    }

    private final int zzv(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzio zzioVar) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        int iZzj;
        int iZzj2 = i;
        Unsafe unsafe = zzb;
        zzkj zzkjVarZzd = (zzkj) unsafe.getObject(obj, j2);
        if (!zzkjVarZzd.zzc()) {
            int size = zzkjVarZzd.size();
            zzkjVarZzd = zzkjVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzkjVarZzd);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzjl zzjlVar = (zzjl) zzkjVarZzd;
                    int iZzj3 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i12 = zzioVar.zza + iZzj3;
                    while (iZzj3 < i12) {
                        zzjlVar.zze(Double.longBitsToDouble(zzip.zzn(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i12) {
                        return iZzj3;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 1) {
                    zzjl zzjlVar2 = (zzjl) zzkjVarZzd;
                    zzjlVar2.zze(Double.longBitsToDouble(zzip.zzn(bArr, i)));
                    while (true) {
                        i8 = iZzj2 + 8;
                        if (i8 < i2) {
                            iZzj2 = zzip.zzj(bArr, i8, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzjlVar2.zze(Double.longBitsToDouble(zzip.zzn(bArr, iZzj2)));
                            }
                        }
                    }
                    return i8;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzjv zzjvVar = (zzjv) zzkjVarZzd;
                    int iZzj4 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i13 = zzioVar.zza + iZzj4;
                    while (iZzj4 < i13) {
                        zzjvVar.zze(Float.intBitsToFloat(zzip.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i13) {
                        return iZzj4;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 5) {
                    zzjv zzjvVar2 = (zzjv) zzkjVarZzd;
                    zzjvVar2.zze(Float.intBitsToFloat(zzip.zzb(bArr, i)));
                    while (true) {
                        i9 = iZzj2 + 4;
                        if (i9 < i2) {
                            iZzj2 = zzip.zzj(bArr, i9, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzjvVar2.zze(Float.intBitsToFloat(zzip.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i9;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzky zzkyVar = (zzky) zzkjVarZzd;
                    int iZzj5 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i14 = zzioVar.zza + iZzj5;
                    while (iZzj5 < i14) {
                        iZzj5 = zzip.zzm(bArr, iZzj5, zzioVar);
                        zzkyVar.zzg(zzioVar.zzb);
                    }
                    if (iZzj5 == i14) {
                        return iZzj5;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzky zzkyVar2 = (zzky) zzkjVarZzd;
                    int iZzm = zzip.zzm(bArr, iZzj2, zzioVar);
                    zzkyVar2.zzg(zzioVar.zzb);
                    while (iZzm < i2) {
                        int iZzj6 = zzip.zzj(bArr, iZzm, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzip.zzm(bArr, iZzj6, zzioVar);
                        zzkyVar2.zzg(zzioVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzip.zzf(bArr, iZzj2, zzkjVarZzd, zzioVar);
                }
                if (i5 == 0) {
                    return zzip.zzl(i3, bArr, i, i2, zzkjVarZzd, zzioVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzky zzkyVar3 = (zzky) zzkjVarZzd;
                    int iZzj7 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i15 = zzioVar.zza + iZzj7;
                    while (iZzj7 < i15) {
                        zzkyVar3.zzg(zzip.zzn(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i15) {
                        return iZzj7;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 1) {
                    zzky zzkyVar4 = (zzky) zzkjVarZzd;
                    zzkyVar4.zzg(zzip.zzn(bArr, i));
                    while (true) {
                        i10 = iZzj2 + 8;
                        if (i10 < i2) {
                            iZzj2 = zzip.zzj(bArr, i10, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzkyVar4.zzg(zzip.zzn(bArr, iZzj2));
                            }
                        }
                    }
                    return i10;
                }
                return iZzj2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzkd zzkdVar = (zzkd) zzkjVarZzd;
                    int iZzj8 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i16 = zzioVar.zza + iZzj8;
                    while (iZzj8 < i16) {
                        zzkdVar.zzh(zzip.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i16) {
                        return iZzj8;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 5) {
                    zzkd zzkdVar2 = (zzkd) zzkjVarZzd;
                    zzkdVar2.zzh(zzip.zzb(bArr, i));
                    while (true) {
                        i11 = iZzj2 + 4;
                        if (i11 < i2) {
                            iZzj2 = zzip.zzj(bArr, i11, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzkdVar2.zzh(zzip.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i11;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zziq zziqVar = (zziq) zzkjVarZzd;
                    iZzj = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i17 = zzioVar.zza + iZzj;
                    while (iZzj < i17) {
                        iZzj = zzip.zzm(bArr, iZzj, zzioVar);
                        zziqVar.zze(zzioVar.zzb != 0);
                    }
                    if (iZzj != i17) {
                        throw zzkm.zzf();
                    }
                    return iZzj;
                }
                if (i5 == 0) {
                    zziq zziqVar2 = (zziq) zzkjVarZzd;
                    int iZzm2 = zzip.zzm(bArr, iZzj2, zzioVar);
                    zziqVar2.zze(zzioVar.zzb != 0);
                    while (iZzm2 < i2) {
                        int iZzj9 = zzip.zzj(bArr, iZzm2, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzip.zzm(bArr, iZzj9, zzioVar);
                        zziqVar2.zze(zzioVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iZzj2 = zzip.zzj(bArr, iZzj2, zzioVar);
                        int i18 = zzioVar.zza;
                        if (i18 < 0) {
                            throw zzkm.zzd();
                        }
                        if (i18 == 0) {
                            zzkjVarZzd.add("");
                        } else {
                            zzkjVarZzd.add(new String(bArr, iZzj2, i18, zzkk.zzb));
                            iZzj2 += i18;
                        }
                        while (iZzj2 < i2) {
                            int iZzj10 = zzip.zzj(bArr, iZzj2, zzioVar);
                            if (i3 == zzioVar.zza) {
                                iZzj2 = zzip.zzj(bArr, iZzj10, zzioVar);
                                int i19 = zzioVar.zza;
                                if (i19 < 0) {
                                    throw zzkm.zzd();
                                }
                                if (i19 == 0) {
                                    zzkjVarZzd.add("");
                                } else {
                                    zzkjVarZzd.add(new String(bArr, iZzj2, i19, zzkk.zzb));
                                    iZzj2 += i19;
                                }
                            }
                        }
                    } else {
                        iZzj2 = zzip.zzj(bArr, iZzj2, zzioVar);
                        int i20 = zzioVar.zza;
                        if (i20 < 0) {
                            throw zzkm.zzd();
                        }
                        if (i20 == 0) {
                            zzkjVarZzd.add("");
                        } else {
                            int i21 = iZzj2 + i20;
                            if (!zzna.zzf(bArr, iZzj2, i21)) {
                                throw zzkm.zzc();
                            }
                            zzkjVarZzd.add(new String(bArr, iZzj2, i20, zzkk.zzb));
                            iZzj2 = i21;
                        }
                        while (iZzj2 < i2) {
                            int iZzj11 = zzip.zzj(bArr, iZzj2, zzioVar);
                            if (i3 == zzioVar.zza) {
                                iZzj2 = zzip.zzj(bArr, iZzj11, zzioVar);
                                int i22 = zzioVar.zza;
                                if (i22 < 0) {
                                    throw zzkm.zzd();
                                }
                                if (i22 == 0) {
                                    zzkjVarZzd.add("");
                                } else {
                                    int i23 = iZzj2 + i22;
                                    if (!zzna.zzf(bArr, iZzj2, i23)) {
                                        throw zzkm.zzc();
                                    }
                                    zzkjVarZzd.add(new String(bArr, iZzj2, i22, zzkk.zzb));
                                    iZzj2 = i23;
                                }
                            }
                        }
                    }
                }
                return iZzj2;
            case 27:
                if (i5 == 2) {
                    return zzip.zze(zzE(i6), i3, bArr, i, i2, zzkjVarZzd, zzioVar);
                }
                return iZzj2;
            case 28:
                if (i5 == 2) {
                    int iZzj12 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i24 = zzioVar.zza;
                    if (i24 < 0) {
                        throw zzkm.zzd();
                    }
                    if (i24 > bArr.length - iZzj12) {
                        throw zzkm.zzf();
                    }
                    if (i24 == 0) {
                        zzkjVarZzd.add(zzjb.zzb);
                    } else {
                        zzkjVarZzd.add(zzjb.zzl(bArr, iZzj12, i24));
                        iZzj12 += i24;
                    }
                    while (iZzj12 < i2) {
                        int iZzj13 = zzip.zzj(bArr, iZzj12, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzip.zzj(bArr, iZzj13, zzioVar);
                        int i25 = zzioVar.zza;
                        if (i25 < 0) {
                            throw zzkm.zzd();
                        }
                        if (i25 > bArr.length - iZzj12) {
                            throw zzkm.zzf();
                        }
                        if (i25 == 0) {
                            zzkjVarZzd.add(zzjb.zzb);
                        } else {
                            zzkjVarZzd.add(zzjb.zzl(bArr, iZzj12, i25));
                            iZzj12 += i25;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZzj = zzip.zzl(i3, bArr, i, i2, zzkjVarZzd, zzioVar);
                    }
                    return iZzj2;
                }
                iZzj = zzip.zzf(bArr, iZzj2, zzkjVarZzd, zzioVar);
                zzkc zzkcVar = (zzkc) obj;
                zzmm zzmmVar = zzkcVar.zzc;
                if (zzmmVar == zzmm.zzc()) {
                    zzmmVar = null;
                }
                Object objZzC = zzlw.zzC(i4, zzkjVarZzd, zzD(i6), zzmmVar, this.zzn);
                if (objZzC != null) {
                    zzkcVar.zzc = (zzmm) objZzC;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzkd zzkdVar3 = (zzkd) zzkjVarZzd;
                    int iZzj14 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i26 = zzioVar.zza + iZzj14;
                    while (iZzj14 < i26) {
                        iZzj14 = zzip.zzj(bArr, iZzj14, zzioVar);
                        zzkdVar3.zzh(zzjf.zzb(zzioVar.zza));
                    }
                    if (iZzj14 == i26) {
                        return iZzj14;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzkd zzkdVar4 = (zzkd) zzkjVarZzd;
                    int iZzj15 = zzip.zzj(bArr, iZzj2, zzioVar);
                    zzkdVar4.zzh(zzjf.zzb(zzioVar.zza));
                    while (iZzj15 < i2) {
                        int iZzj16 = zzip.zzj(bArr, iZzj15, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzj15;
                        }
                        iZzj15 = zzip.zzj(bArr, iZzj16, zzioVar);
                        zzkdVar4.zzh(zzjf.zzb(zzioVar.zza));
                    }
                    return iZzj15;
                }
                return iZzj2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzky zzkyVar5 = (zzky) zzkjVarZzd;
                    int iZzj17 = zzip.zzj(bArr, iZzj2, zzioVar);
                    int i27 = zzioVar.zza + iZzj17;
                    while (iZzj17 < i27) {
                        iZzj17 = zzip.zzm(bArr, iZzj17, zzioVar);
                        zzkyVar5.zzg(zzjf.zzc(zzioVar.zzb));
                    }
                    if (iZzj17 == i27) {
                        return iZzj17;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzky zzkyVar6 = (zzky) zzkjVarZzd;
                    int iZzm3 = zzip.zzm(bArr, iZzj2, zzioVar);
                    zzkyVar6.zzg(zzjf.zzc(zzioVar.zzb));
                    while (iZzm3 < i2) {
                        int iZzj18 = zzip.zzj(bArr, iZzm3, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzip.zzm(bArr, iZzj18, zzioVar);
                        zzkyVar6.zzg(zzjf.zzc(zzioVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i5 == 3) {
                    zzlu zzluVarZzE = zzE(i6);
                    int i28 = (i3 & (-8)) | 4;
                    int iZzc = zzip.zzc(zzluVarZzE, bArr, i, i2, i28, zzioVar);
                    zzkjVarZzd.add(zzioVar.zzc);
                    while (iZzc < i2) {
                        int iZzj19 = zzip.zzj(bArr, iZzc, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzip.zzc(zzluVarZzE, bArr, iZzj19, i2, i28, zzioVar);
                        zzkjVarZzd.add(zzioVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private final int zzw(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, 0);
    }

    private final int zzx(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, i2);
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zza(Object obj) {
        return this.zzi ? zzq(obj) : zzp(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zzb(Object obj) {
        int i;
        int iZzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzB = zzB(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzB;
            int iHashCode = 37;
            switch (zzA(iZzB)) {
                case 0:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(Double.doubleToLongBits(zzmv.zza(obj, j)));
                    i2 = i + iZzc;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzc = Float.floatToIntBits(zzmv.zzb(obj, j));
                    i2 = i + iZzc;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzc = zzkk.zza(zzmv.zzw(obj, j));
                    i2 = i + iZzc;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzc = ((String) zzmv.zzf(obj, j)).hashCode();
                    i2 = i + iZzc;
                    break;
                case 9:
                    Object objZzf = zzmv.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzc = zzmv.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzc = zzmv.zzc(obj, j);
                    i2 = i + iZzc;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i2 = i + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzmv.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZzc = zzmv.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzc = zzmv.zzf(obj, j).hashCode();
                    i2 = i + iZzc;
                    break;
                case 51:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i2 = i + iZzc;
                    }
                    break;
                case 52:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = Float.floatToIntBits(zzo(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 53:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 54:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 55:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 56:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 57:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 58:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zza(zzS(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 59:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = ((String) zzmv.zzf(obj, j)).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 60:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzmv.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 61:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzmv.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
                case 62:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 63:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 64:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 65:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 66:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzr(obj, j);
                        i2 = i + iZzc;
                    }
                    break;
                case 67:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzkk.zzc(zzC(obj, j));
                        i2 = i + iZzc;
                    }
                    break;
                case 68:
                    if (zzR(obj, i4, i3)) {
                        i = i2 * 53;
                        iZzc = zzmv.zzf(obj, j).hashCode();
                        i2 = i + iZzc;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzn.zzc(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x036a A[PHI: r0 r19 r24 r28
  0x036a: PHI (r0v38 int) = (r0v32 int), (r0v35 int), (r0v40 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r19v5 int) = (r19v3 int), (r19v3 int), (r19v6 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r24v4 int) = (r24v2 int), (r24v2 int), (r24v5 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r28v7 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x0384 A[PHI: r0 r19 r24 r28
  0x0384: PHI (r0v36 int) = (r0v32 int), (r0v35 int), (r0v40 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x0384: PHI (r19v4 int) = (r19v3 int), (r19v3 int), (r19v6 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x0384: PHI (r24v3 int) = (r24v2 int), (r24v2 int), (r24v5 int) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x0384: PHI (r28v6 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03d9, B:125:0x03b4, B:116:0x0368] A[DONT_GENERATE, DONT_INLINE]] */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzio zzioVar) throws IOException {
        Unsafe unsafe;
        int i4;
        Object obj2;
        zzlm<T> zzlmVar;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        zzio zzioVar2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iZzg;
        zzlm<T> zzlmVar2 = this;
        Object obj3 = obj;
        bArr = bArr;
        i2 = i2;
        i3 = i3;
        zzio zzioVar3 = zzioVar;
        Unsafe unsafe2 = zzb;
        int iZzi = i;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        int i23 = 1048575;
        while (true) {
            if (iZzi < i2) {
                int i24 = iZzi + 1;
                byte b = bArr[iZzi];
                if (b < 0) {
                    int iZzk = zzip.zzk(b, bArr, i24, zzioVar3);
                    i5 = zzioVar3.zza;
                    i24 = iZzk;
                } else {
                    i5 = b;
                }
                int i25 = i5 >>> 3;
                int i26 = i5 & 7;
                int iZzx = i25 > i20 ? zzlmVar2.zzx(i25, i21 / 3) : zzlmVar2.zzw(i25);
                if (iZzx == -1) {
                    i6 = i25;
                    i7 = i24;
                    i8 = i5;
                    i9 = i22;
                    unsafe = unsafe2;
                    i3 = i3;
                    i10 = 0;
                } else {
                    int[] iArr = zzlmVar2.zzc;
                    int i27 = iArr[iZzx + 1];
                    int iZzA = zzA(i27);
                    int i28 = i24;
                    long j = i27 & 1048575;
                    if (iZzA <= 17) {
                        int i29 = iArr[iZzx + 2];
                        int i30 = 1 << (i29 >>> 20);
                        int i31 = i29 & 1048575;
                        if (i31 != i23) {
                            if (i23 != 1048575) {
                                unsafe2.putInt(obj3, i23, i22);
                            }
                            i22 = unsafe2.getInt(obj3, i31);
                            i23 = i31;
                        } else {
                            i23 = i23;
                        }
                        int i32 = i22;
                        switch (iZzA) {
                            case 0:
                                i13 = iZzx;
                                i14 = i25;
                                i15 = i28;
                                if (i26 == 1) {
                                    zzmv.zzo(obj3, j, Double.longBitsToDouble(zzip.zzn(bArr, i15)));
                                    iZzi = i15 + 8;
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 1:
                                i13 = iZzx;
                                i14 = i25;
                                i15 = i28;
                                if (i26 == 5) {
                                    zzmv.zzp(obj3, j, Float.intBitsToFloat(zzip.zzb(bArr, i15)));
                                    iZzi = i15 + 4;
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 2:
                            case 3:
                                i13 = iZzx;
                                i14 = i25;
                                i15 = i28;
                                if (i26 == 0) {
                                    int iZzm = zzip.zzm(bArr, i15, zzioVar3);
                                    unsafe2.putLong(obj, j, zzioVar3.zzb);
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    iZzi = iZzm;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 4:
                            case 11:
                                i13 = iZzx;
                                i14 = i25;
                                i15 = i28;
                                if (i26 == 0) {
                                    iZzi = zzip.zzj(bArr, i15, zzioVar3);
                                    unsafe2.putInt(obj3, j, zzioVar3.zza);
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 5:
                            case 14:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 1) {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    unsafe2.putLong(obj, j, zzip.zzn(bArr, i18));
                                    iZzi = i15 + 8;
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 6:
                            case 13:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 5) {
                                    unsafe2.putInt(obj3, j, zzip.zzb(bArr, i18));
                                    iZzi = i18 + 4;
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i16;
                                    i19 = i17;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 7:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 0) {
                                    iZzi = zzip.zzm(bArr, i18, zzioVar3);
                                    zzmv.zzm(obj3, j, zzioVar3.zzb != 0);
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i16;
                                    i19 = i17;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 8:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 2) {
                                    iZzg = (536870912 & i27) == 0 ? zzip.zzg(bArr, i18, zzioVar3) : zzip.zzh(bArr, i18, zzioVar3);
                                    unsafe2.putObject(obj3, j, zzioVar3.zzc);
                                    i22 = i32 | i30;
                                    iZzi = iZzg;
                                    i21 = i16;
                                    i19 = i17;
                                    i20 = i14;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 9:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 2) {
                                    iZzg = zzip.zzd(zzlmVar2.zzE(i16), bArr, i18, i2, zzioVar3);
                                    if ((i32 & i30) == 0) {
                                        unsafe2.putObject(obj3, j, zzioVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj3, j, zzkk.zzg(unsafe2.getObject(obj3, j), zzioVar3.zzc));
                                    }
                                    i22 = i32 | i30;
                                    iZzi = iZzg;
                                    i21 = i16;
                                    i19 = i17;
                                    i20 = i14;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 10:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 2) {
                                    iZzg = zzip.zza(bArr, i18, zzioVar3);
                                    unsafe2.putObject(obj3, j, zzioVar3.zzc);
                                    i22 = i32 | i30;
                                    iZzi = iZzg;
                                    i21 = i16;
                                    i19 = i17;
                                    i20 = i14;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 12:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 0) {
                                    iZzg = zzip.zzj(bArr, i18, zzioVar3);
                                    int i33 = zzioVar3.zza;
                                    zzkg zzkgVarZzD = zzlmVar2.zzD(i16);
                                    if (zzkgVarZzD == null || zzkgVarZzD.zza(i33)) {
                                        unsafe2.putInt(obj3, j, i33);
                                        i22 = i32 | i30;
                                        iZzi = iZzg;
                                        i21 = i16;
                                    } else {
                                        zzd(obj).zzh(i17, Long.valueOf(i33));
                                        iZzi = iZzg;
                                        i21 = i16;
                                        i22 = i32;
                                    }
                                    i19 = i17;
                                    i20 = i14;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 15:
                                i16 = iZzx;
                                i17 = i5;
                                i14 = i25;
                                i18 = i28;
                                if (i26 == 0) {
                                    iZzi = zzip.zzj(bArr, i18, zzioVar3);
                                    unsafe2.putInt(obj3, j, zzjf.zzb(zzioVar3.zza));
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i16;
                                    i19 = i17;
                                    i3 = i3;
                                } else {
                                    i13 = i16;
                                    i5 = i17;
                                    i15 = i18;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            case 16:
                                if (i26 == 0) {
                                    int iZzm2 = zzip.zzm(bArr, i28, zzioVar3);
                                    int i34 = iZzx;
                                    i17 = i5;
                                    unsafe2.putLong(obj, j, zzjf.zzc(zzioVar3.zzb));
                                    i22 = i32 | i30;
                                    i20 = i25;
                                    iZzi = iZzm2;
                                    i21 = i34;
                                    i19 = i17;
                                    i3 = i3;
                                } else {
                                    i14 = i25;
                                    i13 = iZzx;
                                    i15 = i28;
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                            default:
                                i13 = iZzx;
                                i14 = i25;
                                i15 = i28;
                                if (i26 == 3) {
                                    iZzi = zzip.zzc(zzlmVar2.zzE(i13), bArr, i15, i2, (i14 << 3) | 4, zzioVar);
                                    if ((i32 & i30) == 0) {
                                        unsafe2.putObject(obj3, j, zzioVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj3, j, zzkk.zzg(unsafe2.getObject(obj3, j), zzioVar3.zzc));
                                    }
                                    i22 = i32 | i30;
                                    i20 = i14;
                                    i21 = i13;
                                    i19 = i5;
                                    i23 = i23;
                                    i2 = i2;
                                } else {
                                    i6 = i14;
                                    i9 = i32;
                                    unsafe = unsafe2;
                                    i7 = i15;
                                    i10 = i13;
                                    i8 = i5;
                                    i23 = i23;
                                }
                                break;
                        }
                    } else {
                        int i35 = iZzx;
                        i5 = i5;
                        if (iZzA != 27) {
                            i9 = i22;
                            i23 = i23;
                            if (iZzA <= 49) {
                                i6 = i25;
                                unsafe = unsafe2;
                                i10 = i35;
                                iZzi = zzv(obj, bArr, i28, i2, i5, i6, i26, i35, i27, iZzA, j, zzioVar);
                                if (iZzi != i28) {
                                    zzlmVar2 = this;
                                    obj3 = obj;
                                    i3 = i3;
                                    zzioVar3 = zzioVar;
                                    i19 = i5;
                                    i21 = i10;
                                    i22 = i9;
                                    i20 = i6;
                                    i23 = i23;
                                } else {
                                    i7 = iZzi;
                                    i8 = i5;
                                    i23 = i23;
                                    i3 = i3;
                                }
                                unsafe2 = unsafe;
                            } else {
                                i6 = i25;
                                unsafe = unsafe2;
                                i12 = i28;
                                i10 = i35;
                                if (iZzA != 50) {
                                    iZzi = zzt(obj, bArr, i12, i2, i5, i6, i26, i27, iZzA, j, i10, zzioVar);
                                    if (iZzi != i12) {
                                        zzlmVar2 = this;
                                        obj3 = obj;
                                        i3 = i3;
                                        zzioVar3 = zzioVar;
                                        i19 = i5;
                                        i21 = i10;
                                        i22 = i9;
                                        i20 = i6;
                                        i23 = i23;
                                    } else {
                                        i7 = iZzi;
                                        i8 = i5;
                                        i23 = i23;
                                        i3 = i3;
                                    }
                                    unsafe2 = unsafe;
                                } else if (i26 == 2) {
                                    iZzi = zzs(obj, bArr, i12, i2, i10, j, zzioVar);
                                    if (iZzi != i12) {
                                        zzlmVar2 = this;
                                        obj3 = obj;
                                        i3 = i3;
                                        zzioVar3 = zzioVar;
                                        i19 = i5;
                                        i21 = i10;
                                        i22 = i9;
                                        i20 = i6;
                                        i23 = i23;
                                    } else {
                                        i7 = iZzi;
                                        i8 = i5;
                                        i23 = i23;
                                        i3 = i3;
                                    }
                                    unsafe2 = unsafe;
                                }
                            }
                        } else if (i26 == 2) {
                            zzkj zzkjVarZzd = (zzkj) unsafe2.getObject(obj3, j);
                            if (!zzkjVarZzd.zzc()) {
                                int size = zzkjVarZzd.size();
                                zzkjVarZzd = zzkjVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj3, j, zzkjVarZzd);
                            }
                            i19 = i5;
                            i23 = i23;
                            iZzi = zzip.zze(zzlmVar2.zzE(i35), i19, bArr, i28, i2, zzkjVarZzd, zzioVar);
                            i3 = i3;
                            i20 = i25;
                            i21 = i35;
                            i22 = i22;
                            i23 = i23;
                            i2 = i2;
                        } else {
                            i9 = i22;
                            i23 = i23;
                            i6 = i25;
                            unsafe = unsafe2;
                            i12 = i28;
                            i10 = i35;
                        }
                        i7 = i12;
                        i8 = i5;
                        i23 = i23;
                    }
                }
                if (i8 != i3 || i3 == 0) {
                    int i36 = i3;
                    if (this.zzh) {
                        zzioVar2 = zzioVar;
                        if (zzioVar2.zzd != zzjo.zza()) {
                            i11 = i6;
                            if (zzioVar2.zzd.zzc(this.zzg, i11) != null) {
                                throw null;
                            }
                            iZzi = zzip.zzi(i8, bArr, i7, i2, zzd(obj), zzioVar);
                            obj = obj;
                        }
                        i19 = i8;
                        zzlmVar2 = this;
                        i20 = i11;
                        obj3 = obj;
                        i21 = i10;
                        i22 = i9;
                        i3 = i36;
                        zzioVar3 = zzioVar2;
                        unsafe2 = unsafe;
                    } else {
                        zzioVar2 = zzioVar;
                    }
                    i11 = i6;
                    iZzi = zzip.zzi(i8, bArr, i7, i2, zzd(obj), zzioVar);
                    i19 = i8;
                    zzlmVar2 = this;
                    i20 = i11;
                    obj3 = obj;
                    i21 = i10;
                    i22 = i9;
                    i3 = i36;
                    zzioVar3 = zzioVar2;
                    unsafe2 = unsafe;
                } else {
                    zzlmVar = this;
                    obj2 = obj;
                    i4 = i3;
                    iZzi = i7;
                    i19 = i8;
                    i22 = i9;
                }
            } else {
                unsafe = unsafe2;
                i4 = i3;
                obj2 = obj3;
                zzlmVar = zzlmVar2;
            }
        }
        if (i23 != 1048575) {
            unsafe.putInt(obj2, i23, i22);
        }
        for (int i37 = zzlmVar.zzk; i37 < zzlmVar.zzl; i37++) {
            int i38 = zzlmVar.zzj[i37];
            int i39 = zzlmVar.zzc[i38];
            Object objZzf = zzmv.zzf(obj2, zzlmVar.zzB(i38) & 1048575);
            if (objZzf != null && zzlmVar.zzD(i38) != null) {
                throw null;
            }
        }
        if (i4 == 0) {
            if (iZzi != i2) {
                throw zzkm.zze();
            }
        } else if (iZzi > i2 || i19 != i4) {
            throw zzkm.zze();
        }
        return iZzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final Object zze() {
        return ((zzkc) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long jZzB = zzB(this.zzj[i2]) & 1048575;
            Object objZzf = zzmv.zzf(obj, jZzB);
            if (objZzf != null) {
                ((zzld) objZzf).zzc();
                zzmv.zzs(obj, jZzB, objZzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(obj, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zzb(obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzio zzioVar) throws IOException {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzioVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzioVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzi(Object obj, zznd zzndVar) throws IOException {
        if (!this.zzi) {
            zzL(obj, zzndVar);
            return;
        }
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzB = zzB(i);
            int i2 = this.zzc[i];
            switch (zzA(iZzB)) {
                case 0:
                    if (zzO(obj, i)) {
                        zzndVar.zzf(i2, zzmv.zza(obj, iZzB & 1048575));
                    }
                    break;
                case 1:
                    if (zzO(obj, i)) {
                        zzndVar.zzo(i2, zzmv.zzb(obj, iZzB & 1048575));
                    }
                    break;
                case 2:
                    if (zzO(obj, i)) {
                        zzndVar.zzt(i2, zzmv.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 3:
                    if (zzO(obj, i)) {
                        zzndVar.zzJ(i2, zzmv.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 4:
                    if (zzO(obj, i)) {
                        zzndVar.zzr(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 5:
                    if (zzO(obj, i)) {
                        zzndVar.zzm(i2, zzmv.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 6:
                    if (zzO(obj, i)) {
                        zzndVar.zzk(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 7:
                    if (zzO(obj, i)) {
                        zzndVar.zzb(i2, zzmv.zzw(obj, iZzB & 1048575));
                    }
                    break;
                case 8:
                    if (zzO(obj, i)) {
                        zzT(i2, zzmv.zzf(obj, iZzB & 1048575), zzndVar);
                    }
                    break;
                case 9:
                    if (zzO(obj, i)) {
                        zzndVar.zzv(i2, zzmv.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 10:
                    if (zzO(obj, i)) {
                        zzndVar.zzd(i2, (zzjb) zzmv.zzf(obj, iZzB & 1048575));
                    }
                    break;
                case 11:
                    if (zzO(obj, i)) {
                        zzndVar.zzH(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 12:
                    if (zzO(obj, i)) {
                        zzndVar.zzi(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 13:
                    if (zzO(obj, i)) {
                        zzndVar.zzw(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 14:
                    if (zzO(obj, i)) {
                        zzndVar.zzy(i2, zzmv.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 15:
                    if (zzO(obj, i)) {
                        zzndVar.zzA(i2, zzmv.zzc(obj, iZzB & 1048575));
                    }
                    break;
                case 16:
                    if (zzO(obj, i)) {
                        zzndVar.zzC(i2, zzmv.zzd(obj, iZzB & 1048575));
                    }
                    break;
                case 17:
                    if (zzO(obj, i)) {
                        zzndVar.zzq(i2, zzmv.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 18:
                    zzlw.zzJ(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 19:
                    zzlw.zzN(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 20:
                    zzlw.zzQ(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 21:
                    zzlw.zzY(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 22:
                    zzlw.zzP(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 23:
                    zzlw.zzM(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 24:
                    zzlw.zzL(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 25:
                    zzlw.zzH(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 26:
                    zzlw.zzW(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar);
                    break;
                case 27:
                    zzlw.zzR(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, zzE(i));
                    break;
                case 28:
                    zzlw.zzI(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar);
                    break;
                case 29:
                    zzlw.zzX(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 30:
                    zzlw.zzK(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 31:
                    zzlw.zzS(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 32:
                    zzlw.zzT(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 33:
                    zzlw.zzU(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 34:
                    zzlw.zzV(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, false);
                    break;
                case 35:
                    zzlw.zzJ(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 36:
                    zzlw.zzN(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 37:
                    zzlw.zzQ(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 38:
                    zzlw.zzY(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 39:
                    zzlw.zzP(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 40:
                    zzlw.zzM(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 41:
                    zzlw.zzL(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 42:
                    zzlw.zzH(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 43:
                    zzlw.zzX(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 44:
                    zzlw.zzK(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 45:
                    zzlw.zzS(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 46:
                    zzlw.zzT(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 47:
                    zzlw.zzU(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 48:
                    zzlw.zzV(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, true);
                    break;
                case 49:
                    zzlw.zzO(i2, (List) zzmv.zzf(obj, iZzB & 1048575), zzndVar, zzE(i));
                    break;
                case 50:
                    zzM(zzndVar, i2, zzmv.zzf(obj, iZzB & 1048575), i);
                    break;
                case 51:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzf(i2, zzn(obj, iZzB & 1048575));
                    }
                    break;
                case 52:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzo(i2, zzo(obj, iZzB & 1048575));
                    }
                    break;
                case 53:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzt(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 54:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzJ(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 55:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzr(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 56:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzm(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 57:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzk(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 58:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzb(i2, zzS(obj, iZzB & 1048575));
                    }
                    break;
                case 59:
                    if (zzR(obj, i2, i)) {
                        zzT(i2, zzmv.zzf(obj, iZzB & 1048575), zzndVar);
                    }
                    break;
                case 60:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzv(i2, zzmv.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
                case 61:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzd(i2, (zzjb) zzmv.zzf(obj, iZzB & 1048575));
                    }
                    break;
                case 62:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzH(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 63:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzi(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 64:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzw(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 65:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzy(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 66:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzA(i2, zzr(obj, iZzB & 1048575));
                    }
                    break;
                case 67:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzC(i2, zzC(obj, iZzB & 1048575));
                    }
                    break;
                case 68:
                    if (zzR(obj, i2, i)) {
                        zzndVar.zzq(i2, zzmv.zzf(obj, iZzB & 1048575), zzE(i));
                    }
                    break;
            }
        }
        zzml zzmlVar = this.zzn;
        zzmlVar.zzi(zzmlVar.zzc(obj), zzndVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzZ;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzB = zzB(i);
            long j = iZzB & 1048575;
            switch (zzA(iZzB)) {
                case 0:
                    if (!zzN(obj, obj2, i) || Double.doubleToLongBits(zzmv.zza(obj, j)) != Double.doubleToLongBits(zzmv.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzN(obj, obj2, i) || Float.floatToIntBits(zzmv.zzb(obj, j)) != Float.floatToIntBits(zzmv.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzN(obj, obj2, i) || zzmv.zzd(obj, j) != zzmv.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzN(obj, obj2, i) || zzmv.zzd(obj, j) != zzmv.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzN(obj, obj2, i) || zzmv.zzd(obj, j) != zzmv.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzN(obj, obj2, i) || zzmv.zzw(obj, j) != zzmv.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzN(obj, obj2, i) || !zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzN(obj, obj2, i) || !zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzN(obj, obj2, i) || !zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzN(obj, obj2, i) || zzmv.zzd(obj, j) != zzmv.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzN(obj, obj2, i) || zzmv.zzc(obj, j) != zzmv.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzN(obj, obj2, i) || zzmv.zzd(obj, j) != zzmv.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzN(obj, obj2, i) || !zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzZ = zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j));
                    break;
                case 50:
                    zZzZ = zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzy = zzy(i) & 1048575;
                    if (zzmv.zzc(obj, jZzy) != zzmv.zzc(obj2, jZzy) || !zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzZ) {
                return false;
            }
        }
        if (!this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00af  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c5 A[LOOP:1: B:45:0x00b4->B:50:0x00c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e3 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        List list;
        zzlu zzluVarZzE;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.zzk) {
            int i7 = this.zzj[i6];
            int i8 = this.zzc[i7];
            int iZzB = zzB(i7);
            int i9 = this.zzc[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = zzb.getInt(obj, i10);
                }
                i2 = i5;
                i = i10;
            } else {
                i = i4;
                i2 = i5;
            }
            if ((268435456 & iZzB) != 0 && !zzP(obj, i7, i, i2, i11)) {
                return false;
            }
            int iZzA = zzA(iZzB);
            if (iZzA == 9 || iZzA == 17) {
                if (zzP(obj, i7, i, i2, i11) && !zzQ(obj, iZzB, zzE(i7))) {
                    return false;
                }
            } else if (iZzA == 27) {
                list = (List) zzmv.zzf(obj, iZzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzluVarZzE = zzE(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzluVarZzE.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzA == 60 || iZzA == 68) {
                if (zzR(obj, i8, i7) && !zzQ(obj, iZzB, zzE(i7))) {
                    return false;
                }
            } else if (iZzA == 49) {
                list = (List) zzmv.zzf(obj, iZzB & 1048575);
                if (list.isEmpty()) {
                    zzluVarZzE = zzE(i7);
                    while (i3 < list.size()) {
                        if (!zzluVarZzE.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzA == 50 && !((zzld) zzmv.zzf(obj, iZzB & 1048575)).isEmpty()) {
                throw null;
            }
            i6++;
            i4 = i;
            i5 = i2;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzg(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzB = zzB(i);
            long j = 1048575 & iZzB;
            int i2 = this.zzc[i];
            switch (zzA(iZzB)) {
                case 0:
                    if (zzO(obj2, i)) {
                        zzmv.zzo(obj, j, zzmv.zza(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 1:
                    if (zzO(obj2, i)) {
                        zzmv.zzp(obj, j, zzmv.zzb(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 2:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 3:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 4:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 5:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 6:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 7:
                    if (zzO(obj2, i)) {
                        zzmv.zzm(obj, j, zzmv.zzw(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 8:
                    if (zzO(obj2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzO(obj2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 11:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 12:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 13:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 14:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 15:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 16:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 17:
                    zzH(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzlw.zzaa(this.zzq, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzlw.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzlw.zzE(this.zzo, obj, obj2);
        }
    }
}

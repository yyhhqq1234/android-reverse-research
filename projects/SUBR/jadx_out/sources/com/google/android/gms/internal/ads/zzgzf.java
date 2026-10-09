package com.google.android.gms.internal.ads;

import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgzf<T> implements zzgzv<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhao.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgzc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhah zzm;
    private final zzgxc zzn;

    private zzgzf(int[] iArr, Object[] objArr, int i, int i2, zzgzc zzgzcVar, boolean z, int[] iArr2, int i3, int i4, zzgzi zzgziVar, zzgyp zzgypVar, zzhah zzhahVar, zzgxc zzgxcVar, zzgyx zzgyxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgzcVar instanceof zzgxr;
        boolean z2 = false;
        if (zzgxcVar != null && (zzgzcVar instanceof zzgxn)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzhahVar;
        this.zzn = zzgxcVar;
        this.zzg = zzgzcVar;
    }

    private final Object zzA(Object obj, int i) {
        zzgzv zzgzvVarZzx = zzx(i);
        int iZzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzgzvVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgzvVarZzx.zze();
        if (object != null) {
            zzgzvVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzgzv zzgzvVarZzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzgzvVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgzvVarZzx.zze();
        if (object != null) {
            zzgzvVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
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

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgzv zzgzvVarZzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgzvVarZzx.zze();
                    zzgzvVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgzvVarZzx.zze();
                zzgzvVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgzvVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzR(obj2, i2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgzv zzgzvVarZzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgzvVarZzx.zze();
                    zzgzvVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgzvVarZzx.zze();
                zzgzvVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgzvVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzgzp zzgzpVar) throws IOException {
        long j = i & 1048575;
        if (zzM(i)) {
            zzhao.zzv(obj, j, zzgzpVar.zzs());
        } else if (this.zzi) {
            zzhao.zzv(obj, j, zzgzpVar.zzr());
        } else {
            zzhao.zzv(obj, j, zzgzpVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int iZzr = zzr(i);
        long j = 1048575 & iZzr;
        if (j == 1048575) {
            return;
        }
        zzhao.zzt(obj, j, (1 << (iZzr >>> 20)) | zzhao.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzhao.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & DriveFile.MODE_WRITE_ONLY) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int iZzr = zzr(i);
        long j = iZzr & 1048575;
        if (j != 1048575) {
            return (zzhao.zzd(obj, j) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i);
        long j2 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzhao.zzb(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhao.zzc(obj, j2)) != 0;
            case 2:
                return zzhao.zzf(obj, j2) != 0;
            case 3:
                return zzhao.zzf(obj, j2) != 0;
            case 4:
                return zzhao.zzd(obj, j2) != 0;
            case 5:
                return zzhao.zzf(obj, j2) != 0;
            case 6:
                return zzhao.zzd(obj, j2) != 0;
            case 7:
                return zzhao.zzz(obj, j2);
            case 8:
                Object objZzh = zzhao.zzh(obj, j2);
                if (objZzh instanceof String) {
                    return !((String) objZzh).isEmpty();
                }
                if (objZzh instanceof zzgwj) {
                    return !zzgwj.zzb.equals(objZzh);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhao.zzh(obj, j2) != null;
            case 10:
                return !zzgwj.zzb.equals(zzhao.zzh(obj, j2));
            case 11:
                return zzhao.zzd(obj, j2) != 0;
            case 12:
                return zzhao.zzd(obj, j2) != 0;
            case 13:
                return zzhao.zzd(obj, j2) != 0;
            case 14:
                return zzhao.zzf(obj, j2) != 0;
            case 15:
                return zzhao.zzd(obj, j2) != 0;
            case 16:
                return zzhao.zzf(obj, j2) != 0;
            case 17:
                return zzhao.zzh(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzN(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzgzv zzgzvVar) {
        return zzgzvVar.zzl(zzhao.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgxr) {
            return ((zzgxr) obj).zzcd();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzhao.zzd(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzhao.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzhaw zzhawVar) throws IOException {
        if (obj instanceof String) {
            zzhawVar.zzG(i, (String) obj);
        } else {
            zzhawVar.zzd(i, (zzgwj) obj);
        }
    }

    static zzhai zzd(Object obj) {
        zzgxr zzgxrVar = (zzgxr) obj;
        zzhai zzhaiVar = zzgxrVar.zzt;
        if (zzhaiVar != zzhai.zzc()) {
            return zzhaiVar;
        }
        zzhai zzhaiVarZzf = zzhai.zzf();
        zzgxrVar.zzt = zzhaiVarZzf;
        return zzhaiVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0264  */
    /* JADX WARN: Code duplicated, block: B:126:0x0267  */
    /* JADX WARN: Code duplicated, block: B:129:0x027e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0281  */
    /* JADX WARN: Code duplicated, block: B:184:0x0397  */
    static zzgzf zzm(Class cls, zzgyz zzgyzVar, zzgzi zzgziVar, zzgyp zzgypVar, zzhah zzhahVar, zzgxc zzgxcVar, zzgyx zzgyxVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        char cCharAt;
        int i8;
        char cCharAt2;
        int i9;
        char cCharAt3;
        int i10;
        char cCharAt4;
        int i11;
        char cCharAt5;
        int i12;
        char cCharAt6;
        int i13;
        char cCharAt7;
        int i14;
        char cCharAt8;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        int i20;
        Field fieldZzC;
        char cCharAt9;
        int i21;
        int i22;
        int i23;
        int i24;
        Object obj;
        Field fieldZzC2;
        int i25;
        Object obj2;
        Field fieldZzC3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        if (!(zzgyzVar instanceof zzgzo)) {
            throw null;
        }
        zzgzo zzgzoVar = (zzgzo) zzgyzVar;
        String strZzd = zzgzoVar.zzd();
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
        int iCharAt3 = strZzd.charAt(i);
        if (iCharAt3 >= 55296) {
            int i32 = iCharAt3 & 8191;
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
            iCharAt3 = i32 | (cCharAt13 << i33);
            i31 = i29;
        }
        if (iCharAt3 == 0) {
            iArr = zza;
            i6 = 0;
            i4 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i2 = 0;
            i5 = 0;
            i3 = 0;
        } else {
            int i34 = i31 + 1;
            int iCharAt4 = strZzd.charAt(i31);
            if (iCharAt4 >= 55296) {
                int i35 = iCharAt4 & 8191;
                int i36 = 13;
                while (true) {
                    i14 = i34 + 1;
                    cCharAt8 = strZzd.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i14;
                }
                iCharAt4 = i35 | (cCharAt8 << i36);
                i34 = i14;
            }
            int i37 = i34 + 1;
            int iCharAt5 = strZzd.charAt(i34);
            if (iCharAt5 >= 55296) {
                int i38 = iCharAt5 & 8191;
                int i39 = 13;
                while (true) {
                    i13 = i37 + 1;
                    cCharAt7 = strZzd.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i13;
                }
                iCharAt5 = i38 | (cCharAt7 << i39);
                i37 = i13;
            }
            int i40 = i37 + 1;
            int iCharAt6 = strZzd.charAt(i37);
            if (iCharAt6 >= 55296) {
                int i41 = iCharAt6 & 8191;
                int i42 = 13;
                while (true) {
                    i12 = i40 + 1;
                    cCharAt6 = strZzd.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i12;
                }
                iCharAt6 = i41 | (cCharAt6 << i42);
                i40 = i12;
            }
            int i43 = i40 + 1;
            int iCharAt7 = strZzd.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i11 = i43 + 1;
                    cCharAt5 = strZzd.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i11;
                }
                iCharAt7 = i44 | (cCharAt5 << i45);
                i43 = i11;
            }
            int i46 = i43 + 1;
            iCharAt = strZzd.charAt(i43);
            if (iCharAt >= 55296) {
                int i47 = iCharAt & 8191;
                int i48 = 13;
                while (true) {
                    i10 = i46 + 1;
                    cCharAt4 = strZzd.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i10;
                }
                iCharAt = i47 | (cCharAt4 << i48);
                i46 = i10;
            }
            int i49 = i46 + 1;
            iCharAt2 = strZzd.charAt(i46);
            if (iCharAt2 >= 55296) {
                int i50 = iCharAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i9 = i49 + 1;
                    cCharAt3 = strZzd.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i9;
                }
                iCharAt2 = i50 | (cCharAt3 << i51);
                i49 = i9;
            }
            int i52 = i49 + 1;
            int iCharAt8 = strZzd.charAt(i49);
            if (iCharAt8 >= 55296) {
                int i53 = iCharAt8 & 8191;
                int i54 = 13;
                while (true) {
                    i8 = i52 + 1;
                    cCharAt2 = strZzd.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i8;
                }
                iCharAt8 = i53 | (cCharAt2 << i54);
                i52 = i8;
            }
            int i55 = i52 + 1;
            int iCharAt9 = strZzd.charAt(i52);
            if (iCharAt9 >= 55296) {
                int i56 = iCharAt9 & 8191;
                int i57 = 13;
                while (true) {
                    i7 = i55 + 1;
                    cCharAt = strZzd.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i7;
                }
                iCharAt9 = i56 | (cCharAt << i57);
                i55 = i7;
            }
            int i58 = iCharAt4 + iCharAt4 + iCharAt5;
            int[] iArr2 = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i2 = iCharAt6;
            i3 = iCharAt9;
            i4 = i58;
            iArr = iArr2;
            i5 = iCharAt7;
            i6 = iCharAt4;
            i31 = i55;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzgzoVar.zze();
        Class<?> cls2 = zzgzoVar.zza().getClass();
        int i59 = i3 + iCharAt2;
        int i60 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i60];
        int i61 = i3;
        int i62 = i59;
        int i63 = 0;
        int i64 = 0;
        while (i31 < length) {
            int i65 = i31 + 1;
            int iCharAt10 = strZzd.charAt(i31);
            if (iCharAt10 >= c) {
                int i66 = iCharAt10 & 8191;
                int i67 = i65;
                int i68 = 13;
                while (true) {
                    i28 = i67 + 1;
                    cCharAt12 = strZzd.charAt(i67);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i66 |= (cCharAt12 & 8191) << i68;
                    i68 += 13;
                    i67 = i28;
                }
                iCharAt10 = i66 | (cCharAt12 << i68);
                i15 = i28;
            } else {
                i15 = i65;
            }
            int i69 = i15 + 1;
            int iCharAt11 = strZzd.charAt(i15);
            if (iCharAt11 >= c) {
                int i70 = iCharAt11 & 8191;
                int i71 = i69;
                int i72 = 13;
                while (true) {
                    i27 = i71 + 1;
                    cCharAt11 = strZzd.charAt(i71);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i70 |= (cCharAt11 & 8191) << i72;
                    i72 += 13;
                    i71 = i27;
                }
                iCharAt11 = i70 | (cCharAt11 << i72);
                i16 = i27;
            } else {
                i16 = i69;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i63] = i64;
                i63++;
            }
            int i73 = iCharAt11 & 255;
            int i74 = length;
            int i75 = iCharAt11 & 2048;
            int i76 = i5;
            if (i73 >= 51) {
                int i77 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i78 = iCharAt12 & 8191;
                    int i79 = i77;
                    int i80 = 13;
                    while (true) {
                        i26 = i79 + 1;
                        cCharAt10 = strZzd.charAt(i79);
                        i17 = i2;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i78 |= (cCharAt10 & 8191) << i80;
                        i80 += 13;
                        i79 = i26;
                        i2 = i17;
                    }
                    iCharAt12 = i78 | (cCharAt10 << i80);
                    i22 = i26;
                } else {
                    i17 = i2;
                    i22 = i77;
                }
                int i81 = i73 - 51;
                int i82 = i22;
                if (i81 == 9 || i81 == 17) {
                    i23 = i4 + 1;
                    int i83 = i64 / 3;
                    objArr[i83 + i83 + 1] = objArrZze[i4];
                } else {
                    if (i81 == 12) {
                        if (zzgzoVar.zzc() == 1 || i75 != 0) {
                            i23 = i4 + 1;
                            int i84 = i64 / 3;
                            objArr[i84 + i84 + 1] = objArrZze[i4];
                        } else {
                            i75 = 0;
                        }
                    }
                    i24 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i24];
                    if (obj instanceof Field) {
                        fieldZzC2 = (Field) obj;
                    } else {
                        fieldZzC2 = zzC(cls2, (String) obj);
                        objArrZze[i24] = fieldZzC2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzC2);
                    i25 = i24 + 1;
                    obj2 = objArrZze[i25];
                    int i85 = i75;
                    if (obj2 instanceof Field) {
                        fieldZzC3 = (Field) obj2;
                    } else {
                        fieldZzC3 = zzC(cls2, (String) obj2);
                        objArrZze[i25] = fieldZzC3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzC3);
                    strZzd = strZzd;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i18 = i4;
                    i19 = i82;
                    i75 = i85;
                    zzgzoVar = zzgzoVar;
                    cls2 = cls2;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i20 = 0;
                }
                i4 = i23;
                i24 = iCharAt12 + iCharAt12;
                obj = objArrZze[i24];
                if (obj instanceof Field) {
                    fieldZzC2 = (Field) obj;
                } else {
                    fieldZzC2 = zzC(cls2, (String) obj);
                    objArrZze[i24] = fieldZzC2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldZzC2);
                i25 = i24 + 1;
                obj2 = objArrZze[i25];
                int i86 = i75;
                if (obj2 instanceof Field) {
                    fieldZzC3 = (Field) obj2;
                } else {
                    fieldZzC3 = zzC(cls2, (String) obj2);
                    objArrZze[i25] = fieldZzC3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldZzC3);
                strZzd = strZzd;
                iObjectFieldOffset = iObjectFieldOffset5;
                i18 = i4;
                i19 = i82;
                i75 = i86;
                zzgzoVar = zzgzoVar;
                cls2 = cls2;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                i20 = 0;
            } else {
                i17 = i2;
                i18 = i4 + 1;
                Field fieldZzC4 = zzC(cls2, (String) objArrZze[i4]);
                if (i73 == 9 || i73 == 17) {
                    zzgzoVar = zzgzoVar;
                    int i87 = i64 / 3;
                    objArr[i87 + i87 + 1] = fieldZzC4.getType();
                } else {
                    if (i73 == 27 || i73 == 49) {
                        i21 = i18 + 1;
                        int i88 = i64 / 3;
                        objArr[i88 + i88 + 1] = objArrZze[i18];
                        i18 = i21;
                    } else if (i73 == 12 || i73 == 30 || i73 == 44) {
                        zzgzoVar = zzgzoVar;
                        if (zzgzoVar.zzc() == 1 || i75 != 0) {
                            i21 = i18 + 1;
                            int i89 = i64 / 3;
                            objArr[i89 + i89 + 1] = objArrZze[i18];
                            i18 = i21;
                        } else {
                            i75 = 0;
                        }
                    } else if (i73 == 50) {
                        int i90 = i18 + 1;
                        int i91 = i61 + 1;
                        iArr[i61] = i64;
                        int i92 = i64 / 3;
                        int i93 = i92 + i92;
                        objArr[i93] = objArrZze[i18];
                        if (i75 != 0) {
                            i18 = i90 + 1;
                            objArr[i93 + 1] = objArrZze[i90];
                            i61 = i91;
                            zzgzoVar = zzgzoVar;
                        } else {
                            i18 = i90;
                            i61 = i91;
                            i75 = 0;
                            zzgzoVar = zzgzoVar;
                        }
                    } else {
                        zzgzoVar = zzgzoVar;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0 || i73 > 17) {
                        i19 = i16;
                        i20 = 0;
                    } else {
                        int i94 = i16 + 1;
                        int iCharAt13 = strZzd.charAt(i16);
                        if (iCharAt13 >= 55296) {
                            int i95 = iCharAt13 & 8191;
                            int i96 = 13;
                            while (true) {
                                i19 = i94 + 1;
                                cCharAt9 = strZzd.charAt(i94);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i95 |= (cCharAt9 & 8191) << i96;
                                i96 += 13;
                                i94 = i19;
                            }
                            iCharAt13 = i95 | (cCharAt9 << i96);
                        } else {
                            i19 = i94;
                        }
                        int i97 = i6 + i6 + (iCharAt13 / 32);
                        Object obj3 = objArrZze[i97];
                        if (obj3 instanceof Field) {
                            fieldZzC = (Field) obj3;
                        } else {
                            fieldZzC = zzC(cls2, (String) obj3);
                            objArrZze[i97] = fieldZzC;
                        }
                        i20 = iCharAt13 % 32;
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC);
                    }
                    if (i73 >= 18 && i73 <= 49) {
                        iArr[i62] = iObjectFieldOffset;
                        i62++;
                    }
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    i19 = i16;
                    i20 = 0;
                } else {
                    i19 = i16;
                    i20 = 0;
                }
                if (i73 >= 18) {
                    iArr[i62] = iObjectFieldOffset;
                    i62++;
                }
            }
            int i98 = i64 + 1;
            iArr3[i64] = iCharAt10;
            int i99 = i98 + 1;
            iArr3[i98] = iObjectFieldOffset | ((iCharAt11 & 512) != 0 ? DriveFile.MODE_WRITE_ONLY : 0) | ((iCharAt11 & 256) != 0 ? DriveFile.MODE_READ_ONLY : 0) | (i75 != 0 ? Integer.MIN_VALUE : 0) | (i73 << 20);
            i64 = i99 + 1;
            iArr3[i99] = (i20 << 20) | iObjectFieldOffset2;
            cls2 = cls2;
            i4 = i18;
            strZzd = strZzd;
            length = i74;
            i5 = i76;
            zzgzoVar = zzgzoVar;
            i31 = i19;
            i2 = i17;
            c = 55296;
        }
        return new zzgzf(iArr3, objArr, i2, i5, zzgzoVar.zza(), false, iArr, i3, i59, zzgziVar, zzgypVar, zzhahVar, zzgxcVar, zzgyxVar);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzhao.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzhao.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzhao.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
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

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzhao.zzh(obj, j)).longValue();
    }

    private final zzgxx zzw(int i) {
        int i2 = i / 3;
        return (zzgxx) this.zzd[i2 + i2 + 1];
    }

    private final zzgzv zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzgzv zzgzvVar = (zzgzv) objArr[i3];
        if (zzgzvVar != null) {
            return zzgzvVar;
        }
        zzgzv zzgzvVarZzb = zzgzm.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzgzvVarZzb;
        return zzgzvVarZzb;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzhah zzhahVar, Object obj3) {
        int i2 = this.zzc[i];
        Object objZzh = zzhao.zzh(obj, zzu(i) & 1048575);
        if (objZzh == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Code duplicated, block: B:137:0x038f  */
    /* JADX WARN: Code duplicated, block: B:207:0x0555  */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int iZzD;
        int iZzD2;
        int iZzD3;
        int iZzE;
        int iZzD4;
        int iZzD5;
        int iZzd;
        int iZzD6;
        int iZzh;
        int iZzg;
        int size;
        int iZzD7;
        int iZzD8;
        int iZzD9;
        int iZze;
        int iZzD10;
        int iZzD11;
        int iZzy;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i7 < this.zzc.length) {
            int iZzu = zzu(i7);
            int iZzt = zzt(iZzu);
            int[] iArr = this.zzc;
            int i9 = iArr[i7];
            int i10 = iArr[i7 + 2];
            int i11 = i10 & i4;
            if (iZzt <= 17) {
                if (i11 != i5) {
                    i6 = i11 == i4 ? 0 : unsafe.getInt(obj, i11);
                    i5 = i11;
                }
                i = i5;
                i2 = i6;
                i3 = 1 << (i10 >>> 20);
            } else {
                i = i5;
                i2 = i6;
                i3 = 0;
            }
            int i12 = iZzu & i4;
            if (iZzt >= zzgxh.DOUBLE_LIST_PACKED.zza()) {
                zzgxh.SINT64_LIST_PACKED.zza();
            }
            long j = i12;
            switch (iZzt) {
                case 0:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 1:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 2:
                    if (zzO(obj, i7, i, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(j2);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 3:
                    if (zzO(obj, i7, i, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(j3);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 4:
                    if (zzO(obj, i7, i, i2, i3)) {
                        long j4 = unsafe.getInt(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(j4);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 5:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 6:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 7:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD4 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD4 + 1;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 8:
                    if (zzO(obj, i7, i, i2, i3)) {
                        int i13 = i9 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgwj) {
                            iZzD5 = zzgww.zzD(i13);
                            iZzd = ((zzgwj) object).zzd();
                            iZzD6 = zzgww.zzD(iZzd);
                            iZzh = iZzD5 + iZzD6 + iZzd;
                            i8 += iZzh;
                        } else {
                            iZzD3 = zzgww.zzD(i13);
                            iZzE = zzgww.zzC((String) object);
                            iZzh = iZzD3 + iZzE;
                            i8 += iZzh;
                        }
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 9:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzh = zzgzx.zzh(i9, unsafe.getObject(obj, j), zzx(i7));
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 10:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgwj zzgwjVar = (zzgwj) unsafe.getObject(obj, j);
                        iZzD5 = zzgww.zzD(i9 << 3);
                        iZzd = zzgwjVar.zzd();
                        iZzD6 = zzgww.zzD(iZzd);
                        iZzh = iZzD5 + iZzD6 + iZzd;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 11:
                    if (zzO(obj, i7, i, i2, i3)) {
                        int i14 = unsafe.getInt(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzD(i14);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 12:
                    if (zzO(obj, i7, i, i2, i3)) {
                        long j5 = unsafe.getInt(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(j5);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 13:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 14:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 15:
                    if (zzO(obj, i7, i, i2, i3)) {
                        int i15 = unsafe.getInt(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzD((i15 >> 31) ^ (i15 + i15));
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 16:
                    if (zzO(obj, i7, i, i2, i3)) {
                        long j6 = unsafe.getLong(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE((j6 >> 63) ^ (j6 + j6));
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 17:
                    if (zzO(obj, i7, i, i2, i3)) {
                        iZzh = zzgww.zzy(i9, (zzgzc) unsafe.getObject(obj, j), zzx(i7));
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 18:
                    iZzh = zzgzx.zzd(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 19:
                    iZzh = zzgzx.zzb(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i16 = zzgzx.zza;
                    if (list.size() == 0) {
                        iZzg = 0;
                    } else {
                        iZzg = zzgzx.zzg(list) + (list.size() * zzgww.zzD(i9 << 3));
                    }
                    i8 += iZzg;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i17 = zzgzx.zza;
                    size = list2.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zzl(list2);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i18 = zzgzx.zza;
                    size = list3.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zzf(list3);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 23:
                    iZzh = zzgzx.zzd(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 24:
                    iZzh = zzgzx.zzb(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i19 = zzgzx.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iZzh = 0;
                    } else {
                        iZzh = size2 * (zzgww.zzD(i9 << 3) + 1);
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i20 = zzgzx.zza;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iZzg = 0;
                    } else {
                        iZzg = zzgww.zzD(i9 << 3) * size3;
                        if (list5 instanceof zzgyo) {
                            zzgyo zzgyoVar = (zzgyo) list5;
                            for (int i21 = 0; i21 < size3; i21++) {
                                Object objZzc = zzgyoVar.zzc();
                                if (objZzc instanceof zzgwj) {
                                    int iZzd2 = ((zzgwj) objZzc).zzd();
                                    iZzg += zzgww.zzD(iZzd2) + iZzd2;
                                } else {
                                    iZzg += zzgww.zzC((String) objZzc);
                                }
                            }
                        } else {
                            for (int i22 = 0; i22 < size3; i22++) {
                                Object obj2 = list5.get(i22);
                                if (obj2 instanceof zzgwj) {
                                    int iZzd3 = ((zzgwj) obj2).zzd();
                                    iZzg += zzgww.zzD(iZzd3) + iZzd3;
                                } else {
                                    iZzg += zzgww.zzC((String) obj2);
                                }
                            }
                        }
                    }
                    i8 += iZzg;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    zzgzv zzgzvVarZzx = zzx(i7);
                    int i23 = zzgzx.zza;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzD8 = 0;
                    } else {
                        iZzD8 = zzgww.zzD(i9 << 3) * size4;
                        for (int i24 = 0; i24 < size4; i24++) {
                            Object obj3 = list6.get(i24);
                            if (obj3 instanceof zzgyn) {
                                int iZza = ((zzgyn) obj3).zza();
                                iZzD8 += zzgww.zzD(iZza) + iZza;
                            } else {
                                iZzD8 += zzgww.zzA((zzgzc) obj3, zzgzvVarZzx);
                            }
                        }
                    }
                    i8 += iZzD8;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i25 = zzgzx.zza;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzD9 = 0;
                    } else {
                        iZzD9 = size5 * zzgww.zzD(i9 << 3);
                        for (int i26 = 0; i26 < list7.size(); i26++) {
                            int iZzd4 = ((zzgwj) list7.get(i26)).zzd();
                            iZzD9 += zzgww.zzD(iZzd4) + iZzd4;
                        }
                    }
                    i8 += iZzD9;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i27 = zzgzx.zza;
                    size = list8.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zzk(list8);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i28 = zzgzx.zza;
                    size = list9.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zza(list9);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 31:
                    iZzh = zzgzx.zzb(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 32:
                    iZzh = zzgzx.zzd(i9, (List) unsafe.getObject(obj, j), z);
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j);
                    int i29 = zzgzx.zza;
                    size = list10.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zzi(list10);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    int i30 = zzgzx.zza;
                    size = list11.size();
                    if (size == 0) {
                        iZzh = 0;
                    } else {
                        iZzD3 = zzgzx.zzj(list11);
                        iZzD7 = zzgww.zzD(i9 << 3);
                        iZzE = size * iZzD7;
                        iZzh = iZzD3 + iZzE;
                    }
                    i8 += iZzh;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 35:
                    iZze = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 36:
                    iZze = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 37:
                    iZze = zzgzx.zzg((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 38:
                    iZze = zzgzx.zzl((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 39:
                    iZze = zzgzx.zzf((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 40:
                    iZze = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 41:
                    iZze = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j);
                    int i31 = zzgzx.zza;
                    iZze = list12.size();
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 43:
                    iZze = zzgzx.zzk((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 44:
                    iZze = zzgzx.zza((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 45:
                    iZze = zzgzx.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 46:
                    iZze = zzgzx.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 47:
                    iZze = zzgzx.zzi((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 48:
                    iZze = zzgzx.zzj((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzD10 = zzgww.zzD(i9 << 3);
                        iZzD11 = zzgww.zzD(iZze);
                        iZzD9 = iZzD10 + iZzD11 + iZze;
                        i8 += iZzD9;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j);
                    zzgzv zzgzvVarZzx2 = zzx(i7);
                    int i32 = zzgzx.zza;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZzy = 0;
                    } else {
                        iZzy = 0;
                        for (int i33 = 0; i33 < size6; i33++) {
                            iZzy += zzgww.zzy(i9, (zzgzc) list13.get(i33), zzgzvVarZzx2);
                        }
                    }
                    i8 += iZzy;
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 50:
                    zzgyw zzgywVar = (zzgyw) unsafe.getObject(obj, j);
                    if (zzgywVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzgywVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                case 51:
                    if (zzR(obj, i9, i7)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 52:
                    if (zzR(obj, i9, i7)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 53:
                    if (zzR(obj, i9, i7)) {
                        long jZzv = zzv(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(jZzv);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 54:
                    if (zzR(obj, i9, i7)) {
                        long jZzv2 = zzv(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(jZzv2);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 55:
                    if (zzR(obj, i9, i7)) {
                        long jZzp = zzp(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(jZzp);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 56:
                    if (zzR(obj, i9, i7)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 57:
                    if (zzR(obj, i9, i7)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 58:
                    if (zzR(obj, i9, i7)) {
                        iZzD4 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD4 + 1;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 59:
                    if (zzR(obj, i9, i7)) {
                        int i34 = i9 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgwj) {
                            iZzD5 = zzgww.zzD(i34);
                            iZzd = ((zzgwj) object2).zzd();
                            iZzD6 = zzgww.zzD(iZzd);
                            iZzh = iZzD5 + iZzD6 + iZzd;
                            i8 += iZzh;
                        } else {
                            iZzD3 = zzgww.zzD(i34);
                            iZzE = zzgww.zzC((String) object2);
                            iZzh = iZzD3 + iZzE;
                            i8 += iZzh;
                        }
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 60:
                    if (zzR(obj, i9, i7)) {
                        iZzh = zzgzx.zzh(i9, unsafe.getObject(obj, j), zzx(i7));
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 61:
                    if (zzR(obj, i9, i7)) {
                        zzgwj zzgwjVar2 = (zzgwj) unsafe.getObject(obj, j);
                        iZzD5 = zzgww.zzD(i9 << 3);
                        iZzd = zzgwjVar2.zzd();
                        iZzD6 = zzgww.zzD(iZzd);
                        iZzh = iZzD5 + iZzD6 + iZzd;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 62:
                    if (zzR(obj, i9, i7)) {
                        int iZzp = zzp(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzD(iZzp);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 63:
                    if (zzR(obj, i9, i7)) {
                        long jZzp2 = zzp(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE(jZzp2);
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 64:
                    if (zzR(obj, i9, i7)) {
                        iZzD2 = zzgww.zzD(i9 << 3);
                        iZzh = iZzD2 + 4;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 65:
                    if (zzR(obj, i9, i7)) {
                        iZzD = zzgww.zzD(i9 << 3);
                        iZzh = iZzD + 8;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 66:
                    if (zzR(obj, i9, i7)) {
                        int iZzp2 = zzp(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzD((iZzp2 >> 31) ^ (iZzp2 + iZzp2));
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 67:
                    if (zzR(obj, i9, i7)) {
                        long jZzv3 = zzv(obj, j);
                        iZzD3 = zzgww.zzD(i9 << 3);
                        iZzE = zzgww.zzE((jZzv3 >> 63) ^ (jZzv3 + jZzv3));
                        iZzh = iZzD3 + iZzE;
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                case 68:
                    if (zzR(obj, i9, i7)) {
                        iZzh = zzgww.zzy(i9, (zzgzc) unsafe.getObject(obj, j), zzx(i7));
                        i8 += iZzh;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
                default:
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    z = false;
                    i4 = 1048575;
                    break;
            }
        }
        int iZza2 = i8 + ((zzgxr) obj).zzt.zza();
        if (!this.zzh) {
            return iZza2;
        }
        zzgxg zzgxgVar = ((zzgxn) obj).zza;
        int iZzc = zzgxgVar.zza.zzc();
        int iZzc2 = 0;
        for (int i35 = 0; i35 < iZzc; i35++) {
            Map.Entry entryZzg = zzgxgVar.zza.zzg(i35);
            iZzc2 += zzgxg.zzc((zzgxf) ((zzgzz) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzgxgVar.zza.zzd()) {
            iZzc2 += zzgxg.zzc((zzgxf) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 < this.zzc.length; i5 += 3) {
            int iZzu = zzu(i5);
            int[] iArr = this.zzc;
            int i6 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i7 = iArr[i5];
            long j = i6;
            int iHashCode = 37;
            switch (iZzt) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzhao.zzb(obj, j));
                    byte[] bArr = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzhao.zzc(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr2 = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr3 = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr4 = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 7:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgye.zza(zzhao.zzz(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iFloatToIntBits = ((String) zzhao.zzh(obj, j)).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 9:
                    i3 = i4 * 53;
                    Object objZzh = zzhao.zzh(obj, j);
                    if (objZzh != null) {
                        iHashCode = objZzh.hashCode();
                    }
                    i4 = i3 + iHashCode;
                    break;
                case 10:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 11:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 12:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 13:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr5 = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = zzhao.zzf(obj, j);
                    byte[] bArr6 = zzgye.zzb;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i3 = i4 * 53;
                    Object objZzh2 = zzhao.zzh(obj, j);
                    if (objZzh2 != null) {
                        iHashCode = objZzh2.hashCode();
                    }
                    i4 = i3 + iHashCode;
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
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 50:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 51:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzgye.zza(zzS(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = ((String) zzhao.zzh(obj, j)).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzgye.zzb;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzhao.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i4 * 53) + ((zzgxr) obj).zzt.hashCode();
        return this.zzh ? (iHashCode2 * 53) + ((zzgxn) obj).zza.zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:398:0x08b9 A[PHI: r7 r8 r9 r10 r14
  0x08b9: PHI (r7v36 int) = (r7v13 int), (r7v15 int), (r7v16 int), (r7v21 int), (r7v26 int), (r7v32 int), (r7v40 int) binds: [B:387:0x086e, B:367:0x0801, B:347:0x079b, B:337:0x076b, B:260:0x0614, B:210:0x0535, B:135:0x0398] A[DONT_GENERATE, DONT_INLINE]
  0x08b9: PHI (r8v98 int) = (r8v50 int), (r8v52 int), (r8v53 int), (r8v63 int), (r8v69 int), (r8v92 int), (r8v101 int) binds: [B:387:0x086e, B:367:0x0801, B:347:0x079b, B:337:0x076b, B:260:0x0614, B:210:0x0535, B:135:0x0398] A[DONT_GENERATE, DONT_INLINE]
  0x08b9: PHI (r9v68 int) = (r9v44 int), (r9v46 int), (r9v47 int), (r9v49 int), (r9v51 int), (r9v66 int), (r9v71 int) binds: [B:387:0x086e, B:367:0x0801, B:347:0x079b, B:337:0x076b, B:260:0x0614, B:210:0x0535, B:135:0x0398] A[DONT_GENERATE, DONT_INLINE]
  0x08b9: PHI (r10v77 int) = (r10v39 int), (r10v39 int), (r10v39 int), (r10v39 int), (r10v66 int), (r10v39 int), (r10v39 int) binds: [B:387:0x086e, B:367:0x0801, B:347:0x079b, B:337:0x076b, B:260:0x0614, B:210:0x0535, B:135:0x0398] A[DONT_GENERATE, DONT_INLINE]
  0x08b9: PHI (r14v57 sun.misc.Unsafe) = 
  (r14v27 sun.misc.Unsafe)
  (r14v29 sun.misc.Unsafe)
  (r14v30 sun.misc.Unsafe)
  (r14v32 sun.misc.Unsafe)
  (r14v35 sun.misc.Unsafe)
  (r14v53 sun.misc.Unsafe)
  (r14v60 sun.misc.Unsafe)
 binds: [B:387:0x086e, B:367:0x0801, B:347:0x079b, B:337:0x076b, B:260:0x0614, B:210:0x0535, B:135:0x0398] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:483:0x0b7c A[PHI: r0 r6 r10 r20 r21 r35
  0x0b7c: PHI (r0v109 int) = 
  (r0v78 int)
  (r0v79 int)
  (r0v80 int)
  (r0v81 int)
  (r0v82 int)
  (r0v83 int)
  (r0v84 int)
  (r0v85 int)
  (r0v88 int)
  (r0v97 int)
  (r0v110 int)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]
  0x0b7c: PHI (r6v26 com.google.android.gms.internal.ads.zzgzf<T>) = 
  (r6v8 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v9 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v10 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v11 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v12 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v13 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v14 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v15 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v16 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v21 com.google.android.gms.internal.ads.zzgzf<T>)
  (r6v27 com.google.android.gms.internal.ads.zzgzf<T>)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]
  0x0b7c: PHI (r10v63 com.google.android.gms.internal.ads.zzgvx) = 
  (r10v40 com.google.android.gms.internal.ads.zzgvx)
  (r10v41 com.google.android.gms.internal.ads.zzgvx)
  (r10v42 com.google.android.gms.internal.ads.zzgvx)
  (r10v43 com.google.android.gms.internal.ads.zzgvx)
  (r10v44 com.google.android.gms.internal.ads.zzgvx)
  (r10v45 com.google.android.gms.internal.ads.zzgvx)
  (r10v46 com.google.android.gms.internal.ads.zzgvx)
  (r10v47 com.google.android.gms.internal.ads.zzgvx)
  (r10v49 com.google.android.gms.internal.ads.zzgvx)
  (r10v56 com.google.android.gms.internal.ads.zzgvx)
  (r10v64 com.google.android.gms.internal.ads.zzgvx)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]
  0x0b7c: PHI (r20v27 sun.misc.Unsafe) = 
  (r20v13 sun.misc.Unsafe)
  (r20v14 sun.misc.Unsafe)
  (r20v15 sun.misc.Unsafe)
  (r20v16 sun.misc.Unsafe)
  (r20v17 sun.misc.Unsafe)
  (r20v18 sun.misc.Unsafe)
  (r20v19 sun.misc.Unsafe)
  (r20v20 sun.misc.Unsafe)
  (r20v21 sun.misc.Unsafe)
  (r20v23 sun.misc.Unsafe)
  (r20v28 sun.misc.Unsafe)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]
  0x0b7c: PHI (r21v19 int) = 
  (r21v5 int)
  (r21v6 int)
  (r21v7 int)
  (r21v8 int)
  (r21v9 int)
  (r21v10 int)
  (r21v11 int)
  (r21v12 int)
  (r21v13 int)
  (r21v15 int)
  (r21v20 int)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]
  0x0b7c: PHI (r35v18 int) = 
  (r35v3 int)
  (r35v4 int)
  (r35v5 int)
  (r35v6 int)
  (r35v7 int)
  (r35v8 int)
  (r35v9 int)
  (r35v10 int)
  (r35v11 int)
  (r35v13 int)
  (r35v19 int)
 binds: [B:481:0x0b65, B:478:0x0b41, B:475:0x0b21, B:472:0x0b01, B:469:0x0ae1, B:466:0x0ac0, B:459:0x0a96, B:445:0x0a57, B:443:0x0a3a, B:439:0x09fd, B:415:0x092a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:485:0x0b7f  */
    /* JADX WARN: Code duplicated, block: B:486:0x0b8e  */
    /* JADX WARN: Code duplicated, block: B:499:0x0bd7  */
    /* JADX WARN: Code duplicated, block: B:550:0x08bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x08cc A[SYNTHETIC] */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzgvx zzgvxVar) throws IOException {
        int i4;
        Unsafe unsafe;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Unsafe unsafe2;
        zzgvx zzgvxVar2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iZzk;
        int i17;
        int i18;
        Unsafe unsafe3;
        int i19;
        int i20;
        int i21;
        int i22;
        int iZzk2;
        int i23;
        int i24;
        zzgvx zzgvxVar3;
        int iZza;
        int i25;
        int i26;
        Unsafe unsafe4;
        int i27;
        int i28;
        int i29;
        Unsafe unsafe5;
        int i30;
        int iZzf;
        int i31;
        Object obj2;
        int i32;
        int iZzj;
        zzgzf<T> zzgzfVar = this;
        Object obj3 = obj;
        i2 = i2;
        i3 = i3;
        zzgvx zzgvxVar4 = zzgvxVar;
        zzD(obj);
        Unsafe unsafe6 = zzb;
        int i33 = -1;
        int iZzg = i;
        int i34 = -1;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 1048575;
        while (true) {
            if (iZzg < i2) {
                int i39 = iZzg + 1;
                int i40 = bArr[iZzg];
                if (i40 < 0) {
                    int iZzi = zzgvy.zzi(i40, bArr, i39, zzgvxVar4);
                    i7 = zzgvxVar4.zza;
                    i39 = iZzi;
                } else {
                    i7 = i40;
                }
                int i41 = i7 >>> 3;
                int iZzs = i41 > i34 ? (i41 < zzgzfVar.zze || i41 > zzgzfVar.zzf) ? -1 : zzgzfVar.zzs(i41, i35 / 3) : zzgzfVar.zzq(i41);
                if (iZzs != i33) {
                    int i42 = i7 & 7;
                    int[] iArr = zzgzfVar.zzc;
                    int i43 = iArr[iZzs + 1];
                    int i44 = i41;
                    int iZzt = zzt(i43);
                    long j = i43 & 1048575;
                    int i45 = i7;
                    if (iZzt <= 17) {
                        int i46 = iArr[iZzs + 2];
                        int i47 = 1 << (i46 >>> 20);
                        int i48 = 1048575;
                        int i49 = i46 & 1048575;
                        if (i49 != i38) {
                            if (i38 != 1048575) {
                                unsafe6.putInt(obj3, i38, i37);
                                i48 = 1048575;
                            }
                            i37 = i49 == i48 ? 0 : unsafe6.getInt(obj3, i49);
                            i10 = i49;
                        } else {
                            i10 = i38;
                        }
                        switch (iZzt) {
                            case 0:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 1) {
                                    iZzg = i39 + 8;
                                    i37 |= i47;
                                    zzhao.zzr(obj3, j, Double.longBitsToDouble(zzgvy.zzn(bArr, i39)));
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 1:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 5) {
                                    iZzg = i39 + 4;
                                    i37 |= i47;
                                    zzhao.zzs(obj3, j, Float.intBitsToFloat(zzgvy.zzb(bArr, i39)));
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 2:
                            case 3:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 0) {
                                    i16 = i37 | i47;
                                    iZzk = zzgvy.zzk(bArr, i39, zzgvxVar4);
                                    unsafe6.putLong(obj, j, zzgvxVar4.zzb);
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i37 = i16;
                                    iZzg = iZzk;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 4:
                            case 11:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 0) {
                                    i37 |= i47;
                                    iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                    unsafe6.putInt(obj3, j, zzgvxVar4.zza);
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 5:
                            case 14:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 1) {
                                    iZzk = i39 + 8;
                                    i16 = i37 | i47;
                                    unsafe6.putLong(obj, j, zzgvy.zzn(bArr, i39));
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i37 = i16;
                                    iZzg = iZzk;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 6:
                            case 13:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 5) {
                                    iZzg = i39 + 4;
                                    i37 |= i47;
                                    unsafe6.putInt(obj3, j, zzgvy.zzb(bArr, i39));
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 7:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 0) {
                                    i37 |= i47;
                                    iZzg = zzgvy.zzk(bArr, i39, zzgvxVar4);
                                    zzhao.zzp(obj3, j, zzgvxVar4.zzb != 0);
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 8:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 2) {
                                    if (zzM(i43)) {
                                        iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                        int i50 = zzgvxVar4.zza;
                                        if (i50 < 0) {
                                            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i51 = i37 | i47;
                                        if (i50 == 0) {
                                            zzgvxVar4.zzc = "";
                                        } else {
                                            zzgvxVar4.zzc = zzhat.zzh(bArr, iZzg, i50);
                                            iZzg += i50;
                                        }
                                        i37 = i51;
                                    } else {
                                        int i52 = i37 | i47;
                                        int iZzh = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                        int i53 = zzgvxVar4.zza;
                                        if (i53 < 0) {
                                            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        if (i53 == 0) {
                                            zzgvxVar4.zzc = "";
                                        } else {
                                            zzgvxVar4.zzc = new String(bArr, iZzh, i53, zzgye.zza);
                                            iZzh += i53;
                                        }
                                        i37 = i52;
                                        iZzg = iZzh;
                                    }
                                    unsafe6.putObject(obj3, j, zzgvxVar4.zzc);
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 9:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 2) {
                                    Object objZzA = zzgzfVar.zzA(obj3, i13);
                                    iZzg = zzgvy.zzm(objZzA, zzgzfVar.zzx(i13), bArr, i39, i2, zzgvxVar);
                                    zzgzfVar.zzJ(obj3, i13, objZzA);
                                    i2 = i2;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i37 |= i47;
                                    i38 = i10;
                                    i33 = -1;
                                    i3 = i3;
                                } else {
                                    i37 = i37;
                                    i17 = i15;
                                    i44 = i14;
                                    i18 = i13;
                                    i4 = i3;
                                    i9 = i37;
                                    i12 = i18;
                                    i6 = i17;
                                    i8 = i39;
                                    zzgvxVar2 = zzgvxVar4;
                                    i11 = i44;
                                    unsafe2 = unsafe6;
                                }
                                break;
                            case 10:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 2) {
                                    i37 |= i47;
                                    iZzg = zzgvy.zza(bArr, i39, zzgvxVar4);
                                    unsafe6.putObject(obj3, j, zzgvxVar4.zzc);
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i37 = i37;
                                i17 = i15;
                                i44 = i14;
                                i18 = i13;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 12:
                                i13 = iZzs;
                                i14 = i44;
                                if (i42 == 0) {
                                    iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                    int i54 = zzgvxVar4.zza;
                                    zzgxx zzgxxVarZzw = zzgzfVar.zzw(i13);
                                    if ((i43 & Integer.MIN_VALUE) == 0 || zzgxxVarZzw == null || zzgxxVarZzw.zza(i54)) {
                                        i15 = i45;
                                        i37 |= i47;
                                        unsafe6.putInt(obj3, j, i54);
                                    } else {
                                        i15 = i45;
                                        zzd(obj).zzj(i15, Long.valueOf(i54));
                                    }
                                    i2 = i2;
                                    i3 = i3;
                                    i36 = i15;
                                    i34 = i14;
                                    i35 = i13;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i44 = i14;
                                i18 = i13;
                                i17 = i45;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 15:
                                i13 = iZzs;
                                i14 = i44;
                                if (i42 == 0) {
                                    i37 |= i47;
                                    iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                    unsafe6.putInt(obj3, j, zzgwp.zzD(zzgvxVar4.zza));
                                    i34 = i14;
                                    i35 = i13;
                                    i36 = i45;
                                    i38 = i10;
                                    i33 = -1;
                                }
                                i44 = i14;
                                i18 = i13;
                                i17 = i45;
                                i4 = i3;
                                i9 = i37;
                                i12 = i18;
                                i6 = i17;
                                i8 = i39;
                                zzgvxVar2 = zzgvxVar4;
                                i11 = i44;
                                unsafe2 = unsafe6;
                                break;
                            case 16:
                                if (i42 == 0) {
                                    int i55 = i37 | i47;
                                    int iZzk3 = zzgvy.zzk(bArr, i39, zzgvxVar4);
                                    i14 = i44;
                                    i13 = iZzs;
                                    unsafe6.putLong(obj, j, zzgwp.zzF(zzgvxVar4.zzb));
                                    iZzg = iZzk3;
                                    i37 = i55;
                                    i34 = i14;
                                    i35 = i13;
                                    i36 = i45;
                                    i38 = i10;
                                    i33 = -1;
                                } else {
                                    i18 = iZzs;
                                    i17 = i45;
                                    i4 = i3;
                                    i9 = i37;
                                    i12 = i18;
                                    i6 = i17;
                                    i8 = i39;
                                    zzgvxVar2 = zzgvxVar4;
                                    i11 = i44;
                                    unsafe2 = unsafe6;
                                }
                                break;
                            default:
                                i13 = iZzs;
                                i14 = i44;
                                i15 = i45;
                                if (i42 == 3) {
                                    int i56 = i37 | i47;
                                    Object objZzA2 = zzgzfVar.zzA(obj3, i13);
                                    int iZzl = zzgvy.zzl(objZzA2, zzgzfVar.zzx(i13), bArr, i39, i2, (i14 << 3) | 4, zzgvxVar);
                                    zzgzfVar.zzJ(obj3, i13, objZzA2);
                                    i3 = i3;
                                    zzgvxVar4 = zzgvxVar4;
                                    i2 = i2;
                                    unsafe6 = unsafe6;
                                    iZzg = iZzl;
                                    i38 = i10;
                                    i33 = -1;
                                    i37 = i56;
                                    i36 = i15;
                                    i35 = i13;
                                    i34 = i14;
                                } else {
                                    i37 = i37;
                                    i17 = i15;
                                    i44 = i14;
                                    i18 = i13;
                                    i4 = i3;
                                    i9 = i37;
                                    i12 = i18;
                                    i6 = i17;
                                    i8 = i39;
                                    zzgvxVar2 = zzgvxVar4;
                                    i11 = i44;
                                    unsafe2 = unsafe6;
                                }
                                break;
                        }
                    } else {
                        i9 = i37;
                        i10 = i38;
                        Unsafe unsafe7 = unsafe6;
                        i6 = i45;
                        int i57 = i2;
                        if (iZzt != 27) {
                            zzgvxVar4 = zzgvxVar;
                            unsafe3 = unsafe7;
                            i19 = iZzs;
                            if (iZzt <= 49) {
                                long j2 = i43;
                                Unsafe unsafe8 = zzb;
                                zzgyd zzgydVarZzf = (zzgyd) unsafe8.getObject(obj3, j);
                                if (!zzgydVarZzf.zzc()) {
                                    int size = zzgydVarZzf.size();
                                    zzgydVarZzf = zzgydVarZzf.zzf(size + size);
                                    unsafe8.putObject(obj3, j, zzgydVarZzf);
                                }
                                zzgyd zzgydVar = zzgydVarZzf;
                                switch (iZzt) {
                                    case 18:
                                    case 35:
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (i42 == 2) {
                                            int i58 = zzgvy.zza;
                                            zzgwy zzgwyVar = (zzgwy) zzgydVar;
                                            iZzg = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i59 = zzgvxVar4.zza;
                                            int i60 = iZzg + i59;
                                            if (i60 > bArr.length) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            zzgwyVar.zzi(zzgwyVar.size() + (i59 / 8));
                                            while (iZzg < i60) {
                                                zzgwyVar.zzh(Double.longBitsToDouble(zzgvy.zzn(bArr, iZzg)));
                                                iZzg += 8;
                                            }
                                            if (iZzg != i60) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i42 == 1) {
                                            i28 = i25 + 8;
                                            int i61 = zzgvy.zza;
                                            zzgwy zzgwyVar2 = (zzgwy) zzgydVar;
                                            zzgwyVar2.zzh(Double.longBitsToDouble(zzgvy.zzn(bArr, i25)));
                                            while (i28 < i26) {
                                                int iZzh2 = zzgvy.zzh(bArr, i28, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    zzgwyVar2.zzh(Double.longBitsToDouble(zzgvy.zzn(bArr, iZzh2)));
                                                    i28 = iZzh2 + 8;
                                                } else {
                                                    iZzg = i28;
                                                }
                                            }
                                            iZzg = i28;
                                        } else {
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (i42 == 2) {
                                            int i62 = zzgvy.zza;
                                            zzgxi zzgxiVar = (zzgxi) zzgydVar;
                                            iZzg = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i63 = zzgvxVar4.zza;
                                            int i64 = iZzg + i63;
                                            if (i64 > bArr.length) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            zzgxiVar.zzi(zzgxiVar.size() + (i63 / 4));
                                            while (iZzg < i64) {
                                                zzgxiVar.zzh(Float.intBitsToFloat(zzgvy.zzb(bArr, iZzg)));
                                                iZzg += 4;
                                            }
                                            if (iZzg != i64) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i42 == 5) {
                                            i28 = i25 + 4;
                                            int i65 = zzgvy.zza;
                                            zzgxi zzgxiVar2 = (zzgxi) zzgydVar;
                                            zzgxiVar2.zzh(Float.intBitsToFloat(zzgvy.zzb(bArr, i25)));
                                            while (i28 < i26) {
                                                int iZzh3 = zzgvy.zzh(bArr, i28, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    zzgxiVar2.zzh(Float.intBitsToFloat(zzgvy.zzb(bArr, iZzh3)));
                                                    i28 = iZzh3 + 4;
                                                } else {
                                                    iZzg = i28;
                                                }
                                            }
                                            iZzg = i28;
                                        } else {
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (i42 == 2) {
                                            int i66 = zzgvy.zza;
                                            zzgyr zzgyrVar = (zzgyr) zzgydVar;
                                            iZzg = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i67 = zzgvxVar4.zza + iZzg;
                                            while (iZzg < i67) {
                                                iZzg = zzgvy.zzk(bArr, iZzg, zzgvxVar4);
                                                zzgyrVar.zzg(zzgvxVar4.zzb);
                                            }
                                            if (iZzg != i67) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i42 == 0) {
                                            int i68 = zzgvy.zza;
                                            zzgyr zzgyrVar2 = (zzgyr) zzgydVar;
                                            iZzg = zzgvy.zzk(bArr, i25, zzgvxVar4);
                                            zzgyrVar2.zzg(zzgvxVar4.zzb);
                                            while (iZzg < i26) {
                                                int iZzh4 = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    iZzg = zzgvy.zzk(bArr, iZzh4, zzgvxVar4);
                                                    zzgyrVar2.zzg(zzgvxVar4.zzb);
                                                }
                                            }
                                        } else {
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i25 = i39;
                                        i29 = i57;
                                        unsafe5 = unsafe3;
                                        i30 = i44;
                                        if (i42 == 2) {
                                            iZzf = zzgvy.zzf(bArr, i25, zzgydVar, zzgvxVar4);
                                            i26 = i29;
                                            iZzg = iZzf;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                        } else if (i42 == 0) {
                                            i26 = i29;
                                            i27 = i30;
                                            unsafe4 = unsafe5;
                                            iZzg = zzgvy.zzj(i6, bArr, i25, i2, zzgydVar, zzgvxVar);
                                        } else {
                                            i26 = i29;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        i25 = i39;
                                        i29 = i57;
                                        unsafe5 = unsafe3;
                                        i30 = i44;
                                        if (i42 != 2) {
                                            if (i42 == 1) {
                                                i31 = i25 + 8;
                                                int i69 = zzgvy.zza;
                                                zzgyr zzgyrVar3 = (zzgyr) zzgydVar;
                                                zzgyrVar3.zzg(zzgvy.zzn(bArr, i25));
                                                while (i31 < i29) {
                                                    int iZzh5 = zzgvy.zzh(bArr, i31, zzgvxVar4);
                                                    if (i6 != zzgvxVar4.zza) {
                                                        i26 = i29;
                                                        iZzg = i31;
                                                        unsafe4 = unsafe5;
                                                        i27 = i30;
                                                        if (iZzg != i25) {
                                                            i6 = i6;
                                                            zzgvxVar4 = zzgvxVar4;
                                                            i19 = i19;
                                                            obj3 = obj;
                                                            i3 = i3;
                                                            i34 = i27;
                                                            i35 = i19;
                                                            i36 = i6;
                                                            unsafe6 = unsafe4;
                                                            i37 = i9;
                                                            i38 = i10;
                                                            i33 = -1;
                                                            i2 = i26;
                                                        } else {
                                                            i6 = i6;
                                                            zzgvxVar4 = zzgvxVar4;
                                                            i19 = i19;
                                                            obj3 = obj;
                                                            i8 = iZzg;
                                                            i11 = i27;
                                                            i12 = i19;
                                                            zzgvxVar2 = zzgvxVar4;
                                                            unsafe2 = unsafe4;
                                                            i4 = i3;
                                                        }
                                                    } else {
                                                        zzgyrVar3.zzg(zzgvy.zzn(bArr, iZzh5));
                                                        i31 = iZzh5 + 8;
                                                    }
                                                    break;
                                                }
                                                i26 = i29;
                                                iZzg = i31;
                                                unsafe4 = unsafe5;
                                                i27 = i30;
                                                if (iZzg != i25) {
                                                    i6 = i6;
                                                    zzgvxVar4 = zzgvxVar4;
                                                    i19 = i19;
                                                    obj3 = obj;
                                                    i3 = i3;
                                                    i34 = i27;
                                                    i35 = i19;
                                                    i36 = i6;
                                                    unsafe6 = unsafe4;
                                                    i37 = i9;
                                                    i38 = i10;
                                                    i33 = -1;
                                                    i2 = i26;
                                                } else {
                                                    i6 = i6;
                                                    zzgvxVar4 = zzgvxVar4;
                                                    i19 = i19;
                                                    obj3 = obj;
                                                    i8 = iZzg;
                                                    i11 = i27;
                                                    i12 = i19;
                                                    zzgvxVar2 = zzgvxVar4;
                                                    unsafe2 = unsafe4;
                                                    i4 = i3;
                                                }
                                            }
                                            i26 = i29;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                            break;
                                        } else {
                                            int i70 = zzgvy.zza;
                                            zzgyr zzgyrVar4 = (zzgyr) zzgydVar;
                                            iZzf = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i71 = zzgvxVar4.zza;
                                            int i72 = iZzf + i71;
                                            if (i72 > bArr.length) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            zzgyrVar4.zzi(zzgyrVar4.size() + (i71 / 8));
                                            while (iZzf < i72) {
                                                zzgyrVar4.zzg(zzgvy.zzn(bArr, iZzf));
                                                iZzf += 8;
                                            }
                                            if (iZzf != i72) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i26 = i29;
                                            iZzg = iZzf;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i25 = i39;
                                        i29 = i57;
                                        unsafe5 = unsafe3;
                                        i30 = i44;
                                        if (i42 != 2) {
                                            if (i42 == 5) {
                                                i31 = i25 + 4;
                                                int i73 = zzgvy.zza;
                                                zzgxs zzgxsVar = (zzgxs) zzgydVar;
                                                zzgxsVar.zzi(zzgvy.zzb(bArr, i25));
                                                while (i31 < i29) {
                                                    int iZzh6 = zzgvy.zzh(bArr, i31, zzgvxVar4);
                                                    if (i6 != zzgvxVar4.zza) {
                                                        i26 = i29;
                                                        iZzg = i31;
                                                        unsafe4 = unsafe5;
                                                        i27 = i30;
                                                        if (iZzg != i25) {
                                                            i6 = i6;
                                                            zzgvxVar4 = zzgvxVar4;
                                                            i19 = i19;
                                                            obj3 = obj;
                                                            i3 = i3;
                                                            i34 = i27;
                                                            i35 = i19;
                                                            i36 = i6;
                                                            unsafe6 = unsafe4;
                                                            i37 = i9;
                                                            i38 = i10;
                                                            i33 = -1;
                                                            i2 = i26;
                                                        } else {
                                                            i6 = i6;
                                                            zzgvxVar4 = zzgvxVar4;
                                                            i19 = i19;
                                                            obj3 = obj;
                                                            i8 = iZzg;
                                                            i11 = i27;
                                                            i12 = i19;
                                                            zzgvxVar2 = zzgvxVar4;
                                                            unsafe2 = unsafe4;
                                                            i4 = i3;
                                                        }
                                                    } else {
                                                        zzgxsVar.zzi(zzgvy.zzb(bArr, iZzh6));
                                                        i31 = iZzh6 + 4;
                                                    }
                                                    break;
                                                }
                                                i26 = i29;
                                                iZzg = i31;
                                                unsafe4 = unsafe5;
                                                i27 = i30;
                                                if (iZzg != i25) {
                                                    i6 = i6;
                                                    zzgvxVar4 = zzgvxVar4;
                                                    i19 = i19;
                                                    obj3 = obj;
                                                    i3 = i3;
                                                    i34 = i27;
                                                    i35 = i19;
                                                    i36 = i6;
                                                    unsafe6 = unsafe4;
                                                    i37 = i9;
                                                    i38 = i10;
                                                    i33 = -1;
                                                    i2 = i26;
                                                } else {
                                                    i6 = i6;
                                                    zzgvxVar4 = zzgvxVar4;
                                                    i19 = i19;
                                                    obj3 = obj;
                                                    i8 = iZzg;
                                                    i11 = i27;
                                                    i12 = i19;
                                                    zzgvxVar2 = zzgvxVar4;
                                                    unsafe2 = unsafe4;
                                                    i4 = i3;
                                                }
                                            }
                                            i26 = i29;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                            break;
                                        } else {
                                            int i74 = zzgvy.zza;
                                            zzgxs zzgxsVar2 = (zzgxs) zzgydVar;
                                            iZzf = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i75 = zzgvxVar4.zza;
                                            int i76 = iZzf + i75;
                                            if (i76 > bArr.length) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            zzgxsVar2.zzj(zzgxsVar2.size() + (i75 / 4));
                                            while (iZzf < i76) {
                                                zzgxsVar2.zzi(zzgvy.zzb(bArr, iZzf));
                                                iZzf += 4;
                                            }
                                            if (iZzf != i76) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i26 = i29;
                                            iZzg = iZzf;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i25 = i39;
                                        i29 = i57;
                                        unsafe5 = unsafe3;
                                        i30 = i44;
                                        if (i42 != 2) {
                                            if (i42 == 0) {
                                                int i77 = zzgvy.zza;
                                                zzgvz zzgvzVar = (zzgvz) zzgydVar;
                                                iZzf = zzgvy.zzk(bArr, i25, zzgvxVar4);
                                                zzgvzVar.zzg(zzgvxVar4.zzb != 0);
                                                while (iZzf < i29) {
                                                    int iZzh7 = zzgvy.zzh(bArr, iZzf, zzgvxVar4);
                                                    if (i6 == zzgvxVar4.zza) {
                                                        iZzf = zzgvy.zzk(bArr, iZzh7, zzgvxVar4);
                                                        zzgvzVar.zzg(zzgvxVar4.zzb != 0);
                                                    }
                                                }
                                            }
                                            i26 = i29;
                                            unsafe4 = unsafe5;
                                            i27 = i30;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        } else {
                                            int i78 = zzgvy.zza;
                                            zzgvz zzgvzVar2 = (zzgvz) zzgydVar;
                                            iZzf = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i79 = zzgvxVar4.zza + iZzf;
                                            while (iZzf < i79) {
                                                iZzf = zzgvy.zzk(bArr, iZzf, zzgvxVar4);
                                                zzgvzVar2.zzg(zzgvxVar4.zzb != 0);
                                            }
                                            if (iZzf != i79) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i26 = i29;
                                        iZzg = iZzf;
                                        unsafe4 = unsafe5;
                                        i27 = i30;
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 26:
                                        i25 = i39;
                                        i30 = i44;
                                        if (i42 != 2) {
                                            i26 = i57;
                                            i27 = i30;
                                            unsafe4 = unsafe3;
                                            i19 = i19;
                                            iZzg = i25;
                                        } else if ((j2 & 536870912) == 0) {
                                            int iZzh8 = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i80 = zzgvxVar4.zza;
                                            if (i80 < 0) {
                                                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i80 == 0) {
                                                obj2 = "";
                                                zzgydVar.add(obj2);
                                            } else {
                                                obj2 = "";
                                                zzgydVar.add(new String(bArr, iZzh8, i80, zzgye.zza));
                                                iZzh8 += i80;
                                            }
                                            while (iZzh8 < i57) {
                                                int iZzh9 = zzgvy.zzh(bArr, iZzh8, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    iZzh8 = zzgvy.zzh(bArr, iZzh9, zzgvxVar4);
                                                    int i81 = zzgvxVar4.zza;
                                                    if (i81 < 0) {
                                                        throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i81 == 0) {
                                                        zzgydVar.add(obj2);
                                                    } else {
                                                        zzgydVar.add(new String(bArr, iZzh8, i81, zzgye.zza));
                                                        iZzh8 += i81;
                                                    }
                                                } else {
                                                    i26 = i57;
                                                    iZzg = iZzh8;
                                                    i27 = i30;
                                                    unsafe4 = unsafe3;
                                                    i19 = i19;
                                                }
                                            }
                                            i26 = i57;
                                            iZzg = iZzh8;
                                            i27 = i30;
                                            unsafe4 = unsafe3;
                                            i19 = i19;
                                        } else {
                                            int iZzh10 = zzgvy.zzh(bArr, i25, zzgvxVar4);
                                            int i82 = zzgvxVar4.zza;
                                            if (i82 < 0) {
                                                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i82 == 0) {
                                                zzgydVar.add("");
                                            } else {
                                                int i83 = iZzh10 + i82;
                                                if (!zzhat.zzi(bArr, iZzh10, i83)) {
                                                    throw new zzgyg("Protocol message had invalid UTF-8.");
                                                }
                                                zzgydVar.add(new String(bArr, iZzh10, i82, zzgye.zza));
                                                iZzh10 = i83;
                                            }
                                            while (iZzh10 < i57) {
                                                int iZzh11 = zzgvy.zzh(bArr, iZzh10, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    iZzh10 = zzgvy.zzh(bArr, iZzh11, zzgvxVar4);
                                                    int i84 = zzgvxVar4.zza;
                                                    if (i84 < 0) {
                                                        throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i84 == 0) {
                                                        zzgydVar.add("");
                                                    } else {
                                                        int i85 = iZzh10 + i84;
                                                        if (!zzhat.zzi(bArr, iZzh10, i85)) {
                                                            throw new zzgyg("Protocol message had invalid UTF-8.");
                                                        }
                                                        zzgydVar.add(new String(bArr, iZzh10, i84, zzgye.zza));
                                                        iZzh10 = i85;
                                                    }
                                                } else {
                                                    i26 = i57;
                                                    iZzg = iZzh10;
                                                    unsafe4 = unsafe3;
                                                    i19 = i19;
                                                    i27 = i30;
                                                }
                                            }
                                            i26 = i57;
                                            iZzg = iZzh10;
                                            unsafe4 = unsafe3;
                                            i19 = i19;
                                            i27 = i30;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 27:
                                        i32 = i39;
                                        i57 = i57;
                                        unsafe3 = unsafe3;
                                        if (i42 == 2) {
                                            i25 = i32;
                                            int iZze = zzgvy.zze(zzgzfVar.zzx(i19), i6, bArr, i32, i2, zzgydVar, zzgvxVar);
                                            i27 = i44;
                                            unsafe4 = unsafe3;
                                            i26 = i57;
                                            iZzg = iZze;
                                        } else {
                                            i25 = i32;
                                            unsafe4 = unsafe3;
                                            i26 = i57;
                                            i27 = i44;
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 28:
                                        i32 = i39;
                                        i57 = i57;
                                        unsafe3 = unsafe3;
                                        if (i42 == 2) {
                                            iZzg = zzgvy.zzh(bArr, i32, zzgvxVar4);
                                            int i86 = zzgvxVar4.zza;
                                            if (i86 < 0) {
                                                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i86 > bArr.length - iZzg) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i86 == 0) {
                                                zzgydVar.add(zzgwj.zzb);
                                            } else {
                                                zzgydVar.add(zzgwj.zzv(bArr, iZzg, i86));
                                                iZzg += i86;
                                            }
                                            while (iZzg < i57) {
                                                int iZzh12 = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                if (i6 != zzgvxVar4.zza) {
                                                    i25 = i32;
                                                    unsafe4 = unsafe3;
                                                    i26 = i57;
                                                    i27 = i44;
                                                    if (iZzg != i25) {
                                                        i6 = i6;
                                                        zzgvxVar4 = zzgvxVar4;
                                                        i19 = i19;
                                                        obj3 = obj;
                                                        i3 = i3;
                                                        i34 = i27;
                                                        i35 = i19;
                                                        i36 = i6;
                                                        unsafe6 = unsafe4;
                                                        i37 = i9;
                                                        i38 = i10;
                                                        i33 = -1;
                                                        i2 = i26;
                                                    } else {
                                                        i6 = i6;
                                                        zzgvxVar4 = zzgvxVar4;
                                                        i19 = i19;
                                                        obj3 = obj;
                                                        i8 = iZzg;
                                                        i11 = i27;
                                                        i12 = i19;
                                                        zzgvxVar2 = zzgvxVar4;
                                                        unsafe2 = unsafe4;
                                                        i4 = i3;
                                                    }
                                                    break;
                                                } else {
                                                    iZzg = zzgvy.zzh(bArr, iZzh12, zzgvxVar4);
                                                    int i87 = zzgvxVar4.zza;
                                                    if (i87 < 0) {
                                                        throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i87 > bArr.length - iZzg) {
                                                        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i87 == 0) {
                                                        zzgydVar.add(zzgwj.zzb);
                                                    } else {
                                                        zzgydVar.add(zzgwj.zzv(bArr, iZzg, i87));
                                                        iZzg += i87;
                                                    }
                                                }
                                            }
                                            i25 = i32;
                                            unsafe4 = unsafe3;
                                            i26 = i57;
                                            i27 = i44;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        }
                                        i25 = i32;
                                        unsafe4 = unsafe3;
                                        i26 = i57;
                                        i27 = i44;
                                        iZzg = i25;
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        if (i42 != 2) {
                                            if (i42 == 0) {
                                                iZzj = zzgvy.zzj(i6, bArr, i39, i2, zzgydVar, zzgvxVar);
                                            }
                                            i25 = i39;
                                            i26 = i57;
                                            unsafe4 = unsafe3;
                                            i27 = i44;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        } else {
                                            iZzj = zzgvy.zzf(bArr, i39, zzgydVar, zzgvxVar4);
                                        }
                                        zzgzx.zzn(obj, i44, zzgydVar, zzgzfVar.zzw(i19), null, zzgzfVar.zzm);
                                        i25 = i39;
                                        iZzg = iZzj;
                                        unsafe4 = unsafe3;
                                        i26 = i57;
                                        i27 = i44;
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        if (i42 != 2) {
                                            if (i42 == 0) {
                                                int i88 = zzgvy.zza;
                                                zzgxs zzgxsVar3 = (zzgxs) zzgydVar;
                                                iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                                zzgxsVar3.zzi(zzgwp.zzD(zzgvxVar4.zza));
                                                while (iZzg < i57) {
                                                    int iZzh13 = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                    if (i6 == zzgvxVar4.zza) {
                                                        iZzg = zzgvy.zzh(bArr, iZzh13, zzgvxVar4);
                                                        zzgxsVar3.zzi(zzgwp.zzD(zzgvxVar4.zza));
                                                    }
                                                }
                                            }
                                            i25 = i39;
                                            i26 = i57;
                                            unsafe4 = unsafe3;
                                            i27 = i44;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        } else {
                                            int i89 = zzgvy.zza;
                                            zzgxs zzgxsVar4 = (zzgxs) zzgydVar;
                                            iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                            int i90 = zzgvxVar4.zza + iZzg;
                                            while (iZzg < i90) {
                                                iZzg = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                zzgxsVar4.zzi(zzgwp.zzD(zzgvxVar4.zza));
                                            }
                                            if (iZzg != i90) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        if (i42 != 2) {
                                            if (i42 == 0) {
                                                int i91 = zzgvy.zza;
                                                zzgyr zzgyrVar5 = (zzgyr) zzgydVar;
                                                iZzg = zzgvy.zzk(bArr, i39, zzgvxVar4);
                                                zzgyrVar5.zzg(zzgwp.zzF(zzgvxVar4.zzb));
                                                while (iZzg < i57) {
                                                    int iZzh14 = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                    if (i6 == zzgvxVar4.zza) {
                                                        iZzg = zzgvy.zzk(bArr, iZzh14, zzgvxVar4);
                                                        zzgyrVar5.zzg(zzgwp.zzF(zzgvxVar4.zzb));
                                                    }
                                                }
                                            }
                                            i25 = i39;
                                            i26 = i57;
                                            unsafe4 = unsafe3;
                                            i27 = i44;
                                            iZzg = i25;
                                            if (iZzg != i25) {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i3 = i3;
                                                i34 = i27;
                                                i35 = i19;
                                                i36 = i6;
                                                unsafe6 = unsafe4;
                                                i37 = i9;
                                                i38 = i10;
                                                i33 = -1;
                                                i2 = i26;
                                            } else {
                                                i6 = i6;
                                                zzgvxVar4 = zzgvxVar4;
                                                i19 = i19;
                                                obj3 = obj;
                                                i8 = iZzg;
                                                i11 = i27;
                                                i12 = i19;
                                                zzgvxVar2 = zzgvxVar4;
                                                unsafe2 = unsafe4;
                                                i4 = i3;
                                            }
                                        } else {
                                            int i92 = zzgvy.zza;
                                            zzgyr zzgyrVar6 = (zzgyr) zzgydVar;
                                            iZzg = zzgvy.zzh(bArr, i39, zzgvxVar4);
                                            int i93 = zzgvxVar4.zza + iZzg;
                                            while (iZzg < i93) {
                                                iZzg = zzgvy.zzk(bArr, iZzg, zzgvxVar4);
                                                zzgyrVar6.zzg(zzgwp.zzF(zzgvxVar4.zzb));
                                            }
                                            if (iZzg != i93) {
                                                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                    default:
                                        i25 = i39;
                                        i26 = i57;
                                        unsafe4 = unsafe3;
                                        i27 = i44;
                                        if (i42 == 3) {
                                            int i94 = (i6 & (-8)) | 4;
                                            zzgzv zzgzvVarZzx = zzgzfVar.zzx(i19);
                                            iZzg = zzgvy.zzc(zzgzvVarZzx, bArr, i25, i2, i94, zzgvxVar);
                                            zzgydVar.add(zzgvxVar4.zzc);
                                            while (iZzg < i26) {
                                                int iZzh15 = zzgvy.zzh(bArr, iZzg, zzgvxVar4);
                                                if (i6 == zzgvxVar4.zza) {
                                                    iZzg = zzgvy.zzc(zzgzvVarZzx, bArr, iZzh15, i2, i94, zzgvxVar);
                                                    zzgydVar.add(zzgvxVar4.zzc);
                                                }
                                            }
                                        } else {
                                            iZzg = i25;
                                        }
                                        if (iZzg != i25) {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i3 = i3;
                                            i34 = i27;
                                            i35 = i19;
                                            i36 = i6;
                                            unsafe6 = unsafe4;
                                            i37 = i9;
                                            i38 = i10;
                                            i33 = -1;
                                            i2 = i26;
                                        } else {
                                            i6 = i6;
                                            zzgvxVar4 = zzgvxVar4;
                                            i19 = i19;
                                            obj3 = obj;
                                            i8 = iZzg;
                                            i11 = i27;
                                            i12 = i19;
                                            zzgvxVar2 = zzgvxVar4;
                                            unsafe2 = unsafe4;
                                            i4 = i3;
                                        }
                                        break;
                                }
                            } else {
                                int i95 = i39;
                                i11 = i44;
                                if (iZzt != 50) {
                                    obj3 = obj;
                                    Unsafe unsafe9 = zzb;
                                    long j3 = iArr[i19 + 2] & 1048575;
                                    switch (iZzt) {
                                        case 51:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 1) {
                                                iZzk2 = i21 + 8;
                                                unsafe9.putObject(obj3, j, Double.valueOf(Double.longBitsToDouble(zzgvy.zzn(bArr, i21))));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 52:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 5) {
                                                iZzk2 = i21 + 4;
                                                unsafe9.putObject(obj3, j, Float.valueOf(Float.intBitsToFloat(zzgvy.zzb(bArr, i21))));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 0) {
                                                iZzk2 = zzgvy.zzk(bArr, i21, zzgvxVar2);
                                                unsafe9.putObject(obj3, j, Long.valueOf(zzgvxVar2.zzb));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 0) {
                                                iZzk2 = zzgvy.zzh(bArr, i21, zzgvxVar2);
                                                unsafe9.putObject(obj3, j, Integer.valueOf(zzgvxVar2.zza));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 1) {
                                                iZzk2 = i21 + 8;
                                                unsafe9.putObject(obj3, j, Long.valueOf(zzgvy.zzn(bArr, i21)));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 5) {
                                                iZzk2 = i21 + 4;
                                                unsafe9.putObject(obj3, j, Integer.valueOf(zzgvy.zzb(bArr, i21)));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 58:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 0) {
                                                iZzk2 = zzgvy.zzk(bArr, i21, zzgvxVar2);
                                                unsafe9.putObject(obj3, j, Boolean.valueOf(zzgvxVar2.zzb != 0));
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 59:
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            zzgzfVar = this;
                                            if (i42 == 2) {
                                                iZzk2 = zzgvy.zzh(bArr, i21, zzgvxVar2);
                                                int i96 = zzgvxVar2.zza;
                                                if (i96 == 0) {
                                                    unsafe9.putObject(obj3, j, "");
                                                } else {
                                                    int i97 = iZzk2 + i96;
                                                    if ((i43 & DriveFile.MODE_WRITE_ONLY) != 0 && !zzhat.zzi(bArr, iZzk2, i97)) {
                                                        throw new zzgyg("Protocol message had invalid UTF-8.");
                                                    }
                                                    unsafe9.putObject(obj3, j, new String(bArr, iZzk2, i96, zzgye.zza));
                                                    iZzk2 = i97;
                                                }
                                                unsafe9.putInt(obj3, j3, i11);
                                            } else {
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 60:
                                            zzgzfVar = this;
                                            if (i42 == 2) {
                                                Object objZzB = zzgzfVar.zzB(obj3, i11, i19);
                                                zzgzv zzgzvVarZzx2 = zzgzfVar.zzx(i19);
                                                i45 = i6;
                                                zzgvxVar2 = zzgvxVar;
                                                int iZzm = zzgvy.zzm(objZzB, zzgzvVarZzx2, bArr, i95, i2, zzgvxVar);
                                                zzgzfVar.zzK(obj3, i11, i19, objZzB);
                                                iZzk2 = iZzm;
                                                i22 = i19;
                                                unsafe2 = unsafe3;
                                                i21 = i95;
                                            } else {
                                                i45 = i6;
                                                zzgvxVar2 = zzgvxVar;
                                                i22 = i19;
                                                i21 = i95;
                                                unsafe2 = unsafe3;
                                                iZzk2 = i21;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 61:
                                            i23 = i19;
                                            i24 = i6;
                                            zzgzfVar = this;
                                            zzgvxVar3 = zzgvxVar;
                                            if (i42 == 2) {
                                                iZza = zzgvy.zza(bArr, i95, zzgvxVar3);
                                                unsafe9.putObject(obj3, j, zzgvxVar3.zzc);
                                                unsafe9.putInt(obj3, j3, i11);
                                                iZzk2 = iZza;
                                                i22 = i23;
                                                i21 = i95;
                                                unsafe2 = unsafe3;
                                                i45 = i24;
                                                zzgvxVar2 = zzgvxVar3;
                                                if (iZzk2 == i21) {
                                                    i11 = i11;
                                                    i35 = i22;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzg = iZzk2;
                                                    i34 = i11;
                                                    zzgvxVar4 = zzgvxVar2;
                                                    i37 = i9;
                                                    unsafe6 = unsafe2;
                                                    i36 = i45;
                                                    i38 = i10;
                                                    i33 = -1;
                                                } else {
                                                    i11 = i11;
                                                    i12 = i22;
                                                    i4 = i3;
                                                    i8 = iZzk2;
                                                    i6 = i45;
                                                }
                                            }
                                            i22 = i23;
                                            i21 = i95;
                                            unsafe2 = unsafe3;
                                            i45 = i24;
                                            zzgvxVar2 = zzgvxVar3;
                                            iZzk2 = i21;
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 63:
                                            i23 = i19;
                                            i24 = i6;
                                            zzgzfVar = this;
                                            zzgvxVar3 = zzgvxVar;
                                            if (i42 == 0) {
                                                iZza = zzgvy.zzh(bArr, i95, zzgvxVar3);
                                                int i98 = zzgvxVar3.zza;
                                                zzgxx zzgxxVarZzw2 = zzgzfVar.zzw(i23);
                                                if (zzgxxVarZzw2 == null || zzgxxVarZzw2.zza(i98)) {
                                                    unsafe9.putObject(obj3, j, Integer.valueOf(i98));
                                                    unsafe9.putInt(obj3, j3, i11);
                                                } else {
                                                    zzd(obj).zzj(i24, Long.valueOf(i98));
                                                }
                                                iZzk2 = iZza;
                                                i22 = i23;
                                                i21 = i95;
                                                unsafe2 = unsafe3;
                                                i45 = i24;
                                                zzgvxVar2 = zzgvxVar3;
                                                if (iZzk2 == i21) {
                                                    i11 = i11;
                                                    i35 = i22;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzg = iZzk2;
                                                    i34 = i11;
                                                    zzgvxVar4 = zzgvxVar2;
                                                    i37 = i9;
                                                    unsafe6 = unsafe2;
                                                    i36 = i45;
                                                    i38 = i10;
                                                    i33 = -1;
                                                } else {
                                                    i11 = i11;
                                                    i12 = i22;
                                                    i4 = i3;
                                                    i8 = iZzk2;
                                                    i6 = i45;
                                                }
                                            }
                                            i22 = i23;
                                            i21 = i95;
                                            unsafe2 = unsafe3;
                                            i45 = i24;
                                            zzgvxVar2 = zzgvxVar3;
                                            iZzk2 = i21;
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 66:
                                            i23 = i19;
                                            i24 = i6;
                                            zzgzfVar = this;
                                            zzgvxVar3 = zzgvxVar;
                                            if (i42 == 0) {
                                                iZza = zzgvy.zzh(bArr, i95, zzgvxVar3);
                                                unsafe9.putObject(obj3, j, Integer.valueOf(zzgwp.zzD(zzgvxVar3.zza)));
                                                unsafe9.putInt(obj3, j3, i11);
                                                iZzk2 = iZza;
                                                i22 = i23;
                                                i21 = i95;
                                                unsafe2 = unsafe3;
                                                i45 = i24;
                                                zzgvxVar2 = zzgvxVar3;
                                                if (iZzk2 == i21) {
                                                    i11 = i11;
                                                    i35 = i22;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzg = iZzk2;
                                                    i34 = i11;
                                                    zzgvxVar4 = zzgvxVar2;
                                                    i37 = i9;
                                                    unsafe6 = unsafe2;
                                                    i36 = i45;
                                                    i38 = i10;
                                                    i33 = -1;
                                                } else {
                                                    i11 = i11;
                                                    i12 = i22;
                                                    i4 = i3;
                                                    i8 = iZzk2;
                                                    i6 = i45;
                                                }
                                            }
                                            i22 = i23;
                                            i21 = i95;
                                            unsafe2 = unsafe3;
                                            i45 = i24;
                                            zzgvxVar2 = zzgvxVar3;
                                            iZzk2 = i21;
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 67:
                                            i23 = i19;
                                            i24 = i6;
                                            zzgzfVar = this;
                                            zzgvxVar3 = zzgvxVar;
                                            if (i42 == 0) {
                                                int iZzk4 = zzgvy.zzk(bArr, i95, zzgvxVar3);
                                                unsafe9.putObject(obj3, j, Long.valueOf(zzgwp.zzF(zzgvxVar3.zzb)));
                                                unsafe9.putInt(obj3, j3, i11);
                                                iZzk2 = iZzk4;
                                                i22 = i23;
                                                i21 = i95;
                                                unsafe2 = unsafe3;
                                                i45 = i24;
                                                zzgvxVar2 = zzgvxVar3;
                                                if (iZzk2 == i21) {
                                                    i11 = i11;
                                                    i35 = i22;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzg = iZzk2;
                                                    i34 = i11;
                                                    zzgvxVar4 = zzgvxVar2;
                                                    i37 = i9;
                                                    unsafe6 = unsafe2;
                                                    i36 = i45;
                                                    i38 = i10;
                                                    i33 = -1;
                                                } else {
                                                    i11 = i11;
                                                    i12 = i22;
                                                    i4 = i3;
                                                    i8 = iZzk2;
                                                    i6 = i45;
                                                }
                                            }
                                            i22 = i23;
                                            i21 = i95;
                                            unsafe2 = unsafe3;
                                            i45 = i24;
                                            zzgvxVar2 = zzgvxVar3;
                                            iZzk2 = i21;
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                        case 68:
                                            if (i42 == 3) {
                                                zzgzfVar = this;
                                                Object objZzB2 = zzgzfVar.zzB(obj3, i11, i19);
                                                int iZzl2 = zzgvy.zzl(objZzB2, zzgzfVar.zzx(i19), bArr, i95, i2, (i6 & (-8)) | 4, zzgvxVar);
                                                zzgzfVar.zzK(obj3, i11, i19, objZzB2);
                                                i22 = i19;
                                                i21 = i95;
                                                zzgvxVar2 = zzgvxVar;
                                                unsafe2 = unsafe3;
                                                i45 = i6;
                                                iZzk2 = iZzl2;
                                            }
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                                break;
                                            } else {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                                break;
                                            }
                                        default:
                                            zzgzfVar = this;
                                            i21 = i95;
                                            i22 = i19;
                                            unsafe2 = unsafe3;
                                            zzgvxVar2 = zzgvxVar;
                                            i45 = i6;
                                            iZzk2 = i21;
                                            if (iZzk2 == i21) {
                                                i11 = i11;
                                                i35 = i22;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzg = iZzk2;
                                                i34 = i11;
                                                zzgvxVar4 = zzgvxVar2;
                                                i37 = i9;
                                                unsafe6 = unsafe2;
                                                i36 = i45;
                                                i38 = i10;
                                                i33 = -1;
                                            } else {
                                                i11 = i11;
                                                i12 = i22;
                                                i4 = i3;
                                                i8 = iZzk2;
                                                i6 = i45;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i42 == 2) {
                                        Unsafe unsafe10 = zzb;
                                        Object objZzz = zzgzfVar.zzz(i19);
                                        Object object = unsafe10.getObject(obj, j);
                                        if (zzgyx.zza(object)) {
                                            zzgyw zzgywVarZzb = zzgyw.zza().zzb();
                                            zzgyx.zzb(zzgywVarZzb, object);
                                            unsafe10.putObject(obj, j, zzgywVarZzb);
                                        }
                                        throw null;
                                    }
                                    i20 = i95;
                                    obj3 = obj;
                                    i4 = i3;
                                    i8 = i20;
                                    i12 = i19;
                                    zzgvxVar2 = zzgvxVar4;
                                    unsafe2 = unsafe3;
                                }
                            }
                        } else if (i42 == 2) {
                            zzgyd zzgydVarZzf2 = (zzgyd) unsafe7.getObject(obj3, j);
                            if (!zzgydVarZzf2.zzc()) {
                                int size2 = zzgydVarZzf2.size();
                                zzgydVarZzf2 = zzgydVarZzf2.zzf(size2 == 0 ? 10 : size2 + size2);
                                unsafe7.putObject(obj3, j, zzgydVarZzf2);
                            }
                            int iZze2 = zzgvy.zze(zzgzfVar.zzx(iZzs), i6, bArr, i39, i2, zzgydVarZzf2, zzgvxVar);
                            i3 = i3;
                            zzgvxVar4 = zzgvxVar;
                            i2 = i57;
                            unsafe6 = unsafe7;
                            i37 = i9;
                            i38 = i10;
                            i33 = -1;
                            i36 = i6;
                            i35 = iZzs;
                            i34 = i44;
                            iZzg = iZze2;
                        } else {
                            zzgvxVar4 = zzgvxVar;
                            unsafe3 = unsafe7;
                            i19 = iZzs;
                            i20 = i39;
                            i11 = i44;
                            i4 = i3;
                            i8 = i20;
                            i12 = i19;
                            zzgvxVar2 = zzgvxVar4;
                            unsafe2 = unsafe3;
                        }
                    }
                } else {
                    i8 = i39;
                    i9 = i37;
                    i10 = i38;
                    unsafe2 = unsafe6;
                    zzgvxVar2 = zzgvxVar4;
                    i4 = i3;
                    i11 = i41;
                    i6 = i7;
                    i12 = 0;
                }
                if (i6 != i4 || i4 == 0) {
                    if (zzgzfVar.zzh) {
                        zzgxb zzgxbVar = zzgvxVar2.zzd;
                        int i99 = zzgxb.zzb;
                        int i100 = zzgzm.zza;
                        if (zzgxbVar != zzgxb.zza) {
                            zzgzc zzgzcVar = zzgzfVar.zzg;
                            zzgxb zzgxbVar2 = zzgvxVar2.zzd;
                            int i101 = zzgvy.zza;
                            if (zzgxbVar2.zzc(zzgzcVar, i11) != null) {
                                throw null;
                            }
                            iZzg = zzgvy.zzg(i6, bArr, i8, i2, zzd(obj), zzgvxVar);
                        } else {
                            iZzg = zzgvy.zzg(i6, bArr, i8, i2, zzd(obj), zzgvxVar);
                        }
                    } else {
                        iZzg = zzgvy.zzg(i6, bArr, i8, i2, zzd(obj), zzgvxVar);
                    }
                    i35 = i12;
                    i36 = i6;
                    i34 = i11;
                    unsafe6 = unsafe2;
                    i37 = i9;
                    i38 = i10;
                    i3 = i4;
                    zzgvxVar4 = zzgvxVar2;
                    i33 = -1;
                } else {
                    i2 = i2;
                    i5 = i8;
                    i37 = i9;
                    unsafe = unsafe2;
                    i38 = i10;
                }
            } else {
                i4 = i3;
                unsafe = unsafe6;
                i5 = iZzg;
                i6 = i36;
            }
        }
        if (i38 != 1048575) {
            unsafe.putInt(obj3, i38, i37);
        }
        for (int i102 = zzgzfVar.zzk; i102 < zzgzfVar.zzl; i102++) {
            zzy(obj, zzgzfVar.zzj[i102], null, zzgzfVar.zzm, obj);
        }
        if (i4 == 0) {
            if (i5 != i2) {
                throw new zzgyg("Failed to parse the message.");
            }
        } else if (i5 > i2 || i6 != i4) {
            throw new zzgyg("Failed to parse the message.");
        }
        return i5;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final Object zze() {
        return ((zzgxr) this.zzg).zzbj();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:41:0x0082 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzgxr) {
                zzgxr zzgxrVar = (zzgxr) obj;
                zzgxrVar.zzbT();
                zzgxrVar.zzbS();
                zzgxrVar.zzbV();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzu = zzu(i);
                int i2 = 1048575 & iZzu;
                int iZzt = zzt(iZzu);
                long j = i2;
                if (iZzt != 9) {
                    if (iZzt != 60 && iZzt != 68) {
                        switch (iZzt) {
                            case 17:
                                if (zzN(obj, i)) {
                                    zzx(i).zzf(zzb.getObject(obj, j));
                                }
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
                                ((zzgyd) zzhao.zzh(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzgyw) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (zzR(obj, this.zzc[i], i)) {
                        zzx(i).zzf(zzb.getObject(obj, j));
                    }
                } else if (zzN(obj, i)) {
                    zzx(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            int i2 = 1048575 & iZzu;
            int[] iArr = this.zzc;
            int iZzt = zzt(iZzu);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzhao.zzr(obj, j, zzhao.zzb(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 1:
                    if (zzN(obj2, i)) {
                        zzhao.zzs(obj, j, zzhao.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 2:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 3:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 4:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 5:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 6:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 7:
                    if (zzN(obj2, i)) {
                        zzhao.zzp(obj, j, zzhao.zzz(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 8:
                    if (zzN(obj2, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 11:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 12:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 13:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 14:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 15:
                    if (zzN(obj2, i)) {
                        zzhao.zzt(obj, j, zzhao.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 16:
                    if (zzN(obj2, i)) {
                        zzhao.zzu(obj, j, zzhao.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 17:
                    zzE(obj, obj2, i);
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
                    zzgyd zzgydVarZzf = (zzgyd) zzhao.zzh(obj, j);
                    zzgyd zzgydVar = (zzgyd) zzhao.zzh(obj2, j);
                    int size = zzgydVarZzf.size();
                    int size2 = zzgydVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzgydVarZzf.zzc()) {
                            zzgydVarZzf = zzgydVarZzf.zzf(size2 + size);
                        }
                        zzgydVarZzf.addAll(zzgydVar);
                    }
                    if (size > 0) {
                        zzgydVar = zzgydVarZzf;
                    }
                    zzhao.zzv(obj, j, zzgydVar);
                    break;
                case 50:
                    int i4 = zzgzx.zza;
                    zzhao.zzv(obj, j, zzgyx.zzb(zzhao.zzh(obj, j), zzhao.zzh(obj2, j)));
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
                    if (zzR(obj2, i3, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzhao.zzv(obj, j, zzhao.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
        }
        zzgzx.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzgzx.zzp(this.zzn, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:141:0x050f  */
    /* JADX WARN: Code duplicated, block: B:320:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzh(Object obj, zzgzp zzgzpVar, zzgxb zzgxbVar) throws IOException {
        zzgxbVar.getClass();
        zzD(obj);
        zzhah zzhahVar = this.zzm;
        Object objZza = null;
        while (true) {
            try {
                int iZzc = zzgzpVar.zzc();
                int iZzq = zzq(iZzc);
                if (iZzq >= 0) {
                    int iZzu = zzu(iZzq);
                    try {
                        switch (zzt(iZzu)) {
                            case 0:
                                zzhao.zzr(obj, iZzu & 1048575, zzgzpVar.zza());
                                zzH(obj, iZzq);
                                break;
                            case 1:
                                zzhao.zzs(obj, iZzu & 1048575, zzgzpVar.zzb());
                                zzH(obj, iZzq);
                                break;
                            case 2:
                                zzhao.zzu(obj, iZzu & 1048575, zzgzpVar.zzl());
                                zzH(obj, iZzq);
                                break;
                            case 3:
                                zzhao.zzu(obj, iZzu & 1048575, zzgzpVar.zzo());
                                zzH(obj, iZzq);
                                break;
                            case 4:
                                zzhao.zzt(obj, iZzu & 1048575, zzgzpVar.zzg());
                                zzH(obj, iZzq);
                                break;
                            case 5:
                                zzhao.zzu(obj, iZzu & 1048575, zzgzpVar.zzk());
                                zzH(obj, iZzq);
                                break;
                            case 6:
                                zzhao.zzt(obj, iZzu & 1048575, zzgzpVar.zzf());
                                zzH(obj, iZzq);
                                break;
                            case 7:
                                zzhao.zzp(obj, iZzu & 1048575, zzgzpVar.zzN());
                                zzH(obj, iZzq);
                                break;
                            case 8:
                                zzG(obj, iZzu, zzgzpVar);
                                zzH(obj, iZzq);
                                break;
                            case 9:
                                zzgzc zzgzcVar = (zzgzc) zzA(obj, iZzq);
                                zzgzpVar.zzu(zzgzcVar, zzx(iZzq), zzgxbVar);
                                zzJ(obj, iZzq, zzgzcVar);
                                break;
                            case 10:
                                zzhao.zzv(obj, iZzu & 1048575, zzgzpVar.zzp());
                                zzH(obj, iZzq);
                                break;
                            case 11:
                                zzhao.zzt(obj, iZzu & 1048575, zzgzpVar.zzj());
                                zzH(obj, iZzq);
                                break;
                            case 12:
                                int iZze = zzgzpVar.zze();
                                zzgxx zzgxxVarZzw = zzw(iZzq);
                                if (zzgxxVarZzw == null || zzgxxVarZzw.zza(iZze)) {
                                    zzhao.zzt(obj, iZzu & 1048575, iZze);
                                    zzH(obj, iZzq);
                                } else {
                                    objZza = zzgzx.zzo(obj, iZzc, iZze, objZza, zzhahVar);
                                }
                                break;
                            case 13:
                                zzhao.zzt(obj, iZzu & 1048575, zzgzpVar.zzh());
                                zzH(obj, iZzq);
                                break;
                            case 14:
                                zzhao.zzu(obj, iZzu & 1048575, zzgzpVar.zzm());
                                zzH(obj, iZzq);
                                break;
                            case 15:
                                zzhao.zzt(obj, iZzu & 1048575, zzgzpVar.zzi());
                                zzH(obj, iZzq);
                                break;
                            case 16:
                                zzhao.zzu(obj, iZzu & 1048575, zzgzpVar.zzn());
                                zzH(obj, iZzq);
                                break;
                            case 17:
                                zzgzc zzgzcVar2 = (zzgzc) zzA(obj, iZzq);
                                zzgzpVar.zzt(zzgzcVar2, zzx(iZzq), zzgxbVar);
                                zzJ(obj, iZzq, zzgzcVar2);
                                break;
                            case 18:
                                zzgzpVar.zzx(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 19:
                                zzgzpVar.zzB(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 20:
                                zzgzpVar.zzE(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 21:
                                zzgzpVar.zzM(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 22:
                                zzgzpVar.zzD(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 23:
                                zzgzpVar.zzA(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 24:
                                zzgzpVar.zzz(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 25:
                                zzgzpVar.zzv(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 26:
                                if (zzM(iZzu)) {
                                    ((zzgwq) zzgzpVar).zzK(zzgyp.zza(obj, iZzu & 1048575), true);
                                } else {
                                    ((zzgwq) zzgzpVar).zzK(zzgyp.zza(obj, iZzu & 1048575), false);
                                }
                                break;
                            case 27:
                                zzgzpVar.zzF(zzgyp.zza(obj, iZzu & 1048575), zzx(iZzq), zzgxbVar);
                                break;
                            case 28:
                                zzgzpVar.zzw(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 29:
                                zzgzpVar.zzL(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 30:
                                List listZza = zzgyp.zza(obj, iZzu & 1048575);
                                zzgzpVar.zzy(listZza);
                                objZza = zzgzx.zzn(obj, iZzc, listZza, zzw(iZzq), objZza, zzhahVar);
                                break;
                            case 31:
                                zzgzpVar.zzG(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 32:
                                zzgzpVar.zzH(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 33:
                                zzgzpVar.zzI(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 34:
                                zzgzpVar.zzJ(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 35:
                                zzgzpVar.zzx(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 36:
                                zzgzpVar.zzB(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 37:
                                zzgzpVar.zzE(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 38:
                                zzgzpVar.zzM(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 39:
                                zzgzpVar.zzD(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 40:
                                zzgzpVar.zzA(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 41:
                                zzgzpVar.zzz(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 42:
                                zzgzpVar.zzv(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 43:
                                zzgzpVar.zzL(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 44:
                                List listZza2 = zzgyp.zza(obj, iZzu & 1048575);
                                zzgzpVar.zzy(listZza2);
                                objZza = zzgzx.zzn(obj, iZzc, listZza2, zzw(iZzq), objZza, zzhahVar);
                                break;
                            case 45:
                                zzgzpVar.zzG(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 46:
                                zzgzpVar.zzH(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 47:
                                zzgzpVar.zzI(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 48:
                                zzgzpVar.zzJ(zzgyp.zza(obj, iZzu & 1048575));
                                break;
                            case 49:
                                zzgzpVar.zzC(zzgyp.zza(obj, iZzu & 1048575), zzx(iZzq), zzgxbVar);
                                break;
                            case 50:
                                Object objZzz = zzz(iZzq);
                                long jZzu = zzu(iZzq) & 1048575;
                                Object objZzh = zzhao.zzh(obj, jZzu);
                                if (objZzh == null) {
                                    objZzh = zzgyw.zza().zzb();
                                    zzhao.zzv(obj, jZzu, objZzh);
                                } else if (zzgyx.zza(objZzh)) {
                                    Object objZzb = zzgyw.zza().zzb();
                                    zzgyx.zzb(objZzb, objZzh);
                                    zzhao.zzv(obj, jZzu, objZzb);
                                    objZzh = objZzb;
                                }
                                throw null;
                            case 51:
                                zzhao.zzv(obj, iZzu & 1048575, Double.valueOf(zzgzpVar.zza()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 52:
                                zzhao.zzv(obj, iZzu & 1048575, Float.valueOf(zzgzpVar.zzb()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 53:
                                zzhao.zzv(obj, iZzu & 1048575, Long.valueOf(zzgzpVar.zzl()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 54:
                                zzhao.zzv(obj, iZzu & 1048575, Long.valueOf(zzgzpVar.zzo()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 55:
                                zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(zzgzpVar.zzg()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 56:
                                zzhao.zzv(obj, iZzu & 1048575, Long.valueOf(zzgzpVar.zzk()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 57:
                                zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(zzgzpVar.zzf()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 58:
                                zzhao.zzv(obj, iZzu & 1048575, Boolean.valueOf(zzgzpVar.zzN()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 59:
                                zzG(obj, iZzu, zzgzpVar);
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 60:
                                zzgzc zzgzcVar3 = (zzgzc) zzB(obj, iZzc, iZzq);
                                zzgzpVar.zzu(zzgzcVar3, zzx(iZzq), zzgxbVar);
                                zzK(obj, iZzc, iZzq, zzgzcVar3);
                                break;
                            case 61:
                                zzhao.zzv(obj, iZzu & 1048575, zzgzpVar.zzp());
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 62:
                                zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(zzgzpVar.zzj()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 63:
                                int iZze2 = zzgzpVar.zze();
                                zzgxx zzgxxVarZzw2 = zzw(iZzq);
                                if (zzgxxVarZzw2 == null || zzgxxVarZzw2.zza(iZze2)) {
                                    zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(iZze2));
                                    zzI(obj, iZzc, iZzq);
                                } else {
                                    objZza = zzgzx.zzo(obj, iZzc, iZze2, objZza, zzhahVar);
                                }
                                break;
                            case 64:
                                zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(zzgzpVar.zzh()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 65:
                                zzhao.zzv(obj, iZzu & 1048575, Long.valueOf(zzgzpVar.zzm()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 66:
                                zzhao.zzv(obj, iZzu & 1048575, Integer.valueOf(zzgzpVar.zzi()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 67:
                                zzhao.zzv(obj, iZzu & 1048575, Long.valueOf(zzgzpVar.zzn()));
                                zzI(obj, iZzc, iZzq);
                                break;
                            case 68:
                                zzgzc zzgzcVar4 = (zzgzc) zzB(obj, iZzc, iZzq);
                                zzgzpVar.zzt(zzgzcVar4, zzx(iZzq), zzgxbVar);
                                zzK(obj, iZzc, iZzq, zzgzcVar4);
                                break;
                            default:
                                if (objZza == null) {
                                    objZza = zzhahVar.zza(obj);
                                }
                                if (!zzhahVar.zzk(objZza, zzgzpVar, 0)) {
                                    for (int i = this.zzk; i < this.zzl; i++) {
                                        zzy(obj, this.zzj[i], objZza, zzhahVar, obj);
                                    }
                                }
                                break;
                        }
                    } catch (zzgyf unused) {
                        if (objZza == null) {
                            objZza = zzhahVar.zza(obj);
                        }
                        if (!zzhahVar.zzk(objZza, zzgzpVar, 0)) {
                            for (int i2 = this.zzk; i2 < this.zzl; i2++) {
                                zzy(obj, this.zzj[i2], objZza, zzhahVar, obj);
                            }
                            if (objZza != null) {
                                zzhahVar.zzj(obj, objZza);
                            }
                        }
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    for (int i3 = this.zzk; i3 < this.zzl; i3++) {
                        zzy(obj, this.zzj[i3], objZza, zzhahVar, obj);
                    }
                } else {
                    if ((!this.zzh ? null : zzgxbVar.zzc(this.zzg, iZzc)) != null) {
                        throw null;
                    }
                    if (objZza == null) {
                        objZza = zzhahVar.zza(obj);
                    }
                    if (!zzhahVar.zzk(objZza, zzgzpVar, 0)) {
                        for (int i4 = this.zzk; i4 < this.zzl; i4++) {
                            zzy(obj, this.zzj[i4], objZza, zzhahVar, obj);
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.zzk; i5 < this.zzl; i5++) {
                    zzy(obj, this.zzj[i5], objZza, zzhahVar, obj);
                }
                if (objZza != null) {
                    zzhahVar.zzj(obj, objZza);
                }
                throw th;
            }
        }
        if (objZza != null) {
            zzhahVar.zzj(obj, objZza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgvx zzgvxVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzgvxVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzj(Object obj, zzhaw zzhawVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i;
        Map.Entry entry2;
        int i2;
        if (this.zzh) {
            zzgxg zzgxgVar = ((zzgxn) obj).zza;
            if (zzgxgVar.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzf = zzgxgVar.zzf();
                entry = (Map.Entry) itZzf.next();
                it = itZzf;
            }
        } else {
            entry = null;
            it = null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < iArr.length) {
            int iZzu = zzu(i5);
            int[] iArr2 = this.zzc;
            int iZzt = zzt(iZzu);
            int i6 = iArr2[i5];
            if (iZzt <= 17) {
                int i7 = iArr2[i5 + 2];
                int i8 = i7 & 1048575;
                if (i8 != i3) {
                    i4 = i8 == 1048575 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
                } else {
                    entry = entry;
                }
                i2 = 1 << (i7 >>> 20);
                i = i4;
                entry2 = entry;
            } else {
                i = i4;
                entry2 = entry;
                i2 = 0;
            }
            int i9 = i3;
            while (entry2 != null && ((zzgxo) entry2.getKey()).zza <= i6) {
                this.zzn.zzb(zzhawVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzu & 1048575;
            switch (iZzt) {
                case 0:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzf(i6, zzhao.zzb(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 1:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzo(i6, zzhao.zzc(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 2:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzt(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 3:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzK(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 4:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzr(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 5:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzm(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 6:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzk(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 7:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzb(i6, zzhao.zzz(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 8:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzT(i6, unsafe.getObject(obj, j), zzhawVar);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 9:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzv(i6, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 10:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzd(i6, (zzgwj) unsafe.getObject(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 11:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzI(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 12:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzi(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 13:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzx(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 14:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzz(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 15:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzB(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 16:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzD(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 17:
                    it = it;
                    iArr = iArr;
                    if (zzO(obj, i5, i9, i, i2)) {
                        zzhawVar.zzq(i6, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 18:
                    zzgzx.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 19:
                    zzgzx.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 20:
                    zzgzx.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 21:
                    zzgzx.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 22:
                    zzgzx.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 23:
                    zzgzx.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 24:
                    zzgzx.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 25:
                    zzgzx.zzr(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 26:
                    zzgzx.zzG(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 27:
                    zzgzx.zzB(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, zzx(i5));
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 28:
                    zzgzx.zzs(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 29:
                    zzgzx.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 30:
                    zzgzx.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 31:
                    zzgzx.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 32:
                    zzgzx.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 33:
                    zzgzx.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 34:
                    zzgzx.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, false);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 35:
                    zzgzx.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 36:
                    zzgzx.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 37:
                    zzgzx.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 38:
                    zzgzx.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 39:
                    zzgzx.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 40:
                    zzgzx.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 41:
                    zzgzx.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 42:
                    zzgzx.zzr(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 43:
                    zzgzx.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 44:
                    zzgzx.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 45:
                    zzgzx.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 46:
                    zzgzx.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 47:
                    zzgzx.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 48:
                    zzgzx.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 49:
                    zzgzx.zzy(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhawVar, zzx(i5));
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        throw null;
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 51:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzf(i6, zzn(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 52:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzo(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 53:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzt(i6, zzv(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 54:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzK(i6, zzv(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 55:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzr(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 56:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzm(i6, zzv(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 57:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzk(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 58:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzb(i6, zzS(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 59:
                    if (zzR(obj, i6, i5)) {
                        zzT(i6, unsafe.getObject(obj, j), zzhawVar);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 60:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzv(i6, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 61:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzd(i6, (zzgwj) unsafe.getObject(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 62:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzI(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 63:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzi(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 64:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzx(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 65:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzz(i6, zzv(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 66:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzB(i6, zzp(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 67:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzD(i6, zzv(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 68:
                    if (zzR(obj, i6, i5)) {
                        zzhawVar.zzq(i6, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                default:
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
            }
        }
        Iterator it2 = it;
        while (entry != null) {
            this.zzn.zzb(zzhawVar, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        ((zzgxr) obj).zzt.zzl(zzhawVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzk(Object obj, Object obj2) {
        boolean zZzJ;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            long j = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzhao.zzb(obj, j)) != Double.doubleToLongBits(zzhao.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzhao.zzc(obj, j)) != Float.floatToIntBits(zzhao.zzc(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzhao.zzf(obj, j) != zzhao.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzhao.zzf(obj, j) != zzhao.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzhao.zzf(obj, j) != zzhao.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzhao.zzz(obj, j) != zzhao.zzz(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzhao.zzf(obj, j) != zzhao.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzhao.zzd(obj, j) != zzhao.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzhao.zzf(obj, j) != zzhao.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
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
                    zZzJ = zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j));
                    break;
                case 50:
                    zZzJ = zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j));
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
                    long jZzr = zzr(i) & 1048575;
                    if (zzhao.zzd(obj, jZzr) != zzhao.zzd(obj2, jZzr) || !zzgzx.zzJ(zzhao.zzh(obj, j), zzhao.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzJ) {
                return false;
            }
        }
        if (!((zzgxr) obj).zzt.equals(((zzgxr) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzgxn) obj).zza.equals(((zzgxn) obj2).zza);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[LOOP:1: B:45:0x00b1->B:50:0x00c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00df A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        List list;
        zzgzv zzgzvVarZzx;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i6];
            int i8 = iArr2[i7];
            int iZzu = zzu(i7);
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
            if ((268435456 & iZzu) != 0 && !zzO(obj, i7, i, i2, i11)) {
                return false;
            }
            int iZzt = zzt(iZzu);
            if (iZzt == 9 || iZzt == 17) {
                if (zzO(obj, i7, i, i2, i11) && !zzP(obj, iZzu, zzx(i7))) {
                    return false;
                }
            } else if (iZzt == 27) {
                list = (List) zzhao.zzh(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgzvVarZzx = zzx(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzgzvVarZzx.zzl(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzt == 60 || iZzt == 68) {
                if (zzR(obj, i8, i7) && !zzP(obj, iZzu, zzx(i7))) {
                    return false;
                }
            } else if (iZzt == 49) {
                list = (List) zzhao.zzh(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    zzgzvVarZzx = zzx(i7);
                    while (i3 < list.size()) {
                        if (!zzgzvVarZzx.zzl(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzt == 50 && !((zzgyw) zzhao.zzh(obj, iZzu & 1048575)).isEmpty()) {
                throw null;
            }
            i6++;
            i4 = i;
            i5 = i2;
        }
        return !this.zzh || ((zzgxn) obj).zza.zzi();
    }
}

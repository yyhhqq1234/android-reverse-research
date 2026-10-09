package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfze extends zzfxq {
    static final zzfxq zza = new zzfze(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzfze(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:75:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:76:0x01bf  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v7 */
    static zzfze zzj(int i, Object[] objArr, zzfxp zzfxpVar) {
        short[] sArr;
        char c;
        char c2;
        ?? r6;
        ?? r3;
        boolean z;
        ?? r4;
        Object[] objArr2;
        zzfxo zzfxoVar;
        int i2 = i;
        Object[] objArrCopyOf = objArr;
        if (i2 == 0) {
            return (zzfze) zza;
        }
        zzfxo zzfxoVar2 = null;
        ?? r5 = 0;
        zzfxo zzfxoVar3 = null;
        zzfxo zzfxoVar4 = null;
        int i3 = 1;
        if (i2 == 1) {
            zzfwk.zzb(Objects.requireNonNull(objArrCopyOf[0]), Objects.requireNonNull(objArrCopyOf[1]));
            return new zzfze(null, objArrCopyOf, 1);
        }
        zzfun.zzb(i2, objArrCopyOf.length >> 1, "index");
        int iZzh = zzfxs.zzh(i);
        if (i2 == 1) {
            zzfwk.zzb(Objects.requireNonNull(objArrCopyOf[0]), Objects.requireNonNull(objArrCopyOf[1]));
            i2 = 1;
        } else {
            int i4 = iZzh - 1;
            byte b = -1;
            if (iZzh > 128) {
                if (iZzh <= 32768) {
                    sArr = new short[iZzh];
                    Arrays.fill(sArr, (short) -1);
                    int i5 = 0;
                    for (int i6 = 0; i6 < i2; i6++) {
                        int i7 = i5 + i5;
                        int i8 = i6 + i6;
                        Object objRequireNonNull = Objects.requireNonNull(objArrCopyOf[i8]);
                        Object objRequireNonNull2 = Objects.requireNonNull(objArrCopyOf[i8 ^ 1]);
                        zzfwk.zzb(objRequireNonNull, objRequireNonNull2);
                        int iZza = zzfxf.zza(objRequireNonNull.hashCode());
                        while (true) {
                            int i9 = iZza & i4;
                            char c3 = (char) sArr[i9];
                            if (c3 == 65535) {
                                sArr[i9] = (short) i7;
                                if (i5 < i6) {
                                    objArrCopyOf[i7] = objRequireNonNull;
                                    objArrCopyOf[i7 ^ 1] = objRequireNonNull2;
                                }
                                i5++;
                                break;
                            }
                            if (objRequireNonNull.equals(objArrCopyOf[c3])) {
                                int i10 = c3 ^ 1;
                                zzfxo zzfxoVar5 = new zzfxo(objRequireNonNull, objRequireNonNull2, Objects.requireNonNull(objArrCopyOf[i10 == true ? 1 : 0]));
                                objArrCopyOf[i10 == true ? 1 : 0] = objRequireNonNull2;
                                zzfxoVar4 = zzfxoVar5;
                                break;
                            }
                            iZza = i9 + 1;
                        }
                    }
                    if (i5 != i2) {
                        Integer numValueOf = Integer.valueOf(i5);
                        c = 1;
                        c2 = 2;
                        r6 = new Object[]{sArr, numValueOf, zzfxoVar4};
                        r3 = r6;
                    }
                } else {
                    int i11 = 1;
                    sArr = new int[iZzh];
                    Arrays.fill((int[]) sArr, -1);
                    int i12 = 0;
                    int i13 = 0;
                    while (i12 < i2) {
                        int i14 = i13 + i13;
                        int i15 = i12 + i12;
                        Object objRequireNonNull3 = Objects.requireNonNull(objArrCopyOf[i15]);
                        Object objRequireNonNull4 = Objects.requireNonNull(objArrCopyOf[i15 ^ i11]);
                        zzfwk.zzb(objRequireNonNull3, objRequireNonNull4);
                        int iZza2 = zzfxf.zza(objRequireNonNull3.hashCode());
                        while (true) {
                            int i16 = iZza2 & i4;
                            ?? r15 = sArr[i16];
                            if (r15 == b) {
                                sArr[i16] = i14;
                                if (i13 < i12) {
                                    objArrCopyOf[i14] = objRequireNonNull3;
                                    objArrCopyOf[i14 ^ 1] = objRequireNonNull4;
                                }
                                i13++;
                                break;
                            }
                            if (objRequireNonNull3.equals(objArrCopyOf[r15])) {
                                int i17 = r15 ^ 1;
                                zzfxo zzfxoVar6 = new zzfxo(objRequireNonNull3, objRequireNonNull4, Objects.requireNonNull(objArrCopyOf[i17 == true ? 1 : 0]));
                                objArrCopyOf[i17 == true ? 1 : 0] = objRequireNonNull4;
                                zzfxoVar2 = zzfxoVar6;
                                break;
                            }
                            iZza2 = i16 + 1;
                            b = -1;
                        }
                        i12++;
                        i11 = 1;
                        b = -1;
                    }
                    if (i13 != i2) {
                        c = 1;
                        c2 = 2;
                        r6 = new Object[]{sArr, Integer.valueOf(i13), zzfxoVar2};
                        r3 = r6;
                    }
                }
                z = r3 instanceof Object[];
                r4 = r3;
                if (z) {
                    objArr2 = (Object[]) r3;
                    zzfxoVar = (zzfxo) objArr2[c2];
                    if (zzfxpVar != null) {
                        throw zzfxoVar.zza();
                    }
                    zzfxpVar.zzc = zzfxoVar;
                    Object obj = objArr2[0];
                    int iIntValue = ((Integer) objArr2[c]).intValue();
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                    r4 = obj;
                    i2 = iIntValue;
                }
                return new zzfze(r4, objArrCopyOf, i2);
            }
            byte[] bArr = new byte[iZzh];
            Arrays.fill(bArr, (byte) -1);
            int i18 = 0;
            int i19 = 0;
            while (i18 < i2) {
                int i20 = i19 + i19;
                int i21 = i18 + i18;
                Object objRequireNonNull5 = Objects.requireNonNull(objArrCopyOf[i21]);
                Object objRequireNonNull6 = Objects.requireNonNull(objArrCopyOf[i21 ^ i3]);
                zzfwk.zzb(objRequireNonNull5, objRequireNonNull6);
                int iZza3 = zzfxf.zza(objRequireNonNull5.hashCode());
                while (true) {
                    int i22 = iZza3 & i4;
                    int i23 = bArr[i22] & 255;
                    if (i23 == 255) {
                        bArr[i22] = (byte) i20;
                        if (i19 < i18) {
                            objArrCopyOf[i20] = objRequireNonNull5;
                            objArrCopyOf[i20 ^ 1] = objRequireNonNull6;
                        }
                        i19++;
                        break;
                    }
                    if (objRequireNonNull5.equals(objArrCopyOf[i23 == true ? 1 : 0])) {
                        int i24 = ~i23;
                        zzfxo zzfxoVar7 = new zzfxo(objRequireNonNull5, objRequireNonNull6, Objects.requireNonNull(objArrCopyOf[i24 == true ? 1 : 0]));
                        objArrCopyOf[i24 == true ? 1 : 0] = objRequireNonNull6;
                        zzfxoVar3 = zzfxoVar7;
                        break;
                    }
                    iZza3 = i22 + 1;
                }
                i18++;
                i3 = 1;
            }
            if (i19 == i2) {
                r5 = bArr;
            } else {
                sArr = new Object[]{bArr, Integer.valueOf(i19), zzfxoVar3};
            }
            r5 = sArr;
        }
        c2 = 2;
        c = 1;
        r3 = r5;
        z = r3 instanceof Object[];
        r4 = r3;
        if (z) {
            objArr2 = (Object[]) r3;
            zzfxoVar = (zzfxo) objArr2[c2];
            if (zzfxpVar != null) {
                throw zzfxoVar.zza();
            }
            zzfxpVar.zzc = zzfxoVar;
            Object obj2 = objArr2[0];
            int iIntValue2 = ((Integer) objArr2[c]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 + iIntValue2);
            r4 = obj2;
            i2 = iIntValue2;
        }
        return new zzfze(r4, objArrCopyOf, i2);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.ads.zzfxq, java.util.Map
    @CheckForNull
    public final Object get(@CheckForNull Object obj) {
        Object objRequireNonNull;
        if (obj == null) {
            objRequireNonNull = null;
        } else {
            int i = this.zzd;
            Object[] objArr = this.zzb;
            if (i != 1) {
                Object obj2 = this.zzc;
                if (obj2 == null) {
                    objRequireNonNull = null;
                } else if (obj2 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj2;
                    int length = bArr.length - 1;
                    int iZza = zzfxf.zza(obj.hashCode());
                    while (true) {
                        int i2 = iZza & length;
                        int i3 = bArr[i2] & 255;
                        if (i3 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i3])) {
                            objRequireNonNull = objArr[i3 ^ 1];
                        } else {
                            iZza = i2 + 1;
                        }
                    }
                    objRequireNonNull = null;
                } else if (obj2 instanceof short[]) {
                    short[] sArr = (short[]) obj2;
                    int length2 = sArr.length - 1;
                    int iZza2 = zzfxf.zza(obj.hashCode());
                    while (true) {
                        int i4 = iZza2 & length2;
                        char c = (char) sArr[i4];
                        if (c == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c])) {
                            objRequireNonNull = objArr[c ^ 1];
                        } else {
                            iZza2 = i4 + 1;
                        }
                    }
                    objRequireNonNull = null;
                } else {
                    int[] iArr = (int[]) obj2;
                    int length3 = iArr.length - 1;
                    int iZza3 = zzfxf.zza(obj.hashCode());
                    while (true) {
                        int i5 = iZza3 & length3;
                        int i6 = iArr[i5];
                        if (i6 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i6])) {
                            objRequireNonNull = objArr[i6 ^ 1];
                        } else {
                            iZza3 = i5 + 1;
                        }
                    }
                    objRequireNonNull = null;
                }
            } else if (Objects.requireNonNull(objArr[0]).equals(obj)) {
                objRequireNonNull = Objects.requireNonNull(objArr[1]);
            } else {
                objRequireNonNull = null;
            }
        }
        if (objRequireNonNull == null) {
            return null;
        }
        return objRequireNonNull;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfxq
    final zzfxi zza() {
        return new zzfzd(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzfxq
    final zzfxs zzf() {
        return new zzfzb(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzfxq
    final zzfxs zzg() {
        return new zzfzc(this, new zzfzd(this.zzb, 0, this.zzd));
    }
}

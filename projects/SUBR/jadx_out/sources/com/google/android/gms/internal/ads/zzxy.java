package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzxy extends zzyb {
    protected abstract Pair zzd(zzxx zzxxVar, int[][][] iArr, int[] iArr2, zzug zzugVar, zzbq zzbqVar) throws zzib;

    @Override // com.google.android.gms.internal.ads.zzyb
    public final zzyc zzo(zzlm[] zzlmVarArr, zzwj zzwjVar, zzug zzugVar, zzbq zzbqVar) throws zzib {
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzbr[][] zzbrVarArr = new zzbr[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwjVar.zzb;
            zzbrVarArr[i] = new zzbr[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzlmVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzwjVar.zzb) {
            zzbr zzbrVarZzb = zzwjVar.zzb(i5);
            int i6 = zzbrVarZzb.zzc;
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (i7 < i3) {
                zzlm zzlmVar = zzlmVarArr[i7];
                int iMax = 0;
                for (int i10 = 0; i10 < zzbrVarZzb.zza; i10++) {
                    iMax = Math.max(iMax, zzlmVar.zzY(zzbrVarZzb.zzb(i10)) & 7);
                }
                boolean z3 = iArr2[i7] == 0;
                if (iMax > i9) {
                    z2 = z3;
                    i8 = i7;
                    i9 = iMax;
                } else if (iMax == i9 && i6 == 5 && !z2 && z3) {
                    i8 = i7;
                    i9 = iMax;
                    z2 = true;
                }
                i7++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[zzbrVarZzb.zza];
            } else {
                zzlm zzlmVar2 = zzlmVarArr[i8];
                int[] iArr5 = new int[zzbrVarZzb.zza];
                for (int i11 = 0; i11 < zzbrVarZzb.zza; i11++) {
                    iArr5[i11] = zzlmVar2.zzY(zzbrVarZzb.zzb(i11));
                }
                iArr = iArr5;
            }
            int i12 = iArr2[i8];
            zzbrVarArr[i8][i12] = zzbrVarZzb;
            iArr3[i8][i12] = iArr;
            iArr2[i8] = i12 + 1;
            i5++;
            i3 = 2;
        }
        zzwj[] zzwjVarArr = new zzwj[2];
        String[] strArr = new String[2];
        int[] iArr6 = new int[2];
        int i13 = 0;
        for (int i14 = 2; i13 < i14; i14 = 2) {
            int i15 = iArr2[i13];
            zzwjVarArr[i13] = new zzwj((zzbr[]) zzei.zzN(zzbrVarArr[i13], i15));
            iArr3[i13] = (int[][]) zzei.zzN(iArr3[i13], i15);
            strArr[i13] = zzlmVarArr[i13].zzU();
            iArr6[i13] = zzlmVarArr[i13].zzb();
            i13++;
        }
        zzxx zzxxVar = new zzxx(strArr, iArr6, zzwjVarArr, iArr4, iArr3, new zzwj((zzbr[]) zzei.zzN(zzbrVarArr[2], iArr2[2])));
        Pair pairZzd = zzd(zzxxVar, iArr3, iArr4, zzugVar, zzbqVar);
        zzxz[] zzxzVarArr = (zzxz[]) pairZzd.second;
        List[] listArr = new List[zzxzVarArr.length];
        for (int i16 = 0; i16 < zzxzVarArr.length; i16++) {
            zzxz zzxzVar = zzxzVarArr[i16];
            listArr[i16] = zzxzVar != null ? zzfxn.zzo(zzxzVar) : zzfxn.zzn();
        }
        zzfxk zzfxkVar = new zzfxk();
        for (int i17 = 0; i17 < 2; i17++) {
            zzwj zzwjVarZzd = zzxxVar.zzd(i17);
            List list = listArr[i17];
            for (int i18 = 0; i18 < zzwjVarZzd.zzb; i18++) {
                zzbr zzbrVarZzb2 = zzwjVarZzd.zzb(i18);
                boolean z4 = zzxxVar.zza(i17, i18, false) != 0;
                int i19 = zzbrVarZzb2.zza;
                int[] iArr7 = new int[i19];
                boolean[] zArr = new boolean[i19];
                for (int i20 = 0; i20 < zzbrVarZzb2.zza; i20++) {
                    iArr7[i20] = zzxxVar.zzb(i17, i18, i20) & 7;
                    int i21 = 0;
                    while (true) {
                        if (i21 >= list.size()) {
                            z = false;
                            break;
                        }
                        zzxz zzxzVar2 = (zzxz) list.get(i21);
                        if (zzxzVar2.zzg().equals(zzbrVarZzb2) && zzxzVar2.zzc(i20) != -1) {
                            z = true;
                            break;
                        }
                        i21++;
                    }
                    zArr[i20] = z;
                }
                zzfxkVar.zzf(new zzbx(zzbrVarZzb2, z4, iArr7, zArr));
            }
        }
        zzwj zzwjVarZze = zzxxVar.zze();
        for (int i22 = 0; i22 < zzwjVarZze.zzb; i22++) {
            zzbr zzbrVarZzb3 = zzwjVarZze.zzb(i22);
            int[] iArr8 = new int[zzbrVarZzb3.zza];
            Arrays.fill(iArr8, 0);
            zzfxkVar.zzf(new zzbx(zzbrVarZzb3, false, iArr8, new boolean[zzbrVarZzb3.zza]));
        }
        return new zzyc((zzln[]) pairZzd.first, (zzxv[]) pairZzd.second, new zzby(zzfxkVar.zzi()), zzxxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzp(Object obj) {
    }
}

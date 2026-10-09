package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.work.WorkRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkc implements Handler.Callback, zzud, zzya, zzkz, zzhz, zzld {
    private static final long zza = zzei.zzv(WorkRequest.MIN_BACKOFF_MILLIS);
    private boolean zzA;
    private boolean zzC;
    private boolean zzD;
    private boolean zzF;
    private boolean zzI;
    private int zzJ;
    private zzka zzK;
    private long zzL;
    private long zzM;
    private int zzN;
    private boolean zzO;
    private zzib zzP;
    private zzil zzR;
    private final zzix zzS;
    private final zzhv zzT;
    private final zzlo[] zzb;
    private final zzlm[] zzc;
    private final boolean[] zzd;
    private final zzyb zze;
    private final zzyc zzf;
    private final zzkg zzg;
    private final zzyj zzh;
    private final zzdh zzi;
    private final zzlc zzj;
    private final Looper zzk;
    private final zzbp zzl;
    private final zzbo zzm;
    private final long zzn;
    private final zzia zzo;
    private final ArrayList zzp;
    private final zzcx zzq;
    private final zzko zzr;
    private final zzla zzs;
    private final long zzt;
    private final zzog zzu;
    private final zzlt zzv;
    private final zzdh zzw;
    private zzlp zzx;
    private zzlb zzy;
    private zzjz zzz;
    private int zzG = 0;
    private boolean zzH = false;
    private boolean zzB = false;
    private long zzQ = -9223372036854775807L;
    private long zzE = -9223372036854775807L;

    public zzkc(zzlj[] zzljVarArr, zzyb zzybVar, zzyc zzycVar, zzkg zzkgVar, zzyj zzyjVar, int i, boolean z, zzlt zzltVar, zzlp zzlpVar, zzhv zzhvVar, long j, boolean z2, boolean z3, Looper looper, zzcx zzcxVar, zzix zzixVar, zzog zzogVar, zzlc zzlcVar, zzil zzilVar) {
        this.zzS = zzixVar;
        this.zze = zzybVar;
        this.zzf = zzycVar;
        this.zzg = zzkgVar;
        this.zzh = zzyjVar;
        int i2 = 0;
        this.zzx = zzlpVar;
        this.zzT = zzhvVar;
        this.zzt = j;
        this.zzq = zzcxVar;
        this.zzu = zzogVar;
        this.zzR = zzilVar;
        this.zzv = zzltVar;
        this.zzn = zzkgVar.zzb(zzogVar);
        zzkgVar.zzg(zzogVar);
        zzbq zzbqVar = zzbq.zza;
        zzlb zzlbVarZzg = zzlb.zzg(zzycVar);
        this.zzy = zzlbVarZzg;
        this.zzz = new zzjz(zzlbVarZzg);
        int length = zzljVarArr.length;
        this.zzc = new zzlm[2];
        this.zzd = new boolean[2];
        zzll zzllVarZze = zzybVar.zze();
        this.zzb = new zzlo[2];
        while (true) {
            int length2 = zzljVarArr.length;
            if (i2 >= 2) {
                this.zzo = new zzia(this, zzcxVar);
                this.zzp = new ArrayList();
                this.zzl = new zzbp();
                this.zzm = new zzbo();
                zzybVar.zzr(this, zzyjVar);
                this.zzO = true;
                zzdh zzdhVarZzd = zzcxVar.zzd(looper, null);
                this.zzw = zzdhVarZzd;
                this.zzr = new zzko(zzltVar, zzdhVarZzd, new zzjs(this), zzilVar);
                this.zzs = new zzla(this, zzltVar, zzdhVarZzd, zzogVar);
                zzlc zzlcVar2 = new zzlc(null);
                this.zzj = zzlcVar2;
                Looper looperZza = zzlcVar2.zza();
                this.zzk = looperZza;
                this.zzi = zzcxVar.zzd(looperZza, this);
                return;
            }
            zzljVarArr[i2].zzv(i2, zzogVar, zzcxVar);
            this.zzc[i2] = zzljVarArr[i2].zzm();
            this.zzc[i2].zzL(zzllVarZze);
            this.zzb[i2] = new zzlo(zzljVarArr[i2], i2);
            i2++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00e8  */
    private final zzlb zzA(zzug zzugVar, long j, long j2, long j3, boolean z, int i) {
        List listZzn;
        zzyc zzycVar;
        zzwj zzwjVar;
        this.zzO = (!this.zzO && j == this.zzy.zzs && zzugVar.equals(this.zzy.zzb)) ? false : true;
        zzS();
        zzlb zzlbVar = this.zzy;
        zzwj zzwjVarZzh = zzlbVar.zzh;
        zzyc zzycVarZzi = zzlbVar.zzi;
        List list = zzlbVar.zzj;
        if (!this.zzs.zzj()) {
            if (zzugVar.equals(this.zzy.zzb)) {
                listZzn = list;
            } else {
                zzycVar = this.zzf;
                zzwjVar = zzwj.zza;
                listZzn = zzfxn.zzn();
            }
            if (z) {
                this.zzz.zzc(i);
            }
            return this.zzy.zzb(zzugVar, j, j2, j3, zzu(), zzwjVar, zzycVar, listZzn);
        }
        zzkl zzklVarZze = this.zzr.zze();
        zzwjVarZzh = zzklVarZze == null ? zzwj.zza : zzklVarZze.zzh();
        zzycVarZzi = zzklVarZze == null ? this.zzf : zzklVarZze.zzi();
        zzxv[] zzxvVarArr = zzycVarZzi.zzc;
        zzfxk zzfxkVar = new zzfxk();
        boolean z2 = false;
        for (zzxv zzxvVar : zzxvVarArr) {
            if (zzxvVar != null) {
                zzay zzayVar = zzxvVar.zze(0).zzl;
                if (zzayVar == null) {
                    zzfxkVar.zzf(new zzay(-9223372036854775807L, new zzax[0]));
                } else {
                    zzfxkVar.zzf(zzayVar);
                    z2 = true;
                }
            }
        }
        zzfxn zzfxnVarZzi = z2 ? zzfxkVar.zzi() : zzfxn.zzn();
        if (zzklVarZze != null) {
            zzkm zzkmVar = zzklVarZze.zzg;
            if (zzkmVar.zzc != j2) {
                zzklVarZze.zzg = zzkmVar.zza(j2);
            }
        }
        zzkl zzklVarZze2 = this.zzr.zze();
        if (zzklVarZze2 != null) {
            zzyc zzycVarZzi2 = zzklVarZze2.zzi();
            for (int i2 = 0; i2 < 2; i2++) {
                if (zzycVarZzi2.zzb(i2)) {
                    if (this.zzb[i2].zzb() != 1) {
                        break;
                    }
                    int i3 = zzycVarZzi2.zzb[i2].zzb;
                }
            }
        }
        listZzn = zzfxnVarZzi;
        zzwjVar = zzwjVarZzh;
        zzycVar = zzycVarZzi;
        if (z) {
            this.zzz.zzc(i);
        }
        return this.zzy.zzb(zzugVar, j, j2, j3, zzu(), zzwjVar, zzycVar, listZzn);
    }

    private final void zzB(int i) {
        int iZza = this.zzb[i].zza();
        this.zzb[i].zzd(this.zzo);
        zzO(i, false);
        this.zzJ -= iZza;
    }

    private final void zzC() {
        for (int i = 0; i < 2; i++) {
            zzB(i);
        }
    }

    private final void zzD() throws zzib {
        zzE(new boolean[2], this.zzr.zzh().zzf());
    }

    private final void zzE(boolean[] zArr, long j) throws zzib {
        zzkl zzklVarZzh = this.zzr.zzh();
        zzyc zzycVarZzi = zzklVarZzh.zzi();
        for (int i = 0; i < 2; i++) {
            if (!zzycVarZzi.zzb(i)) {
                this.zzb[i].zzl();
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (zzycVarZzi.zzb(i2)) {
                boolean z = zArr[i2];
                zzko zzkoVar = this.zzr;
                zzlo[] zzloVarArr = this.zzb;
                zzkl zzklVarZzh2 = zzkoVar.zzh();
                zzlo zzloVar = zzloVarArr[i2];
                if (zzloVar.zza() <= 0) {
                    boolean z2 = zzklVarZzh2 == this.zzr.zze();
                    zzyc zzycVarZzi2 = zzklVarZzh2.zzi();
                    zzln zzlnVar = zzycVarZzi2.zzb[i2];
                    zzab[] zzabVarArrZzan = zzan(zzycVarZzi2.zzc[i2]);
                    boolean z3 = zzal() && this.zzy.zze == 3;
                    boolean z4 = !z && z3;
                    this.zzJ++;
                    zzloVar.zze(zzlnVar, zzabVarArrZzan, zzklVarZzh2.zzc[i2], this.zzL, z4, z2, j, zzklVarZzh2.zze(), zzklVarZzh2.zzg.zza, this.zzo);
                    zzloVar.zzg(11, new zzjv(this));
                    if (z3 && z2) {
                        zzloVar.zzr();
                    }
                }
            }
        }
        zzklVarZzh.zzh = true;
    }

    private final void zzF(IOException iOException, int i) {
        zzko zzkoVar = this.zzr;
        zzib zzibVarZzc = zzib.zzc(iOException, i);
        zzkl zzklVarZze = zzkoVar.zze();
        if (zzklVarZze != null) {
            zzibVarZzc = zzibVarZzc.zza(zzklVarZze.zzg.zza);
        }
        zzdo.zzd("ExoPlayerImplInternal", "Playback error", zzibVarZzc);
        zzab(false, false);
        this.zzy = this.zzy.zzd(zzibVarZzc);
    }

    private final void zzG(boolean z) {
        zzkl zzklVarZzd = this.zzr.zzd();
        zzug zzugVar = zzklVarZzd == null ? this.zzy.zzb : zzklVarZzd.zzg.zza;
        boolean z2 = !this.zzy.zzk.equals(zzugVar);
        if (z2) {
            this.zzy = this.zzy.zza(zzugVar);
        }
        zzlb zzlbVar = this.zzy;
        zzlbVar.zzq = zzklVarZzd == null ? zzlbVar.zzs : zzklVarZzd.zzc();
        this.zzy.zzr = zzu();
        if ((z2 || z) && zzklVarZzd != null && zzklVarZzd.zze) {
            zzae(zzklVarZzd.zzg.zza, zzklVarZzd.zzh(), zzklVarZzd.zzi());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0378: MOVE (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:184:0x0377 */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.android.gms.internal.ads.zzkc] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    private final void zzH(zzbq zzbqVar, boolean z) throws Throwable {
        zzug zzugVar;
        zzbo zzboVar;
        zzbp zzbpVar;
        int i;
        long j;
        Object obj;
        int iZzg;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        long j2;
        boolean z7;
        long jZzw;
        boolean z8;
        boolean z9;
        boolean z10;
        zzug zzugVarZzh;
        long j3;
        int i2;
        boolean z11;
        int iZzg2;
        boolean z12;
        boolean z13;
        boolean z14;
        ?? r8;
        ?? r11;
        boolean z15;
        boolean z16;
        Throwable th;
        ?? r12;
        boolean z17;
        long jZze;
        boolean z18;
        zzkc zzkcVar;
        boolean z19;
        zzkc zzkcVar2;
        zzkc zzkcVar3 = this;
        zzlb zzlbVar = zzkcVar3.zzy;
        zzka zzkaVar = zzkcVar3.zzK;
        int i3 = zzkcVar3.zzG;
        boolean z20 = zzkcVar3.zzH;
        if (zzbqVar.zzo()) {
            zzugVarZzh = zzlb.zzh();
            j3 = -9223372036854775807L;
            z8 = false;
            z9 = true;
            z10 = false;
            z7 = true;
            jZzw = 0;
            j = 0;
            r8 = zzkaVar;
        } else {
            zzbo zzboVar2 = zzkcVar3.zzm;
            zzug zzugVar2 = zzlbVar.zzb;
            Object obj2 = zzugVar2.zza;
            boolean zZzak = zzak(zzlbVar, zzboVar2);
            long jLongValue = (zzlbVar.zzb.zzb() || zZzak) ? zzlbVar.zzc : zzlbVar.zzs;
            zzbp zzbpVar2 = zzkcVar3.zzl;
            if (zzkaVar != null) {
                zzugVar = zzugVar2;
                zzboVar = zzboVar2;
                Pair pairZzz = zzz(zzbqVar, zzkaVar, true, i3, z20, zzbpVar2, zzboVar);
                if (pairZzz == null) {
                    iZzg2 = zzbqVar.zzg(z20);
                    jLongValue = jLongValue;
                    obj = obj2;
                    z13 = false;
                    z12 = false;
                    z14 = true;
                } else {
                    if (zzkaVar.zzc == -9223372036854775807L) {
                        iZzg2 = zzbqVar.zzn(pairZzz.first, zzboVar).zzc;
                        jLongValue = jLongValue;
                        obj = obj2;
                        z11 = false;
                    } else {
                        Object obj3 = pairZzz.first;
                        jLongValue = ((Long) pairZzz.second).longValue();
                        obj = obj3;
                        z11 = true;
                        iZzg2 = -1;
                    }
                    z12 = zzlbVar.zze == 4;
                    z13 = z11;
                    z14 = false;
                }
                z2 = z12;
                z3 = z14;
                iZzg = iZzg2;
                zzbpVar = zzbpVar2;
                i = -1;
                j = 0;
                z4 = z13;
            } else {
                zzugVar = zzugVar2;
                zzboVar = zzboVar2;
                zzbpVar = zzbpVar2;
                if (zzlbVar.zza.zzo()) {
                    iZzg = zzbqVar.zzg(z20);
                    obj = obj2;
                    z5 = false;
                    z3 = false;
                    i = -1;
                } else if (zzbqVar.zza(obj2) == -1) {
                    i = -1;
                    int iZzb = zzb(zzbpVar, zzboVar, i3, z20, obj2, zzlbVar.zza, zzbqVar);
                    if (iZzb == -1) {
                        iZzb = zzbqVar.zzg(z20);
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    iZzg = iZzb;
                    z3 = z6;
                    obj = obj2;
                    z5 = false;
                } else {
                    i = -1;
                    if (jLongValue == -9223372036854775807L) {
                        iZzg = zzbqVar.zzn(obj2, zzboVar).zzc;
                        obj = obj2;
                        z5 = false;
                        z3 = false;
                    } else if (zZzak) {
                        zzlbVar.zza.zzn(zzugVar.zza, zzboVar);
                        zzbpVar = zzbpVar;
                        j = 0;
                        if (zzlbVar.zza.zze(zzboVar.zzc, zzbpVar, 0L).zzn == zzlbVar.zza.zza(zzugVar.zza)) {
                            Pair pairZzl = zzbqVar.zzl(zzbpVar, zzboVar, zzbqVar.zzn(obj2, zzboVar).zzc, jLongValue);
                            Object obj4 = pairZzl.first;
                            jLongValue = ((Long) pairZzl.second).longValue();
                            obj = obj4;
                        } else {
                            obj = obj2;
                            jLongValue = jLongValue;
                        }
                        iZzg = -1;
                        z2 = false;
                        z3 = false;
                        z4 = true;
                    } else {
                        zzbpVar = zzbpVar;
                        j = 0;
                        jLongValue = jLongValue;
                        iZzg = -1;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                    }
                }
                z4 = false;
                j = 0;
                z2 = z5;
            }
            if (iZzg != i) {
                obj = obj2;
                Pair pairZzl2 = zzbqVar.zzl(zzbpVar, zzboVar, iZzg, -9223372036854775807L);
                Object obj5 = pairZzl2.first;
                long jLongValue2 = ((Long) pairZzl2.second).longValue();
                obj = obj5;
                j2 = jLongValue2;
                jLongValue = -9223372036854775807L;
            } else {
                obj = obj2;
                j2 = jLongValue;
            }
            zzug zzugVarZzk = zzkcVar3.zzr.zzk(zzbqVar, obj, j2);
            int i4 = zzugVarZzk.zze;
            boolean z21 = zzugVar.zza.equals(obj) && !zzugVar.zzb() && !zzugVarZzk.zzb() && (i4 == i || ((i2 = zzugVar.zze) != i && i4 >= i2));
            zzbo zzboVarZzn = zzbqVar.zzn(obj, zzboVar);
            if (!zZzak && jLongValue == jLongValue && zzugVar.zza.equals(zzugVarZzk.zza)) {
                if (zzugVar.zzb()) {
                    zzboVarZzn.zzk(zzugVar.zzb);
                }
                if (zzugVarZzk.zzb()) {
                    zzboVarZzn.zzk(zzugVarZzk.zzb);
                }
            }
            z7 = true;
            if (true == z21) {
                zzugVarZzk = zzugVar;
            }
            if (zzugVarZzk.zzb()) {
                if (zzugVarZzk.equals(zzugVar)) {
                    j2 = zzlbVar.zzs;
                } else {
                    zzbqVar.zzn(zzugVarZzk.zza, zzboVar);
                    if (zzugVarZzk.zzc == zzboVar.zze(zzugVarZzk.zzb)) {
                        zzboVar.zzh();
                    }
                    j2 = j;
                }
            }
            jZzw = j2;
            z8 = z2;
            z9 = z3;
            z10 = z4;
            zzugVarZzh = zzugVarZzk;
            j3 = jLongValue;
            r8 = z2;
        }
        boolean z22 = (zzkcVar3.zzy.zzb.equals(zzugVarZzh) && jZzw == zzkcVar3.zzy.zzs) ? false : true;
        if (z9) {
            try {
                if (zzkcVar3.zzy.zze != z7) {
                    zzkcVar3.zzZ(4);
                }
                zzkcVar3.zzR(false, false, false, z7);
            } catch (Throwable th2) {
                th = th2;
                z16 = z10;
                z15 = false;
                r11 = zzkcVar3;
            }
        }
        zzlo[] zzloVarArr = zzkcVar3.zzb;
        for (int i5 = 0; i5 < 2; i5++) {
            zzloVarArr[i5].zzp(zzbqVar);
        }
        try {
            if (z22) {
                z18 = z10;
                zzkcVar2 = zzkcVar3;
                if (!zzbqVar.zzo()) {
                    for (zzkl zzklVarZze = zzkcVar2.zzr.zze(); zzklVarZze != null; zzklVarZze = zzklVarZze.zzg()) {
                        if (zzklVarZze.zzg.zza.equals(zzugVarZzh)) {
                            zzkcVar = zzkcVar2;
                            zzklVarZze.zzg = zzkcVar2.zzr.zzj(zzbqVar, zzklVarZze.zzg);
                            zzklVarZze.zzr();
                        } else {
                            zzkcVar = zzkcVar2;
                        }
                    }
                    zzkcVar = zzkcVar2;
                    jZzw = zzkcVar2.zzw(zzugVarZzh, jZzw, z8);
                    zzkcVar = zzkcVar2;
                }
            } else {
                try {
                    zzko zzkoVar = zzkcVar3.zzr;
                    long j4 = zzkcVar3.zzL;
                    zzkl zzklVarZzh = zzkoVar.zzh();
                    if (zzklVarZzh != null) {
                        jZze = zzklVarZzh.zze();
                        z18 = z10;
                        if (zzklVarZzh.zze) {
                            long jMax = jZze;
                            int i6 = 0;
                            zzkc zzkcVar4 = zzkcVar3;
                            while (true) {
                                try {
                                    zzlo[] zzloVarArr2 = zzkcVar4.zzb;
                                    if (i6 >= 2) {
                                        jZze = jMax;
                                        break;
                                    }
                                    if (zzloVarArr2[i6].zzy(zzklVarZzh)) {
                                        long jZzc = zzkcVar4.zzb[i6].zzc(zzklVarZzh);
                                        jZze = Long.MIN_VALUE;
                                        if (jZzc == Long.MIN_VALUE) {
                                            break;
                                        } else {
                                            jMax = Math.max(jZzc, jMax);
                                        }
                                        r11 = this;
                                    }
                                    i6++;
                                    zzkcVar4 = this;
                                } catch (Throwable th3) {
                                    th = th3;
                                    z16 = z18;
                                    z15 = false;
                                }
                            }
                        }
                        zzlb zzlbVar2 = r11.zzy;
                        zzag(zzbqVar, zzugVarZzh, zzlbVar2.zza, zzlbVar2.zzb, true != z16 ? -9223372036854775807L : jZzw, false);
                        if (z22 || j3 != r11.zzy.zzc) {
                            zzlb zzlbVar3 = r11.zzy;
                            Object obj6 = zzlbVar3.zzb.zza;
                            zzbq zzbqVar2 = zzlbVar3.zza;
                            r11.zzy = zzA(zzugVarZzh, jZzw, j3, r11.zzy.zzd, z22 && z && !zzbqVar2.zzo() && !zzbqVar2.zzn(obj6, r11.zzm).zzf, zzbqVar.zza(obj6) == -1 ? 4 : 3);
                        }
                        zzS();
                        r11.zzU(zzbqVar, r11.zzy.zza);
                        r11.zzy = r11.zzy.zzf(zzbqVar);
                        if (!zzbqVar.zzo()) {
                            r11.zzK = z15;
                        }
                        r11.zzG(false);
                        r11.zzi.zzi(2);
                        throw th;
                    }
                    z18 = z10;
                    jZze = j;
                    try {
                        if (zzkoVar.zzw(zzbqVar, j4, jZze)) {
                            zzkcVar = this;
                        } else {
                            zzkc zzkcVar5 = this;
                            zzkcVar5.zzW(false);
                            zzkcVar = zzkcVar5;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        z16 = z18;
                        z15 = false;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    z16 = z10;
                    r12 = zzkcVar3;
                    z15 = false;
                    r11 = r12;
                }
            }
            zzkcVar = zzkcVar2;
            zzlb zzlbVar4 = zzkcVar.zzy;
            zzkc zzkcVar6 = zzkcVar;
            zzag(zzbqVar, zzugVarZzh, zzlbVar4.zza, zzlbVar4.zzb, true != z18 ? -9223372036854775807L : jZzw, false);
            if (z22 || j3 != zzkcVar6.zzy.zzc) {
                zzlb zzlbVar5 = zzkcVar6.zzy;
                Object obj7 = zzlbVar5.zzb.zza;
                zzbq zzbqVar3 = zzlbVar5.zza;
                z19 = false;
                zzkcVar6.zzy = zzA(zzugVarZzh, jZzw, j3, zzkcVar6.zzy.zzd, z22 && z && !zzbqVar3.zzo() && !zzbqVar3.zzn(obj7, zzkcVar6.zzm).zzf, zzbqVar.zza(obj7) == -1 ? 4 : 3);
            } else {
                z19 = false;
            }
            zzS();
            zzkcVar6.zzU(zzbqVar, zzkcVar6.zzy.zza);
            zzkcVar6.zzy = zzkcVar6.zzy.zzf(zzbqVar);
            if (!zzbqVar.zzo()) {
                zzkcVar6.zzK = null;
            }
            zzkcVar6.zzG(z19);
            zzkcVar6.zzi.zzi(2);
        } catch (Throwable th6) {
            th = th6;
            r12 = r8;
            z16 = z17;
        }
    }

    private final void zzI(zzbe zzbeVar, boolean z) throws zzib {
        zzJ(zzbeVar, zzbeVar.zzb, true, z);
    }

    private final void zzJ(zzbe zzbeVar, float f, boolean z, boolean z2) throws zzib {
        int i;
        zzkc zzkcVar = this;
        if (z) {
            if (z2) {
                zzkcVar.zzz.zza(1);
            }
            zzlb zzlbVar = zzkcVar.zzy;
            zzbq zzbqVar = zzlbVar.zza;
            zzug zzugVar = zzlbVar.zzb;
            long j = zzlbVar.zzc;
            long j2 = zzlbVar.zzd;
            int i2 = zzlbVar.zze;
            zzib zzibVar = zzlbVar.zzf;
            boolean z3 = zzlbVar.zzg;
            zzwj zzwjVar = zzlbVar.zzh;
            zzyc zzycVar = zzlbVar.zzi;
            List list = zzlbVar.zzj;
            zzug zzugVar2 = zzlbVar.zzk;
            boolean z4 = zzlbVar.zzl;
            int i3 = zzlbVar.zzm;
            int i4 = zzlbVar.zzn;
            long j3 = zzlbVar.zzq;
            long j4 = zzlbVar.zzr;
            long j5 = zzlbVar.zzs;
            long j6 = zzlbVar.zzt;
            boolean z5 = zzlbVar.zzp;
            zzkcVar = this;
            zzkcVar.zzy = new zzlb(zzbqVar, zzugVar, j, j2, i2, zzibVar, z3, zzwjVar, zzycVar, list, zzugVar2, z4, i3, i4, zzbeVar, j3, j4, j5, j6, false);
        }
        float f2 = zzbeVar.zzb;
        zzkl zzklVarZze = zzkcVar.zzr.zze();
        while (true) {
            i = 0;
            if (zzklVarZze == null) {
                break;
            }
            zzxv[] zzxvVarArr = zzklVarZze.zzi().zzc;
            int length = zzxvVarArr.length;
            while (i < length) {
                zzxv zzxvVar = zzxvVarArr[i];
                i++;
            }
            zzklVarZze = zzklVarZze.zzg();
        }
        zzlo[] zzloVarArr = zzkcVar.zzb;
        while (i < 2) {
            zzloVarArr[i].zzo(f, zzbeVar.zzb);
            i++;
        }
    }

    private final void zzK() {
        long jZze;
        long jZze2;
        boolean zZzh;
        if (zzap(this.zzr.zzd())) {
            zzkl zzklVarZzd = this.zzr.zzd();
            long jZzv = zzv(zzklVarZzd.zzd());
            if (zzklVarZzd == this.zzr.zze()) {
                jZze = this.zzL;
                jZze2 = zzklVarZzd.zze();
            } else {
                jZze = this.zzL - zzklVarZzd.zze();
                jZze2 = zzklVarZzd.zzg.zzb;
            }
            zzkf zzkfVar = new zzkf(this.zzu, this.zzy.zza, zzklVarZzd.zzg.zza, jZze - jZze2, jZzv, this.zzo.zzc().zzb, this.zzy.zzl, this.zzD, zzam(this.zzy.zza, zzklVarZzd.zzg.zza) ? this.zzT.zzb() : -9223372036854775807L);
            boolean zZzh2 = this.zzg.zzh(zzkfVar);
            zzkl zzklVarZze = this.zzr.zze();
            if (zZzh2 || !zzklVarZze.zze || jZzv >= 500000 || this.zzn <= 0) {
                zZzh = zZzh2;
            } else {
                zzklVarZze.zza.zzj(this.zzy.zzs, false);
                zZzh = this.zzg.zzh(zzkfVar);
            }
        } else {
            zZzh = false;
        }
        this.zzF = zZzh;
        if (zZzh) {
            zzkl zzklVarZzd2 = this.zzr.zzd();
            zzklVarZzd2.getClass();
            zzkh zzkhVar = new zzkh();
            zzkhVar.zze(this.zzL - zzklVarZzd2.zze());
            zzkhVar.zzf(this.zzo.zzc().zzb);
            zzkhVar.zzd(this.zzE);
            zzklVarZzd2.zzk(new zzkj(zzkhVar, null));
        }
        zzad();
    }

    private final void zzL() {
        this.zzr.zzn();
        zzkl zzklVarZzg = this.zzr.zzg();
        if (zzklVarZzg != null) {
            if ((!zzklVarZzg.zzd || zzklVarZzg.zze) && !zzklVarZzg.zza.zzp()) {
                if (this.zzg.zzi(this.zzy.zza, zzklVarZzg.zzg.zza, zzklVarZzg.zze ? zzklVarZzg.zza.zzb() : 0L)) {
                    if (!zzklVarZzg.zzd) {
                        zzklVarZzg.zzm(this, zzklVarZzg.zzg.zzb);
                        return;
                    }
                    zzkh zzkhVar = new zzkh();
                    zzkhVar.zze(this.zzL - zzklVarZzg.zze());
                    zzkhVar.zzf(this.zzo.zzc().zzb);
                    zzkhVar.zzd(this.zzE);
                    zzklVarZzg.zzk(new zzkj(zzkhVar, null));
                }
            }
        }
    }

    private final void zzM() {
        this.zzz.zzb(this.zzy);
        if (this.zzz.zze) {
            zzix zzixVar = this.zzS;
            zzixVar.zza.zzN(this.zzz);
            this.zzz = new zzjz(this.zzy);
        }
    }

    private final void zzN(int i) throws zzib, IOException {
        zzlo zzloVar = this.zzb[i];
        try {
            zzloVar.zzh();
        } catch (IOException | RuntimeException e) {
            zzloVar.zzb();
            throw e;
        }
    }

    private final void zzO(final int i, final boolean z) {
        boolean[] zArr = this.zzd;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.zzw.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjr
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzf(i, z);
                }
            });
        }
    }

    private final void zzP() throws zzib {
        int i;
        float f = this.zzo.zzc().zzb;
        zzko zzkoVar = this.zzr;
        zzkl zzklVarZze = zzkoVar.zze();
        zzkl zzklVarZzh = zzkoVar.zzh();
        zzyc zzycVar = null;
        boolean z = true;
        while (zzklVarZze != null && zzklVarZze.zze) {
            zzlb zzlbVar = this.zzy;
            zzyc zzycVarZzj = zzklVarZze.zzj(f, zzlbVar.zza, zzlbVar.zzl);
            zzyc zzycVar2 = zzklVarZze == this.zzr.zze() ? zzycVarZzj : zzycVar;
            zzyc zzycVarZzi = zzklVarZze.zzi();
            boolean z2 = false;
            if (zzycVarZzi != null) {
                if (zzycVarZzi.zzc.length == zzycVarZzj.zzc.length) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= zzycVarZzj.zzc.length) {
                            if (zzklVarZze != zzklVarZzh) {
                                z2 = true;
                            }
                            z &= z2;
                            zzklVarZze = zzklVarZze.zzg();
                            zzycVar = zzycVar2;
                        } else if (zzycVarZzj.zza(zzycVarZzi, i2)) {
                            i2++;
                        }
                    }
                }
            }
            if (z) {
                zzko zzkoVar2 = this.zzr;
                zzkl zzklVarZze2 = zzkoVar2.zze();
                boolean zZzu = zzkoVar2.zzu(zzklVarZze2);
                boolean[] zArr = new boolean[2];
                zzycVar2.getClass();
                long jZzb = zzklVarZze2.zzb(zzycVar2, this.zzy.zzs, zZzu, zArr);
                zzlb zzlbVar2 = this.zzy;
                boolean z3 = (zzlbVar2.zze == 4 || jZzb == zzlbVar2.zzs) ? false : true;
                zzlb zzlbVar3 = this.zzy;
                i = 2;
                this.zzy = zzA(zzlbVar3.zzb, jZzb, zzlbVar3.zzc, zzlbVar3.zzd, z3, 5);
                if (z3) {
                    zzT(jZzb);
                }
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (true) {
                    zzlo[] zzloVarArr = this.zzb;
                    if (i3 >= 2) {
                        break;
                    }
                    int iZza = zzloVarArr[i3].zza();
                    zArr2[i3] = 1 == iZza;
                    if (iZza != 0) {
                        if (!this.zzb[i3].zzy(zzklVarZze2)) {
                            zzB(i3);
                        } else if (zArr[i3]) {
                            this.zzb[i3].zzm(this.zzL);
                        }
                    }
                    i3++;
                }
                zzE(zArr2, this.zzL);
            } else {
                i = 2;
                this.zzr.zzu(zzklVarZze);
                if (zzklVarZze.zze) {
                    zzklVarZze.zza(zzycVarZzj, Math.max(zzklVarZze.zzg.zzb, this.zzL - zzklVarZze.zze()), false);
                }
            }
            zzG(true);
            if (this.zzy.zze != 4) {
                zzK();
                zzaf();
                this.zzi.zzi(i);
                return;
            }
            return;
        }
    }

    private final void zzQ() throws zzib {
        zzP();
        zzW(true);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091 A[PHI: r2 r7 r9
  0x0091: PHI (r2v2 com.google.android.gms.internal.ads.zzug) = (r2v1 com.google.android.gms.internal.ads.zzug), (r2v19 com.google.android.gms.internal.ads.zzug) binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0091: PHI (r7v3 long) = (r7v2 long), (r7v7 long) binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0091: PHI (r9v2 long) = (r9v1 long), (r9v4 long) binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00dc A[PHI: r0
  0x00dc: PHI (r0v12 com.google.android.gms.internal.ads.zzbq) = 
  (r0v11 com.google.android.gms.internal.ads.zzbq)
  (r0v11 com.google.android.gms.internal.ads.zzbq)
  (r0v17 com.google.android.gms.internal.ads.zzbq)
  (r0v17 com.google.android.gms.internal.ads.zzbq)
 binds: [B:29:0x00a0, B:31:0x00a4, B:33:0x00b5, B:35:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    private final void zzR(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        long j2;
        zzbq zzbqVar;
        zzug zzugVar;
        this.zzi.zzf(2);
        this.zzP = null;
        boolean z5 = true;
        zzah(false, true);
        this.zzo.zzi();
        this.zzL = 1000000000000L;
        try {
            zzC();
        } catch (RuntimeException e) {
            zzdo.zzd("ExoPlayerImplInternal", "Disable failed.", e);
        }
        if (z) {
            zzlo[] zzloVarArr = this.zzb;
            for (int i = 0; i < 2; i++) {
                try {
                    zzloVarArr[i].zzl();
                } catch (RuntimeException e2) {
                    zzdo.zzd("ExoPlayerImplInternal", "Reset failed.", e2);
                }
            }
        }
        this.zzJ = 0;
        zzlb zzlbVar = this.zzy;
        zzug zzugVar2 = zzlbVar.zzb;
        long jLongValue = zzlbVar.zzs;
        long j3 = (this.zzy.zzb.zzb() || zzak(this.zzy, this.zzm)) ? this.zzy.zzc : this.zzy.zzs;
        if (z2) {
            this.zzK = null;
            Pair pairZzy = zzy(this.zzy.zza);
            zzugVar2 = (zzug) pairZzy.first;
            jLongValue = ((Long) pairZzy.second).longValue();
            j3 = -9223372036854775807L;
            if (zzugVar2.equals(this.zzy.zzb)) {
                j = jLongValue;
                j2 = j3;
                z5 = false;
            } else {
                j = jLongValue;
                j2 = -9223372036854775807L;
            }
        } else {
            j = jLongValue;
            j2 = j3;
            z5 = false;
        }
        this.zzr.zzl();
        this.zzF = false;
        zzbq zzbqVarZzx = this.zzy.zza;
        if (z3 && (zzbqVarZzx instanceof zzlh)) {
            zzbqVarZzx = ((zzlh) zzbqVarZzx).zzx(this.zzs.zzq());
            if (zzugVar2.zzb != -1) {
                zzbqVarZzx.zzn(zzugVar2.zza, this.zzm);
                zzbo zzboVar = this.zzm;
                zzbp zzbpVar = this.zzl;
                zzbqVarZzx.zze(zzboVar.zzc, zzbpVar, 0L);
                if (zzbpVar.zzb()) {
                    zzbqVar = zzbqVarZzx;
                    zzugVar = new zzug(zzugVar2.zza, zzugVar2.zzd);
                } else {
                    zzbqVar = zzbqVarZzx;
                    zzugVar = zzugVar2;
                }
            } else {
                zzbqVar = zzbqVarZzx;
                zzugVar = zzugVar2;
            }
        } else {
            zzbqVar = zzbqVarZzx;
            zzugVar = zzugVar2;
        }
        zzlb zzlbVar2 = this.zzy;
        int i2 = zzlbVar2.zze;
        zzib zzibVar = z4 ? null : zzlbVar2.zzf;
        zzwj zzwjVar = z5 ? zzwj.zza : zzlbVar2.zzh;
        zzyc zzycVar = z5 ? this.zzf : this.zzy.zzi;
        List listZzn = z5 ? zzfxn.zzn() : this.zzy.zzj;
        zzlb zzlbVar3 = this.zzy;
        this.zzy = new zzlb(zzbqVar, zzugVar, j2, j, i2, zzibVar, false, zzwjVar, zzycVar, listZzn, zzugVar, zzlbVar3.zzl, zzlbVar3.zzm, zzlbVar3.zzn, zzlbVar3.zzo, j, 0L, j, 0L, false);
        if (z3) {
            this.zzr.zzp();
            this.zzs.zzh();
        }
    }

    private final void zzS() {
        zzkl zzklVarZze = this.zzr.zze();
        boolean z = false;
        if (zzklVarZze != null && zzklVarZze.zzg.zzh && this.zzB) {
            z = true;
        }
        this.zzC = z;
    }

    private final void zzT(long j) throws zzib {
        zzkl zzklVarZze = this.zzr.zze();
        long jZze = j + (zzklVarZze == null ? 1000000000000L : zzklVarZze.zze());
        this.zzL = jZze;
        this.zzo.zzf(jZze);
        zzlo[] zzloVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            zzloVarArr[i].zzm(this.zzL);
        }
        for (zzkl zzklVarZze2 = this.zzr.zze(); zzklVarZze2 != null; zzklVarZze2 = zzklVarZze2.zzg()) {
            for (zzxv zzxvVar : zzklVarZze2.zzi().zzc) {
            }
        }
    }

    private final void zzU(zzbq zzbqVar, zzbq zzbqVar2) {
        if (zzbqVar.zzo() && zzbqVar2.zzo()) {
            return;
        }
        int size = this.zzp.size() - 1;
        if (size < 0) {
            Collections.sort(this.zzp);
            return;
        }
        zzjy zzjyVar = (zzjy) this.zzp.get(size);
        Object obj = zzjyVar.zzb;
        zzlf zzlfVar = zzjyVar.zza;
        int i = zzei.zza;
        zzlf zzlfVar2 = zzjyVar.zza;
        throw null;
    }

    private final void zzV(long j) {
        this.zzi.zzj(2, j + ((this.zzy.zze != 3 || zzal()) ? zza : 1000L));
    }

    private final void zzW(boolean z) throws zzib {
        zzug zzugVar = this.zzr.zze().zzg.zza;
        long jZzx = zzx(zzugVar, this.zzy.zzs, true, false);
        if (jZzx != this.zzy.zzs) {
            zzlb zzlbVar = this.zzy;
            this.zzy = zzA(zzugVar, jZzx, zzlbVar.zzc, zzlbVar.zzd, z, 5);
        }
    }

    private final void zzX(zzbe zzbeVar) {
        this.zzi.zzf(16);
        this.zzo.zzg(zzbeVar);
    }

    private final void zzY(boolean z, int i, boolean z2, int i2) throws zzib {
        this.zzz.zza(z2 ? 1 : 0);
        this.zzy = this.zzy.zzc(z, i2, i);
        zzah(false, false);
        for (zzkl zzklVarZze = this.zzr.zze(); zzklVarZze != null; zzklVarZze = zzklVarZze.zzg()) {
            for (zzxv zzxvVar : zzklVarZze.zzi().zzc) {
            }
        }
        if (!zzal()) {
            zzac();
            zzaf();
            return;
        }
        int i3 = this.zzy.zze;
        if (i3 == 3) {
            this.zzo.zzh();
            zzaa();
            this.zzi.zzi(2);
        } else if (i3 == 2) {
            this.zzi.zzi(2);
        }
    }

    private final void zzZ(int i) {
        zzlb zzlbVar = this.zzy;
        if (zzlbVar.zze != i) {
            if (i != 2) {
                this.zzQ = -9223372036854775807L;
            }
            this.zzy = zzlbVar.zze(i);
        }
    }

    private final void zzaa() throws zzib {
        zzkl zzklVarZze = this.zzr.zze();
        if (zzklVarZze == null) {
            return;
        }
        zzyc zzycVarZzi = zzklVarZze.zzi();
        for (int i = 0; i < 2; i++) {
            if (zzycVarZzi.zzb(i)) {
                this.zzb[i].zzr();
            }
        }
    }

    private final void zzab(boolean z, boolean z2) {
        zzR(z || !this.zzI, false, true, false);
        this.zzz.zza(z2 ? 1 : 0);
        this.zzg.zze(this.zzu);
        zzZ(1);
    }

    private final void zzac() throws zzib {
        this.zzo.zzi();
        int i = 0;
        while (true) {
            zzlo[] zzloVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            zzloVarArr[i].zzs();
            i++;
        }
    }

    private final void zzad() {
        zzkl zzklVarZzd = this.zzr.zzd();
        boolean z = this.zzF || (zzklVarZzd != null && zzklVarZzd.zza.zzp());
        zzlb zzlbVar = this.zzy;
        if (z != zzlbVar.zzg) {
            zzbq zzbqVar = zzlbVar.zza;
            zzug zzugVar = zzlbVar.zzb;
            long j = zzlbVar.zzc;
            long j2 = zzlbVar.zzd;
            int i = zzlbVar.zze;
            zzib zzibVar = zzlbVar.zzf;
            zzwj zzwjVar = zzlbVar.zzh;
            zzyc zzycVar = zzlbVar.zzi;
            List list = zzlbVar.zzj;
            zzug zzugVar2 = zzlbVar.zzk;
            boolean z2 = zzlbVar.zzl;
            int i2 = zzlbVar.zzm;
            int i3 = zzlbVar.zzn;
            zzbe zzbeVar = zzlbVar.zzo;
            long j3 = zzlbVar.zzq;
            long j4 = zzlbVar.zzr;
            long j5 = zzlbVar.zzs;
            long j6 = zzlbVar.zzt;
            boolean z3 = zzlbVar.zzp;
            this.zzy = new zzlb(zzbqVar, zzugVar, j, j2, i, zzibVar, z, zzwjVar, zzycVar, list, zzugVar2, z2, i2, i3, zzbeVar, j3, j4, j5, j6, false);
        }
    }

    private final void zzae(zzug zzugVar, zzwj zzwjVar, zzyc zzycVar) {
        long jZze;
        long jZze2;
        zzkl zzklVarZzd = this.zzr.zzd();
        zzklVarZzd.getClass();
        if (zzklVarZzd == this.zzr.zze()) {
            jZze = this.zzL;
            jZze2 = zzklVarZzd.zze();
        } else {
            jZze = this.zzL - zzklVarZzd.zze();
            jZze2 = zzklVarZzd.zzg.zzb;
        }
        this.zzg.zzf(new zzkf(this.zzu, this.zzy.zza, zzugVar, jZze - jZze2, zzv(zzklVarZzd.zzc()), this.zzo.zzc().zzb, this.zzy.zzl, this.zzD, zzam(this.zzy.zza, zzklVarZzd.zzg.zza) ? this.zzT.zzb() : -9223372036854775807L), zzwjVar, zzycVar.zzc);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ae, code lost:
    
        r8 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf() throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzaf():void");
    }

    private final void zzag(zzbq zzbqVar, zzug zzugVar, zzbq zzbqVar2, zzug zzugVar2, long j, boolean z) throws zzib {
        if (!zzam(zzbqVar, zzugVar)) {
            zzbe zzbeVar = zzugVar.zzb() ? zzbe.zza : this.zzy.zzo;
            if (this.zzo.zzc().equals(zzbeVar)) {
                return;
            }
            zzX(zzbeVar);
            zzJ(this.zzy.zzo, zzbeVar.zzb, false, false);
            return;
        }
        zzbqVar.zze(zzbqVar.zzn(zzugVar.zza, this.zzm).zzc, this.zzl, 0L);
        zzhv zzhvVar = this.zzT;
        zzal zzalVar = this.zzl.zzj;
        int i = zzei.zza;
        zzhvVar.zzd(zzalVar);
        if (j != -9223372036854775807L) {
            this.zzT.zze(zzt(zzbqVar, zzugVar.zza, j));
            return;
        }
        if (!Objects.equals(!zzbqVar2.zzo() ? zzbqVar2.zze(zzbqVar2.zzn(zzugVar2.zza, this.zzm).zzc, this.zzl, 0L).zzb : null, this.zzl.zzb) || z) {
            this.zzT.zze(-9223372036854775807L);
        }
    }

    private final void zzah(boolean z, boolean z2) {
        this.zzD = z;
        long jElapsedRealtime = -9223372036854775807L;
        if (z && !z2) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.zzE = jElapsedRealtime;
    }

    private final synchronized void zzai(zzfvf zzfvfVar, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) zzfvfVar.zza()).booleanValue() && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean zzaj() {
        zzkl zzklVarZze = this.zzr.zze();
        long j = zzklVarZze.zzg.zze;
        if (zzklVarZze.zze) {
            return j == -9223372036854775807L || this.zzy.zzs < j || !zzal();
        }
        return false;
    }

    private static boolean zzak(zzlb zzlbVar, zzbo zzboVar) {
        zzug zzugVar = zzlbVar.zzb;
        zzbq zzbqVar = zzlbVar.zza;
        return zzbqVar.zzo() || zzbqVar.zzn(zzugVar.zza, zzboVar).zzf;
    }

    private final boolean zzal() {
        zzlb zzlbVar = this.zzy;
        return zzlbVar.zzl && zzlbVar.zzn == 0;
    }

    private final boolean zzam(zzbq zzbqVar, zzug zzugVar) {
        if (!zzugVar.zzb() && !zzbqVar.zzo()) {
            zzbqVar.zze(zzbqVar.zzn(zzugVar.zza, this.zzm).zzc, this.zzl, 0L);
            if (this.zzl.zzb()) {
                zzbp zzbpVar = this.zzl;
                if (zzbpVar.zzi && zzbpVar.zzf != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzab[] zzan(zzxv zzxvVar) {
        int iZzd = zzxvVar != null ? zzxvVar.zzd() : 0;
        zzab[] zzabVarArr = new zzab[iZzd];
        for (int i = 0; i < iZzd; i++) {
            zzabVarArr[i] = zzxvVar.zze(i);
        }
        return zzabVarArr;
    }

    private static final void zzao(zzlf zzlfVar) throws zzib {
        zzlfVar.zzi();
        try {
            zzlfVar.zzc().zzu(zzlfVar.zza(), zzlfVar.zzg());
        } finally {
            zzlfVar.zzh(true);
        }
    }

    private static final boolean zzap(zzkl zzklVar) {
        if (zzklVar != null) {
            try {
                if (zzklVar.zze) {
                    zzvy[] zzvyVarArr = zzklVar.zzc;
                    for (int i = 0; i < 2; i++) {
                        zzvy zzvyVar = zzvyVarArr[i];
                        if (zzvyVar != null) {
                            zzvyVar.zzd();
                        }
                    }
                } else {
                    zzklVar.zza.zzk();
                }
                if (zzklVar.zzd() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    static int zzb(zzbp zzbpVar, zzbo zzboVar, int i, boolean z, Object obj, zzbq zzbqVar, zzbq zzbqVar2) {
        Object obj2 = zzbqVar.zze(zzbqVar.zzn(obj, zzboVar).zzc, zzbpVar, 0L).zzb;
        for (int i2 = 0; i2 < zzbqVar2.zzc(); i2++) {
            if (zzbqVar2.zze(i2, zzbpVar, 0L).zzb.equals(obj2)) {
                return i2;
            }
        }
        int iZza = zzbqVar.zza(obj);
        int iZzb = zzbqVar.zzb();
        int iZzi = iZza;
        int iZza2 = -1;
        for (int i3 = 0; i3 < iZzb && iZza2 == -1; i3++) {
            iZzi = zzbqVar.zzi(iZzi, zzboVar, zzbpVar, i, z);
            if (iZzi == -1) {
                iZza2 = -1;
                break;
            }
            iZza2 = zzbqVar2.zza(zzbqVar.zzf(iZzi));
        }
        if (iZza2 == -1) {
            return -1;
        }
        return zzbqVar2.zzd(iZza2, zzboVar, false).zzc;
    }

    public static /* synthetic */ zzkl zzd(zzkc zzkcVar, zzkm zzkmVar, long j) {
        zzyk zzykVarZzk = zzkcVar.zzg.zzk();
        long j2 = zzkcVar.zzR.zzb;
        zzyc zzycVar = zzkcVar.zzf;
        zzla zzlaVar = zzkcVar.zzs;
        return new zzkl(zzkcVar.zzc, j, zzkcVar.zze, zzykVarZzk, zzlaVar, zzkmVar, zzycVar, -9223372036854775807L);
    }

    static final /* synthetic */ void zzs(zzlf zzlfVar) {
        try {
            zzao(zzlfVar);
        } catch (zzib e) {
            zzdo.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final long zzt(zzbq zzbqVar, Object obj, long j) {
        zzbqVar.zze(zzbqVar.zzn(obj, this.zzm).zzc, this.zzl, 0L);
        zzbp zzbpVar = this.zzl;
        if (zzbpVar.zzf != -9223372036854775807L && zzbpVar.zzb()) {
            zzbp zzbpVar2 = this.zzl;
            if (zzbpVar2.zzi) {
                long j2 = zzbpVar2.zzg;
                return zzei.zzs((j2 == -9223372036854775807L ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - this.zzl.zzf) - j;
            }
        }
        return -9223372036854775807L;
    }

    private final long zzu() {
        return zzv(this.zzy.zzq);
    }

    private final long zzv(long j) {
        zzkl zzklVarZzd = this.zzr.zzd();
        if (zzklVarZzd == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzL - zzklVarZzd.zze()));
    }

    private final long zzw(zzug zzugVar, long j, boolean z) throws zzib {
        zzko zzkoVar = this.zzr;
        return zzx(zzugVar, j, zzkoVar.zze() != zzkoVar.zzh(), z);
    }

    private final long zzx(zzug zzugVar, long j, boolean z, boolean z2) throws zzib {
        zzac();
        zzah(false, true);
        if (z2 || this.zzy.zze == 3) {
            zzZ(2);
        }
        zzkl zzklVarZze = this.zzr.zze();
        zzkl zzklVarZzg = zzklVarZze;
        while (zzklVarZzg != null && !zzugVar.equals(zzklVarZzg.zzg.zza)) {
            zzklVarZzg = zzklVarZzg.zzg();
        }
        if (z || zzklVarZze != zzklVarZzg || (zzklVarZzg != null && zzklVarZzg.zze() + j < 0)) {
            zzC();
            if (zzklVarZzg != null) {
                while (this.zzr.zze() != zzklVarZzg) {
                    this.zzr.zza();
                }
                this.zzr.zzu(zzklVarZzg);
                zzklVarZzg.zzq(1000000000000L);
                zzD();
            }
        }
        if (zzklVarZzg != null) {
            this.zzr.zzu(zzklVarZzg);
            if (!zzklVarZzg.zze) {
                zzklVarZzg.zzg = zzklVarZzg.zzg.zzb(j);
            } else if (zzklVarZzg.zzf) {
                j = zzklVarZzg.zza.zze(j);
                zzklVarZzg.zza.zzj(j - this.zzn, false);
            }
            zzT(j);
            zzK();
        } else {
            this.zzr.zzl();
            zzT(j);
        }
        zzG(false);
        this.zzi.zzi(2);
        return j;
    }

    private final Pair zzy(zzbq zzbqVar) {
        long j = 0;
        if (zzbqVar.zzo()) {
            return Pair.create(zzlb.zzh(), 0L);
        }
        Pair pairZzl = zzbqVar.zzl(this.zzl, this.zzm, zzbqVar.zzg(this.zzH), -9223372036854775807L);
        zzug zzugVarZzk = this.zzr.zzk(zzbqVar, pairZzl.first, 0L);
        long jLongValue = ((Long) pairZzl.second).longValue();
        if (zzugVarZzk.zzb()) {
            zzbqVar.zzn(zzugVarZzk.zza, this.zzm);
            if (zzugVarZzk.zzc == this.zzm.zze(zzugVarZzk.zzb)) {
                this.zzm.zzh();
            }
        } else {
            j = jLongValue;
        }
        return Pair.create(zzugVarZzk, Long.valueOf(j));
    }

    private static Pair zzz(zzbq zzbqVar, zzka zzkaVar, boolean z, int i, boolean z2, zzbp zzbpVar, zzbo zzboVar) {
        zzbq zzbqVar2 = zzkaVar.zza;
        if (zzbqVar.zzo()) {
            return null;
        }
        zzbq zzbqVar3 = true == zzbqVar2.zzo() ? zzbqVar : zzbqVar2;
        try {
            Pair pairZzl = zzbqVar3.zzl(zzbpVar, zzboVar, zzkaVar.zzb, zzkaVar.zzc);
            if (zzbqVar.equals(zzbqVar3)) {
                return pairZzl;
            }
            if (zzbqVar.zza(pairZzl.first) != -1) {
                return (zzbqVar3.zzn(pairZzl.first, zzboVar).zzf && zzbqVar3.zze(zzboVar.zzc, zzbpVar, 0L).zzn == zzbqVar3.zza(pairZzl.first)) ? zzbqVar.zzl(zzbpVar, zzboVar, zzbqVar.zzn(pairZzl.first, zzboVar).zzc, zzkaVar.zzc) : pairZzl;
            }
            int iZzb = zzb(zzbpVar, zzboVar, i, z2, pairZzl.first, zzbqVar3, zzbqVar);
            if (iZzb != -1) {
                return zzbqVar.zzl(zzbpVar, zzboVar, iZzb, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 29621. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(android.os.Message r39) {
        /*
            Method dump skipped, instruction units count: 2962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zza(zzbe zzbeVar) {
        this.zzi.zzc(16, zzbeVar).zza();
    }

    public final Looper zzc() {
        return this.zzk;
    }

    final /* synthetic */ Boolean zze() {
        return Boolean.valueOf(this.zzA);
    }

    final /* synthetic */ void zzf(int i, boolean z) {
        this.zzv.zzI(i, this.zzb[i].zzb(), z);
    }

    @Override // com.google.android.gms.internal.ads.zzvz
    public final /* bridge */ /* synthetic */ void zzg(zzwa zzwaVar) {
        this.zzi.zzc(9, (zzue) zzwaVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final void zzh() {
        this.zzi.zzf(2);
        this.zzi.zzi(22);
    }

    @Override // com.google.android.gms.internal.ads.zzud
    public final void zzi(zzue zzueVar) {
        this.zzi.zzc(8, zzueVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final void zzj() {
        this.zzi.zzi(10);
    }

    public final void zzk() {
        this.zzi.zzb(29).zza();
    }

    public final void zzl(zzbq zzbqVar, int i, long j) {
        this.zzi.zzc(3, new zzka(zzbqVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final synchronized void zzm(zzlf zzlfVar) {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            this.zzi.zzc(14, zzlfVar).zza();
            return;
        }
        zzdo.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzlfVar.zzh(false);
    }

    public final void zzn(boolean z, int i, int i2) {
        this.zzi.zzd(1, z ? 1 : 0, i | (i2 << 4)).zza();
    }

    public final void zzo() {
        this.zzi.zzb(6).zza();
    }

    public final synchronized boolean zzp() {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            this.zzi.zzi(7);
            zzai(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzjq
                @Override // com.google.android.gms.internal.ads.zzfvf
                public final Object zza() {
                    return this.zza.zze();
                }
            }, this.zzt);
            return this.zzA;
        }
        return true;
    }

    public final synchronized boolean zzq(Object obj, long j) {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.zzi.zzc(30, new Pair(obj, atomicBoolean)).zza();
            if (j != -9223372036854775807L) {
                zzai(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzjt
                    @Override // com.google.android.gms.internal.ads.zzfvf
                    public final Object zza() {
                        return Boolean.valueOf(atomicBoolean.get());
                    }
                }, j);
                return atomicBoolean.get();
            }
        }
        return true;
    }

    public final void zzr(List list, int i, long j, zzwb zzwbVar) {
        this.zzi.zzc(17, new zzjw(list, zzwbVar, i, j, null)).zza();
    }
}

package com.google.android.gms.internal.ads;

import com.unity3d.services.core.device.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaiv implements zzacn, zzadm {
    private int zzA;
    private zzagv zzB;
    private final zzakd zza;
    private final int zzb;
    private final zzdy zzc;
    private final zzdy zzd;
    private final zzdy zze;
    private final zzdy zzf;
    private final ArrayDeque zzg;
    private final zzaiz zzh;
    private final List zzi;
    private zzfxn zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    private zzdy zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private zzacq zzv;
    private zzaiu[] zzw;
    private long[][] zzx;
    private int zzy;
    private long zzz;

    @Deprecated
    public zzaiv() {
        this(zzakd.zza, 16);
    }

    private static int zzj(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzk(zzaje zzajeVar, long j) {
        int iZza = zzajeVar.zza(j);
        return iZza == -1 ? zzajeVar.zzb(j) : iZza;
    }

    private static long zzl(zzaje zzajeVar, long j, long j2) {
        int iZzk = zzk(zzajeVar, j);
        return iZzk == -1 ? j2 : Math.min(zzajeVar.zzc[iZzk], j2);
    }

    private final void zzm() {
        this.zzk = 0;
        this.zzn = 0;
    }

    private final void zzn(long j) throws zzbc {
        zzay zzayVar;
        long j2;
        zzay zzayVar2;
        int i;
        ArrayList arrayList;
        int i2;
        while (!this.zzg.isEmpty() && ((zzen) this.zzg.peek()).zza == j) {
            zzen zzenVar = (zzen) this.zzg.pop();
            if (zzenVar.zzd == 1836019574) {
                zzen zzenVarZza = zzenVar.zza(1835365473);
                new ArrayList();
                zzay zzayVarZzb = zzenVarZza != null ? zzaik.zzb(zzenVarZza) : null;
                ArrayList arrayList2 = new ArrayList();
                boolean z = this.zzA == 1;
                zzadb zzadbVar = new zzadb();
                zzeo zzeoVarZzb = zzenVar.zzb(1969517665);
                if (zzeoVarZzb != null) {
                    zzay zzayVarZzc = zzaik.zzc(zzeoVarZzb);
                    zzadbVar.zzb(zzayVarZzc);
                    zzayVar = zzayVarZzc;
                } else {
                    zzayVar = null;
                }
                zzeo zzeoVarZzb2 = zzenVar.zzb(1836476516);
                zzeoVarZzb2.getClass();
                zzay zzayVar3 = new zzay(-9223372036854775807L, zzaik.zzd(zzeoVarZzb2.zza));
                ArrayList arrayList3 = arrayList2;
                long j3 = -9223372036854775807L;
                List listZzf = zzaik.zzf(zzenVar, zzadbVar, -9223372036854775807L, null, 1 == (this.zzb & 1), z, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzait
                    @Override // com.google.android.gms.internal.ads.zzfuc
                    public final Object apply(Object obj) {
                        return (zzajb) obj;
                    }
                });
                long jMax = -9223372036854775807L;
                int i3 = 0;
                int size = -1;
                int i4 = 0;
                while (true) {
                    j2 = 0;
                    if (i3 >= listZzf.size()) {
                        break;
                    }
                    zzaje zzajeVar = (zzaje) listZzf.get(i3);
                    if (zzajeVar.zzb == 0) {
                        arrayList = arrayList3;
                    } else {
                        zzajb zzajbVar = zzajeVar.zza;
                        int i5 = i4 + 1;
                        zzaiu zzaiuVar = new zzaiu(zzajbVar, zzajeVar, this.zzv.zzw(i4, zzajbVar.zzb));
                        long j4 = zzajbVar.zze;
                        if (j4 == j3) {
                            j4 = zzajeVar.zzh;
                        }
                        zzaiuVar.zzc.zzl(j4);
                        jMax = Math.max(jMax, j4);
                        int i6 = "audio/true-hd".equals(zzajbVar.zzg.zzo) ? zzajeVar.zze * 16 : zzajeVar.zze + 30;
                        zzz zzzVarZzb = zzajbVar.zzg.zzb();
                        zzzVarZzb.zzR(i6);
                        if (zzajbVar.zzb == 2) {
                            zzab zzabVar = zzajbVar.zzg;
                            int i7 = this.zzb;
                            int i8 = zzabVar.zzf;
                            if ((i7 & 8) != 0) {
                                i8 |= size == -1 ? 1 : 2;
                            }
                            if (zzabVar.zzx == -1.0f && j4 > 0 && (i2 = zzajeVar.zzb) > 0) {
                                zzzVarZzb.zzI(i2 / (j4 / 1000000.0f));
                            }
                            zzzVarZzb.zzY(i8);
                        }
                        if (zzajbVar.zzb == 1 && zzadbVar.zza()) {
                            zzzVarZzb.zzG(zzadbVar.zza);
                            zzzVarZzb.zzH(zzadbVar.zzb);
                        }
                        int i9 = zzajbVar.zzb;
                        zzay[] zzayVarArr = new zzay[3];
                        if (this.zzi.isEmpty()) {
                            i = 0;
                            zzayVar2 = null;
                        } else {
                            zzayVar2 = new zzay(this.zzi);
                            i = 0;
                        }
                        zzayVarArr[i] = zzayVar2;
                        zzayVarArr[1] = zzayVar;
                        zzayVarArr[2] = zzayVar3;
                        zzay zzayVar4 = new zzay(-9223372036854775807L, new zzax[i]);
                        if (zzayVarZzb != null) {
                            for (int i10 = 0; i10 < zzayVarZzb.zza(); i10++) {
                                zzax zzaxVarZzb = zzayVarZzb.zzb(i10);
                                if (zzaxVarZzb instanceof zzem) {
                                    zzem zzemVar = (zzem) zzaxVarZzb;
                                    if (!zzemVar.zza.equals("com.android.capture.fps")) {
                                        zzayVar4 = zzayVar4.zzc(zzemVar);
                                    } else if (i9 == 2) {
                                        zzayVar4 = zzayVar4.zzc(zzemVar);
                                    }
                                }
                            }
                        }
                        for (int i11 = 0; i11 < 3; i11++) {
                            zzayVar4 = zzayVar4.zzd(zzayVarArr[i11]);
                        }
                        if (zzayVar4.zza() > 0) {
                            zzzVarZzb.zzT(zzayVar4);
                        }
                        zzaiuVar.zzc.zzm(zzzVarZzb.zzag());
                        if (zzajbVar.zzb == 2 && size == -1) {
                            size = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzaiuVar);
                        i4 = i5;
                    }
                    i3++;
                    arrayList3 = arrayList;
                    listZzf = listZzf;
                    j3 = -9223372036854775807L;
                }
                this.zzy = size;
                this.zzz = jMax;
                zzaiu[] zzaiuVarArr = (zzaiu[]) arrayList3.toArray(new zzaiu[0]);
                this.zzw = zzaiuVarArr;
                int length = zzaiuVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i12 = 0; i12 < zzaiuVarArr.length; i12++) {
                    jArr[i12] = new long[zzaiuVarArr[i12].zzb.zzb];
                    jArr2[i12] = zzaiuVarArr[i12].zzb.zzf[0];
                }
                int i13 = 0;
                while (i13 < zzaiuVarArr.length) {
                    long j5 = Long.MAX_VALUE;
                    int i14 = -1;
                    for (int i15 = 0; i15 < zzaiuVarArr.length; i15++) {
                        if (!zArr[i15]) {
                            long j6 = jArr2[i15];
                            if (j6 <= j5) {
                                i14 = i15;
                                j5 = j6;
                            }
                        }
                    }
                    int i16 = iArr[i14];
                    long[] jArr3 = jArr[i14];
                    jArr3[i16] = j2;
                    zzaje zzajeVar2 = zzaiuVarArr[i14].zzb;
                    j2 += (long) zzajeVar2.zzd[i16];
                    int i17 = i16 + 1;
                    iArr[i14] = i17;
                    if (i17 < jArr3.length) {
                        jArr2[i14] = zzajeVar2.zzf[i17];
                    } else {
                        zArr[i14] = true;
                        i13++;
                    }
                }
                this.zzx = jArr;
                this.zzv.zzD();
                this.zzv.zzO(this);
                this.zzg.clear();
                this.zzk = 2;
            } else if (!this.zzg.isEmpty()) {
                ((zzen) this.zzg.peek()).zzc(zzenVar);
            }
        }
        if (this.zzk != 2) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final long zza() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        if ((this.zzb & 16) == 0) {
            zzacqVar = new zzakg(zzacqVar, this.zza);
        }
        this.zzv = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzg.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = true;
        if (j == 0) {
            if (this.zzk != 3) {
                zzm();
                return;
            } else {
                this.zzh.zzb();
                this.zzi.clear();
                return;
            }
        }
        for (zzaiu zzaiuVar : this.zzw) {
            zzaje zzajeVar = zzaiuVar.zzb;
            int iZza = zzajeVar.zza(j2);
            if (iZza == -1) {
                iZza = zzajeVar.zzb(j2);
            }
            zzaiuVar.zze = iZza;
            zzadu zzaduVar = zzaiuVar.zzd;
            if (zzaduVar != null) {
                zzaduVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        long j2;
        long j3;
        int iZzb;
        zzaiu[] zzaiuVarArr = this.zzw;
        if (zzaiuVarArr.length == 0) {
            zzadn zzadnVar = zzadn.zza;
            return new zzadk(zzadnVar, zzadnVar);
        }
        int i = this.zzy;
        long jZzl = -1;
        if (i != -1) {
            zzaje zzajeVar = zzaiuVarArr[i].zzb;
            int iZzk = zzk(zzajeVar, j);
            if (iZzk == -1) {
                zzadn zzadnVar2 = zzadn.zza;
                return new zzadk(zzadnVar2, zzadnVar2);
            }
            long j4 = zzajeVar.zzf[iZzk];
            j2 = zzajeVar.zzc[iZzk];
            if (j4 >= j || iZzk >= zzajeVar.zzb - 1 || (iZzb = zzajeVar.zzb(j)) == -1 || iZzb == iZzk) {
                j3 = -9223372036854775807L;
            } else {
                j3 = zzajeVar.zzf[iZzb];
                jZzl = zzajeVar.zzc[iZzb];
            }
            j = j4;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            zzaiu[] zzaiuVarArr2 = this.zzw;
            if (i2 >= zzaiuVarArr2.length) {
                break;
            }
            if (i2 != this.zzy) {
                zzaje zzajeVar2 = zzaiuVarArr2[i2].zzb;
                long jZzl2 = zzl(zzajeVar2, j, j2);
                if (j3 != -9223372036854775807L) {
                    jZzl = zzl(zzajeVar2, j3, jZzl);
                }
                j2 = jZzl2;
            }
            i2++;
        }
        zzadn zzadnVar3 = new zzadn(j, j2);
        return j3 == -9223372036854775807L ? new zzadk(zzadnVar3, zzadnVar3) : new zzadk(zzadnVar3, new zzadn(j3, jZzl));
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) throws IOException {
        zzadq zzadqVarZzb = zzaja.zzb(zzacoVar, (this.zzb & 2) != 0);
        this.zzj = zzadqVarZzb != null ? zzfxn.zzo(zzadqVarZzb) : zzfxn.zzn();
        return zzadqVarZzb == null;
    }

    public zzaiv(zzakd zzakdVar, int i) {
        this.zza = zzakdVar;
        this.zzb = i;
        this.zzj = zzfxn.zzn();
        this.zzk = (i & 4) != 0 ? 3 : 0;
        this.zzh = new zzaiz();
        this.zzi = new ArrayList();
        this.zzf = new zzdy(16);
        this.zzg = new ArrayDeque();
        this.zzc = new zzdy(zzfk.zza);
        this.zzd = new zzdy(5);
        this.zze = new zzdy();
        this.zzp = -1;
        this.zzv = zzacq.zza;
        this.zzw = new zzaiu[0];
        this.zzt = true;
    }

    /* JADX WARN: Code duplicated, block: B:291:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:38:0x0091  */
    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) throws IOException {
        char c;
        boolean z;
        boolean z2;
        while (true) {
            int i = this.zzk;
            if (i == 0) {
                if (this.zzn == 0) {
                    if (!zzacoVar.zzn(this.zzf.zzN(), 0, 8, true)) {
                        if (this.zzA != 2 || (this.zzb & 2) == 0) {
                            return -1;
                        }
                        zzadt zzadtVarZzw = this.zzv.zzw(0, 4);
                        zzagv zzagvVar = this.zzB;
                        zzay zzayVar = zzagvVar == null ? null : new zzay(-9223372036854775807L, zzagvVar);
                        zzz zzzVar = new zzz();
                        zzzVar.zzT(zzayVar);
                        zzadtVarZzw.zzm(zzzVar.zzag());
                        this.zzv.zzD();
                        this.zzv.zzO(new zzadl(-9223372036854775807L, 0L));
                        return -1;
                    }
                    this.zzn = 8;
                    this.zzf.zzL(0);
                    this.zzm = this.zzf.zzu();
                    this.zzl = this.zzf.zzg();
                }
                long j = this.zzm;
                if (j == 1) {
                    zzacoVar.zzi(this.zzf.zzN(), 8, 8);
                    this.zzn += 8;
                    this.zzm = this.zzf.zzw();
                } else if (j == 0) {
                    long jZzd = zzacoVar.zzd();
                    if (jZzd == -1) {
                        zzen zzenVar = (zzen) this.zzg.peek();
                        jZzd = zzenVar != null ? zzenVar.zza : -1L;
                    }
                    if (jZzd != -1) {
                        this.zzm = (jZzd - zzacoVar.zzf()) + ((long) this.zzn);
                    }
                }
                long j2 = this.zzm;
                int i2 = this.zzn;
                if (j2 < i2) {
                    throw zzbc.zzc("Atom size less than header length (unsupported).");
                }
                int i3 = this.zzl;
                if (i3 == 1836019574 || i3 == 1953653099 || i3 == 1835297121 || i3 == 1835626086 || i3 == 1937007212 || i3 == 1701082227 || i3 == 1835365473 || i3 == 1701082724) {
                    long jZzf = zzacoVar.zzf();
                    long j3 = this.zzm;
                    long j4 = jZzf + j3;
                    long j5 = this.zzn;
                    if (j3 != j5 && this.zzl == 1835365473) {
                        this.zze.zzI(8);
                        zzacoVar.zzh(this.zze.zzN(), 0, 8);
                        zzaik.zzg(this.zze);
                        zzacoVar.zzk(this.zze.zzd());
                        zzacoVar.zzj();
                    }
                    long j6 = j4 - j5;
                    this.zzg.push(new zzen(this.zzl, j6));
                    if (this.zzm == this.zzn) {
                        zzn(j6);
                    } else {
                        zzm();
                    }
                } else if (i3 == 1835296868 || i3 == 1836476516 || i3 == 1751411826 || i3 == 1937011556 || i3 == 1937011827 || i3 == 1937011571 || i3 == 1668576371 || i3 == 1701606260 || i3 == 1937011555 || i3 == 1937011578 || i3 == 1937013298 || i3 == 1937007471 || i3 == 1668232756 || i3 == 1953196132 || i3 == 1718909296 || i3 == 1969517665 || i3 == 1801812339 || i3 == 1768715124) {
                    zzcw.zzf(i2 == 8);
                    zzcw.zzf(this.zzm <= 2147483647L);
                    zzdy zzdyVar = new zzdy((int) this.zzm);
                    System.arraycopy(this.zzf.zzN(), 0, zzdyVar.zzN(), 0, 8);
                    this.zzo = zzdyVar;
                    this.zzk = 1;
                } else {
                    long jZzf2 = zzacoVar.zzf();
                    long j7 = this.zzn;
                    long j8 = jZzf2 - j7;
                    if (this.zzl == 1836086884) {
                        this.zzB = new zzagv(0L, j8, -9223372036854775807L, j8 + j7, this.zzm - j7);
                    }
                    this.zzo = null;
                    this.zzk = 1;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        this.zzh.zza(zzacoVar, zzadjVar, this.zzi);
                        if (zzadjVar.zza == 0) {
                            zzm();
                        }
                        return 1;
                    }
                    long jZzf3 = zzacoVar.zzf();
                    int i4 = this.zzp;
                    if (i4 == -1) {
                        long j9 = Long.MAX_VALUE;
                        long j10 = Long.MAX_VALUE;
                        long j11 = Long.MAX_VALUE;
                        int i5 = 0;
                        boolean z3 = true;
                        int i6 = -1;
                        int i7 = -1;
                        boolean z4 = true;
                        while (true) {
                            zzaiu[] zzaiuVarArr = this.zzw;
                            if (i5 >= zzaiuVarArr.length) {
                                break;
                            }
                            zzaiu zzaiuVar = zzaiuVarArr[i5];
                            int i8 = zzaiuVar.zze;
                            zzaje zzajeVar = zzaiuVar.zzb;
                            if (i8 != zzajeVar.zzb) {
                                long j12 = zzajeVar.zzc[i8];
                                long[][] jArr = this.zzx;
                                int i9 = zzei.zza;
                                long j13 = jArr[i5][i8];
                                long j14 = j12 - jZzf3;
                                boolean z5 = j14 < 0 || j14 >= 262144;
                                if (z5) {
                                    z = z4;
                                } else {
                                    if (z4) {
                                        z4 = z5;
                                        i7 = i5;
                                        j11 = j14;
                                        j10 = j13;
                                    } else {
                                        z = false;
                                    }
                                    if (j13 < j9) {
                                        z3 = z5;
                                        i6 = i5;
                                        j9 = j13;
                                    }
                                }
                                if (z5 != z || j14 >= j11) {
                                    z4 = z;
                                } else {
                                    z4 = z5;
                                    i7 = i5;
                                    j11 = j14;
                                    j10 = j13;
                                }
                                if (j13 < j9) {
                                    z3 = z5;
                                    i6 = i5;
                                    j9 = j13;
                                }
                            }
                            i5++;
                        }
                        i4 = (j9 == Long.MAX_VALUE || !z3 || j10 < j9 + 10485760) ? i7 : i6;
                        this.zzp = i4;
                        if (i4 == -1) {
                            return -1;
                        }
                    }
                    zzaiu zzaiuVar2 = this.zzw[i4];
                    zzadt zzadtVar = zzaiuVar2.zzc;
                    int i10 = zzaiuVar2.zze;
                    zzaje zzajeVar2 = zzaiuVar2.zzb;
                    long j15 = zzajeVar2.zzc[i10];
                    int i11 = zzajeVar2.zzd[i10];
                    zzadu zzaduVar = zzaiuVar2.zzd;
                    long j16 = (j15 - jZzf3) + ((long) this.zzq);
                    if (j16 < 0 || j16 >= 262144) {
                        zzadjVar.zza = j15;
                        return 1;
                    }
                    if (zzaiuVar2.zza.zzh == 1) {
                        j16 += 8;
                        i11 -= 8;
                    }
                    zzacoVar.zzk((int) j16);
                    if (Objects.equals(zzaiuVar2.zza.zzg.zzo, MimeTypes.VIDEO_H264)) {
                        c = 1;
                    } else {
                        c = 1;
                        this.zzt = true;
                    }
                    zzajb zzajbVar = zzaiuVar2.zza;
                    int i12 = zzajbVar.zzk;
                    if (i12 == 0) {
                        if ("audio/ac4".equals(zzajbVar.zzg.zzo)) {
                            if (this.zzr == 0) {
                                zzabq.zzb(i11, this.zze);
                                zzadtVar.zzr(this.zze, 7);
                                this.zzr += 7;
                            }
                            i11 += 7;
                        } else if (zzaduVar != null) {
                            zzaduVar.zzd(zzacoVar);
                        }
                        while (true) {
                            int i13 = this.zzr;
                            if (i13 >= i11) {
                                break;
                            }
                            int iZzf = zzadtVar.zzf(zzacoVar, i11 - i13, false);
                            this.zzq += iZzf;
                            this.zzr += iZzf;
                            this.zzs -= iZzf;
                        }
                    } else {
                        byte[] bArrZzN = this.zzd.zzN();
                        bArrZzN[0] = 0;
                        bArrZzN[c] = 0;
                        bArrZzN[2] = 0;
                        int i14 = i12 + 1;
                        int i15 = 4 - i12;
                        while (this.zzr < i11) {
                            int i16 = this.zzs;
                            if (i16 == 0) {
                                zzacoVar.zzi(bArrZzN, i15, i14);
                                this.zzq += i14;
                                this.zzd.zzL(0);
                                int iZzg = this.zzd.zzg();
                                if (iZzg <= 0) {
                                    throw zzbc.zza("Invalid NAL length", null);
                                }
                                this.zzs = iZzg - 1;
                                this.zzc.zzL(0);
                                zzadtVar.zzr(this.zzc, 4);
                                zzadtVar.zzr(this.zzd, 1);
                                this.zzr += 5;
                                i11 += i15;
                                if (!this.zzt && zzfk.zzi(bArrZzN[4])) {
                                    this.zzt = true;
                                }
                            } else {
                                int iZzf2 = zzadtVar.zzf(zzacoVar, i16, false);
                                this.zzq += iZzf2;
                                this.zzr += iZzf2;
                                this.zzs -= iZzf2;
                            }
                        }
                    }
                    zzaje zzajeVar3 = zzaiuVar2.zzb;
                    long j17 = zzajeVar3.zzf[i10];
                    int i17 = zzajeVar3.zzg[i10];
                    if (!this.zzt) {
                        i17 |= 67108864;
                    }
                    if (zzaduVar != null) {
                        zzaduVar.zzc(zzadtVar, j17, i17, i11, 0, null);
                        if (i10 + 1 == zzaiuVar2.zzb.zzb) {
                            zzaduVar.zza(zzadtVar, null);
                        }
                    } else {
                        zzadtVar.zzt(j17, i17, i11, 0, null);
                    }
                    zzaiuVar2.zze++;
                    this.zzp = -1;
                    this.zzq = 0;
                    this.zzr = 0;
                    this.zzs = 0;
                    this.zzt = true;
                    return 0;
                }
                long j18 = this.zzm - ((long) this.zzn);
                long jZzf4 = zzacoVar.zzf() + j18;
                zzdy zzdyVar2 = this.zzo;
                if (zzdyVar2 != null) {
                    zzacoVar.zzi(zzdyVar2.zzN(), this.zzn, (int) j18);
                    if (this.zzl == 1718909296) {
                        this.zzu = true;
                        zzdyVar2.zzL(8);
                        int iZzj = zzj(zzdyVar2.zzg());
                        if (iZzj == 0) {
                            zzdyVar2.zzM(4);
                            do {
                                if (zzdyVar2.zzb() <= 0) {
                                    iZzj = 0;
                                    break;
                                }
                                iZzj = zzj(zzdyVar2.zzg());
                            } while (iZzj == 0);
                        }
                        this.zzA = iZzj;
                    } else if (!this.zzg.isEmpty()) {
                        ((zzen) this.zzg.peek()).zzd(new zzeo(this.zzl, zzdyVar2));
                    }
                } else {
                    if (!this.zzu && this.zzl == 1835295092) {
                        this.zzA = 1;
                    }
                    if (j18 < 262144) {
                        zzacoVar.zzk((int) j18);
                    } else {
                        zzadjVar.zza = zzacoVar.zzf() + j18;
                        z2 = true;
                    }
                    zzn(jZzf4);
                    if (z2 && this.zzk != 2) {
                        return 1;
                    }
                }
                z2 = false;
                zzn(jZzf4);
                if (z2) {
                    continue;
                }
            }
        }
    }
}

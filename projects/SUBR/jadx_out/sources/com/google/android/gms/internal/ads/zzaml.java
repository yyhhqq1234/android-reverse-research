package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaml implements zzamj {
    private static final double[] zza = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zzb;
    private zzadt zzc;
    private final zzaoa zzd;
    private final zzdy zze;
    private final zzanb zzf;
    private final boolean[] zzg;
    private final zzamk zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;

    public zzaml() {
        throw null;
    }

    zzaml(zzaoa zzaoaVar) {
        zzdy zzdyVar;
        this.zzd = zzaoaVar;
        this.zzg = new boolean[4];
        this.zzh = new zzamk(128);
        if (zzaoaVar != null) {
            this.zzf = new zzanb(178, 128);
            zzdyVar = new zzdy();
        } else {
            zzdyVar = null;
            this.zzf = null;
        }
        this.zze = zzdyVar;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b5  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) {
        long j;
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        long j2;
        double d;
        int i5;
        int i6;
        zzcw.zzb(this.zzc);
        int iZzd = zzdyVar.zzd();
        int iZze = zzdyVar.zze();
        byte[] bArrZzN = zzdyVar.zzN();
        this.zzi += (long) zzdyVar.zzb();
        this.zzc.zzr(zzdyVar, zzdyVar.zzb());
        while (true) {
            int iZza = zzfk.zza(bArrZzN, iZzd, iZze, this.zzg);
            if (iZza == iZze) {
                break;
            }
            int i7 = iZza + 3;
            int i8 = zzdyVar.zzN()[i7] & 255;
            int i9 = iZza - iZzd;
            if (!this.zzk) {
                if (i9 > 0) {
                    this.zzh.zza(bArrZzN, iZzd, iZza);
                }
                if (this.zzh.zzc(i8, i9 < 0 ? -i9 : 0)) {
                    zzamk zzamkVar = this.zzh;
                    String str = this.zzb;
                    str.getClass();
                    byte[] bArrCopyOf = Arrays.copyOf(zzamkVar.zzc, zzamkVar.zza);
                    int i10 = bArrCopyOf[4] & 255;
                    int i11 = bArrCopyOf[5] & 255;
                    int i12 = bArrCopyOf[6] & 255;
                    int i13 = i11 & 15;
                    int i14 = (i11 >> 4) | (i10 << 4);
                    int i15 = (bArrCopyOf[7] & 240) >> 4;
                    int i16 = (i13 << 8) | i12;
                    if (i15 == 2) {
                        i2 = i16 * 4;
                        i3 = i14 * 3;
                    } else if (i15 != 3) {
                        if (i15 != 4) {
                            f = 1.0f;
                        } else {
                            i2 = i16 * 121;
                            i3 = i14 * 100;
                        }
                        zzz zzzVar = new zzz();
                        zzzVar.zzM(str);
                        zzzVar.zzaa("video/mpeg2");
                        zzzVar.zzaf(i14);
                        zzzVar.zzK(i16);
                        zzzVar.zzW(f);
                        zzzVar.zzN(Collections.singletonList(bArrCopyOf));
                        zzab zzabVarZzag = zzzVar.zzag();
                        i4 = (bArrCopyOf[7] & 15) - 1;
                        j2 = 0;
                        if (i4 >= 0 && i4 < 8) {
                            d = zza[i4];
                            byte b = bArrCopyOf[zzamkVar.zzb + 9];
                            i5 = (b & 96) >> 5;
                            i6 = b & 31;
                            if (i5 != i6) {
                                d *= (((double) i5) + 1.0d) / ((double) (i6 + 1));
                            }
                            j2 = (long) (1000000.0d / d);
                        }
                        Pair pairCreate = Pair.create(zzabVarZzag, Long.valueOf(j2));
                        this.zzc.zzm((zzab) pairCreate.first);
                        this.zzl = ((Long) pairCreate.second).longValue();
                        this.zzk = true;
                    } else {
                        i2 = i16 * 16;
                        i3 = i14 * 9;
                    }
                    f = i2 / i3;
                    zzz zzzVar2 = new zzz();
                    zzzVar2.zzM(str);
                    zzzVar2.zzaa("video/mpeg2");
                    zzzVar2.zzaf(i14);
                    zzzVar2.zzK(i16);
                    zzzVar2.zzW(f);
                    zzzVar2.zzN(Collections.singletonList(bArrCopyOf));
                    zzab zzabVarZzag2 = zzzVar2.zzag();
                    i4 = (bArrCopyOf[7] & 15) - 1;
                    j2 = 0;
                    if (i4 >= 0) {
                        d = zza[i4];
                        byte b2 = bArrCopyOf[zzamkVar.zzb + 9];
                        i5 = (b2 & 96) >> 5;
                        i6 = b2 & 31;
                        if (i5 != i6) {
                            d *= (((double) i5) + 1.0d) / ((double) (i6 + 1));
                        }
                        j2 = (long) (1000000.0d / d);
                    }
                    Pair pairCreate2 = Pair.create(zzabVarZzag2, Long.valueOf(j2));
                    this.zzc.zzm((zzab) pairCreate2.first);
                    this.zzl = ((Long) pairCreate2.second).longValue();
                    this.zzk = true;
                }
            }
            zzanb zzanbVar = this.zzf;
            if (zzanbVar != null) {
                if (i9 > 0) {
                    zzanbVar.zza(bArrZzN, iZzd, iZza);
                    i = 0;
                } else {
                    i = -i9;
                }
                if (this.zzf.zzd(i)) {
                    zzanb zzanbVar2 = this.zzf;
                    int iZzb = zzfk.zzb(zzanbVar2.zza, zzanbVar2.zzb);
                    zzdy zzdyVar2 = this.zze;
                    int i17 = zzei.zza;
                    zzdyVar2.zzJ(this.zzf.zza, iZzb);
                    this.zzd.zza(this.zzo, this.zze);
                }
                if (i8 == 178) {
                    if (zzdyVar.zzN()[iZza + 2] == 1) {
                        this.zzf.zzc(178);
                    }
                    i8 = 178;
                }
            }
            if (i8 == 0 || i8 == 179) {
                int i18 = iZze - iZza;
                if (this.zzq && this.zzk) {
                    long j3 = this.zzo;
                    if (j3 != -9223372036854775807L) {
                        j = -9223372036854775807L;
                        this.zzc.zzt(j3, this.zzp ? 1 : 0, ((int) (this.zzi - this.zzn)) - i18, i18, null);
                    } else {
                        j = -9223372036854775807L;
                    }
                } else {
                    j = -9223372036854775807L;
                }
                if (!this.zzj || this.zzq) {
                    this.zzn = this.zzi - ((long) i18);
                    long j4 = this.zzm;
                    if (j4 == j) {
                        long j5 = this.zzo;
                        j4 = j5 != j ? j5 + this.zzl : j;
                    }
                    this.zzo = j4;
                    this.zzp = false;
                    this.zzm = j;
                    this.zzj = true;
                }
                this.zzq = i8 == 0;
            } else {
                if (i8 == 184) {
                    this.zzp = true;
                }
                iZze = iZze;
                bArrZzN = bArrZzN;
            }
            iZze = iZze;
            bArrZzN = bArrZzN;
            iZzd = i7;
        }
        if (!this.zzk) {
            this.zzh.zza(bArrZzN, iZzd, iZze);
        }
        zzanb zzanbVar3 = this.zzf;
        if (zzanbVar3 != null) {
            zzanbVar3.zza(bArrZzN, iZzd, iZze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzb = zzanxVar.zzb();
        this.zzc = zzacqVar.zzw(zzanxVar.zza(), 2);
        zzaoa zzaoaVar = this.zzd;
        if (zzaoaVar != null) {
            zzaoaVar.zzb(zzacqVar, zzanxVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
        zzcw.zzb(this.zzc);
        if (z) {
            boolean z2 = this.zzp;
            long j = this.zzi - this.zzn;
            this.zzc.zzt(this.zzo, z2 ? 1 : 0, (int) j, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        zzfk.zzh(this.zzg);
        this.zzh.zzb();
        zzanb zzanbVar = this.zzf;
        if (zzanbVar != null) {
            zzanbVar.zzb();
        }
        this.zzi = 0L;
        this.zzj = false;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }
}

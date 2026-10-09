package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgwl extends zzgwp {
    private final Iterable zze;
    private final Iterator zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;

    /* synthetic */ zzgwl(Iterable iterable, int i, boolean z, zzgwo zzgwoVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zzh = i;
        this.zze = iterable;
        this.zzf = iterable.iterator();
        this.zzl = 0;
        if (i != 0) {
            zzM();
            return;
        }
        this.zzg = zzgye.zzc;
        this.zzm = 0L;
        this.zzn = 0L;
        this.zzo = 0L;
    }

    private final int zzI() {
        return (int) ((((long) (this.zzh - this.zzl)) - this.zzm) + this.zzn);
    }

    private final void zzJ() throws zzgyg {
        if (!this.zzf.hasNext()) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        zzM();
    }

    private final void zzK(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > zzI()) {
            if (i2 > 0) {
                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.zzo - this.zzm == 0) {
                zzJ();
            }
            int iMin = Math.min(i3, (int) (this.zzo - this.zzm));
            long j = iMin;
            zzhao.zzo(this.zzm, bArr, i2 - i3, j);
            i3 -= iMin;
            this.zzm += j;
        }
    }

    private final void zzL() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzj;
        if (i <= i2) {
            this.zzi = 0;
            return;
        }
        int i3 = i - i2;
        this.zzi = i3;
        this.zzh = i - i3;
    }

    private final void zzM() {
        ByteBuffer byteBuffer = (ByteBuffer) this.zzf.next();
        this.zzg = byteBuffer;
        this.zzl += (int) (this.zzm - this.zzn);
        long jPosition = byteBuffer.position();
        this.zzm = jPosition;
        this.zzn = jPosition;
        this.zzo = this.zzg.limit();
        long jZze = zzhao.zze(this.zzg);
        this.zzm += jZze;
        this.zzn += jZze;
        this.zzo += jZze;
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final boolean zzA() throws IOException {
        return (((long) this.zzl) + this.zzm) - this.zzn == ((long) this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final boolean zzB() throws IOException {
        return zzr() != 0;
    }

    final long zzC() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzh = zzh();
            j |= ((long) (bZzh & 127)) << i;
            if ((bZzh & 128) == 0) {
                return j;
            }
        }
        throw new zzgyg("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzc() {
        return (int) ((((long) this.zzl) + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zze() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzf() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzg() throws IOException {
        return zzp();
    }

    public final byte zzh() throws IOException {
        if (this.zzo - this.zzm == 0) {
            zzJ();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzhao.zza(j);
    }

    public final int zzi() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 < 4) {
            int iZzh = zzh() & 255;
            int iZzh2 = (zzh() & 255) << 8;
            return iZzh | iZzh2 | ((zzh() & 255) << 16) | ((zzh() & 255) << 24);
        }
        this.zzm = 4 + j2;
        int iZza = zzhao.zza(j2) & 255;
        int iZza2 = (zzhao.zza(1 + j2) & 255) << 8;
        return iZza | iZza2 | ((zzhao.zza(2 + j2) & 255) << 16) | ((zzhao.zza(j2 + 3) & 255) << 24);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzj() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzk() throws IOException {
        return zzD(zzp());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzl() throws IOException {
        if (zzA()) {
            this.zzk = 0;
            return 0;
        }
        int iZzp = zzp();
        this.zzk = iZzp;
        if ((iZzp >>> 3) != 0) {
            return iZzp;
        }
        throw new zzgyg("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzm() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzn() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzo() throws IOException {
        return zzr();
    }

    public final long zzq() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 < 8) {
            long jZzh = ((long) zzh()) & 255;
            long jZzh2 = (((long) zzh()) & 255) << 8;
            long jZzh3 = (((long) zzh()) & 255) << 16;
            long jZzh4 = (((long) zzh()) & 255) << 24;
            long jZzh5 = (((long) zzh()) & 255) << 32;
            long jZzh6 = (((long) zzh()) & 255) << 40;
            return jZzh | jZzh2 | jZzh3 | jZzh4 | jZzh5 | jZzh6 | ((((long) zzh()) & 255) << 48) | ((((long) zzh()) & 255) << 56);
        }
        this.zzm = 8 + j2;
        long jZza = ((long) zzhao.zza(j2)) & 255;
        long jZza2 = (((long) zzhao.zza(1 + j2)) & 255) << 8;
        long jZza3 = (((long) zzhao.zza(j2 + 2)) & 255) << 16;
        long jZza4 = (((long) zzhao.zza(3 + j2)) & 255) << 24;
        long jZza5 = (((long) zzhao.zza(j2 + 4)) & 255) << 32;
        long jZza6 = (((long) zzhao.zza(5 + j2)) & 255) << 40;
        return jZza | jZza2 | jZza3 | jZza4 | jZza5 | jZza6 | ((((long) zzhao.zza(j2 + 6)) & 255) << 48) | ((((long) zzhao.zza(j2 + 7)) & 255) << 56);
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzs() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzt() throws IOException {
        return zzF(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final long zzu() throws IOException {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final zzgwj zzv() throws IOException {
        int iZzp = zzp();
        if (iZzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzp;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iZzp];
                zzhao.zzo(j2, bArr, 0L, j3);
                this.zzm += j3;
                return new zzgwg(bArr);
            }
        }
        if (iZzp > 0 && iZzp <= zzI()) {
            byte[] bArr2 = new byte[iZzp];
            zzK(bArr2, 0, iZzp);
            return new zzgwg(bArr2);
        }
        if (iZzp == 0) {
            return zzgwj.zzb;
        }
        if (iZzp < 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final String zzw() throws IOException {
        int iZzp = zzp();
        if (iZzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzp;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iZzp];
                zzhao.zzo(j2, bArr, 0L, j3);
                String str = new String(bArr, zzgye.zza);
                this.zzm += j3;
                return str;
            }
        }
        if (iZzp > 0 && iZzp <= zzI()) {
            byte[] bArr2 = new byte[iZzp];
            zzK(bArr2, 0, iZzp);
            return new String(bArr2, zzgye.zza);
        }
        if (iZzp == 0) {
            return "";
        }
        if (iZzp < 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final String zzx() throws IOException {
        int iZzp = zzp();
        if (iZzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzp;
            if (j3 <= j - j2) {
                String strZzg = zzhat.zzg(this.zzg, (int) (j2 - this.zzn), iZzp);
                this.zzm += j3;
                return strZzg;
            }
        }
        if (iZzp >= 0 && iZzp <= zzI()) {
            byte[] bArr = new byte[iZzp];
            zzK(bArr, 0, iZzp);
            return zzhat.zzh(bArr, 0, iZzp);
        }
        if (iZzp == 0) {
            return "";
        }
        if (iZzp <= 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final void zzy(int i) throws zzgyg {
        if (this.zzk != i) {
            throw new zzgyg("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final void zzz(int i) {
        this.zzj = i;
        zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzgwp
    public final int zzd(int i) throws zzgyg {
        if (i < 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int iZzc = i + zzc();
        int i2 = this.zzj;
        if (iZzc > i2) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzj = iZzc;
        zzL();
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        if (com.google.android.gms.internal.ads.zzhao.zza(r4) >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzp() throws java.io.IOException {
        /*
            r10 = this;
            long r0 = r10.zzm
            long r2 = r10.zzo
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L8c
        La:
            r2 = 1
            long r4 = r0 + r2
            byte r0 = com.google.android.gms.internal.ads.zzhao.zza(r0)
            if (r0 < 0) goto L1a
            long r4 = r10.zzm
            long r4 = r4 + r2
            r10.zzm = r4
            return r0
        L1a:
            long r6 = r10.zzo
            long r8 = r10.zzm
            long r6 = r6 - r8
            r8 = 10
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L8c
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L33
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L89
        L33:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L42
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L40:
            r6 = r4
            goto L89
        L42:
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L52
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L89
        L52:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            int r6 = r1 << 28
            r0 = r0 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r6
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzhao.zza(r4)
            if (r1 < 0) goto L8c
        L89:
            r10.zzm = r6
            return r0
        L8c:
            long r0 = r10.zzC()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgwl.zzp():int");
    }

    public final long zzr() throws IOException {
        long jZza;
        long j;
        long j2;
        int i;
        long j3 = this.zzm;
        if (this.zzo != j3) {
            long j4 = j3 + 1;
            byte bZza = zzhao.zza(j3);
            if (bZza >= 0) {
                this.zzm++;
                return bZza;
            }
            if (this.zzo - this.zzm >= 10) {
                long j5 = j4 + 1;
                int iZza = bZza ^ (zzhao.zza(j4) << 7);
                if (iZza >= 0) {
                    long j6 = j5 + 1;
                    int iZza2 = iZza ^ (zzhao.zza(j5) << 14);
                    if (iZza2 < 0) {
                        j5 = j6 + 1;
                        int iZza3 = iZza2 ^ (zzhao.zza(j6) << 21);
                        if (iZza3 < 0) {
                            i = iZza3 ^ (-2080896);
                        } else {
                            j6 = j5 + 1;
                            long jZza2 = ((long) iZza3) ^ (((long) zzhao.zza(j5)) << 28);
                            if (jZza2 >= 0) {
                                j2 = 266354560;
                            } else {
                                long j7 = j6 + 1;
                                long jZza3 = jZza2 ^ (((long) zzhao.zza(j6)) << 35);
                                if (jZza3 < 0) {
                                    j = -34093383808L;
                                } else {
                                    j6 = j7 + 1;
                                    jZza2 = jZza3 ^ (((long) zzhao.zza(j7)) << 42);
                                    if (jZza2 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        j7 = j6 + 1;
                                        jZza3 = jZza2 ^ (((long) zzhao.zza(j6)) << 49);
                                        if (jZza3 < 0) {
                                            j = -558586000294016L;
                                        } else {
                                            j6 = j7 + 1;
                                            jZza = (jZza3 ^ (((long) zzhao.zza(j7)) << 56)) ^ 71499008037633920L;
                                            if (jZza < 0) {
                                                long j8 = 1 + j6;
                                                if (zzhao.zza(j6) >= 0) {
                                                    j5 = j8;
                                                }
                                            }
                                        }
                                    }
                                }
                                jZza = jZza3 ^ j;
                                j5 = j7;
                            }
                            jZza = jZza2 ^ j2;
                        }
                        this.zzm = j5;
                        return jZza;
                    }
                    jZza = iZza2 ^ 16256;
                    j5 = j6;
                    this.zzm = j5;
                    return jZza;
                }
                i = iZza ^ (-128);
                jZza = i;
                this.zzm = j5;
                return jZza;
            }
        }
        return zzC();
    }
}

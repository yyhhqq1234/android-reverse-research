package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgwj implements Iterable<Byte>, Serializable {
    public static final zzgwj zzb = new zzgwg(zzgye.zzb);
    private int zza = 0;

    static {
        int i = zzgvw.zza;
    }

    zzgwj() {
    }

    public static zzgwh zzt() {
        return new zzgwh(128);
    }

    public static zzgwj zzu(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? zzb : zzc(iterable.iterator(), size);
    }

    public static zzgwj zzv(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgwg(bArr2);
    }

    public static zzgwj zzw(String str) {
        return new zzgwg(str.getBytes(zzgye.zza));
    }

    static void zzy(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzi = this.zza;
        if (iZzi == 0) {
            int iZzd = zzd();
            iZzi = zzi(iZzd, 0, iZzd);
            if (iZzi == 0) {
                iZzi = 1;
            }
            this.zza = iZzi;
        }
        return iZzi;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? zzhaf.zza(this) : zzhaf.zza(zzk(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public final byte[] zzA() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zzgye.zzb;
        }
        byte[] bArr = new byte[iZzd];
        zze(bArr, 0, 0, iZzd);
        return bArr;
    }

    public abstract byte zza(int i);

    abstract byte zzb(int i);

    public abstract int zzd();

    protected abstract void zze(byte[] bArr, int i, int i2, int i3);

    protected abstract int zzf();

    protected abstract boolean zzh();

    protected abstract int zzi(int i, int i2, int i3);

    protected abstract int zzj(int i, int i2, int i3);

    public abstract zzgwj zzk(int i, int i2);

    public abstract zzgwp zzl();

    protected abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    abstract void zzo(zzgwa zzgwaVar) throws IOException;

    public abstract boolean zzp();

    protected final int zzr() {
        return this.zza;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public zzgwe iterator() {
        return new zzgwb(this);
    }

    public final String zzx() {
        return zzd() == 0 ? "" : zzm(zzgye.zza);
    }

    @Deprecated
    public final void zzz(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }

    private static zzgwj zzc(Iterator it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return (zzgwj) it.next();
        }
        int i2 = i >>> 1;
        zzgwj zzgwjVarZzc = zzc(it, i2);
        zzgwj zzgwjVarZzc2 = zzc(it, i - i2);
        if (Integer.MAX_VALUE - zzgwjVarZzc.zzd() >= zzgwjVarZzc2.zzd()) {
            return zzgzu.zzC(zzgwjVarZzc, zzgwjVarZzc2);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + zzgwjVarZzc.zzd() + "+" + zzgwjVarZzc2.zzd());
    }

    static int zzq(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
    }
}

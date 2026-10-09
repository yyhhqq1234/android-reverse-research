package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.json.rb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgaa {
    private static final zzgaa zza;

    static {
        Character chValueOf = Character.valueOf(rb.T);
        new zzfzx("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        new zzfzx("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        new zzfzz("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        new zzfzz("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        zza = new zzfzw("base16()", "0123456789ABCDEF");
    }

    zzgaa() {
    }

    public static zzgaa zzi() {
        return zza;
    }

    abstract int zza(byte[] bArr, CharSequence charSequence) throws zzfzy;

    abstract void zzc(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    abstract int zzd(int i);

    abstract int zze(int i);

    public abstract zzgaa zzf();

    CharSequence zzg(CharSequence charSequence) {
        throw null;
    }

    public final String zzj(byte[] bArr, int i, int i2) {
        zzfun.zzk(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(zze(i2));
        try {
            zzc(sb, bArr, 0, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] zzk(CharSequence charSequence) {
        try {
            CharSequence charSequenceZzg = zzg(charSequence);
            int iZzd = zzd(charSequenceZzg.length());
            byte[] bArr = new byte[iZzd];
            int iZza = zza(bArr, charSequenceZzg);
            if (iZza == iZzd) {
                return bArr;
            }
            byte[] bArr2 = new byte[iZza];
            System.arraycopy(bArr, 0, bArr2, 0, iZza);
            return bArr2;
        } catch (zzfzy e) {
            throw new IllegalArgumentException(e);
        }
    }
}

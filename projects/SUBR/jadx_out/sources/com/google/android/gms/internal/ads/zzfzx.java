package com.google.android.gms.internal.ads;

import java.io.IOException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfzx extends zzfzz {
    private zzfzx(zzfzv zzfzvVar, @CheckForNull Character ch) {
        super(zzfzvVar, ch);
        zzfun.zze(zzfzvVar.zzf.length == 64);
    }

    @Override // com.google.android.gms.internal.ads.zzfzz, com.google.android.gms.internal.ads.zzgaa
    final int zza(byte[] bArr, CharSequence charSequence) throws zzfzy {
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzd(charSequenceZzg.length())) {
            throw new zzfzy("Invalid input length " + charSequenceZzg.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequenceZzg.length()) {
            int i3 = i + 1;
            int i4 = i2 + 1;
            int iZzb = (this.zzb.zzb(charSequenceZzg.charAt(i)) << 18) | (this.zzb.zzb(charSequenceZzg.charAt(i3)) << 12);
            bArr[i2] = (byte) (iZzb >>> 16);
            int i5 = i3 + 1;
            if (i5 < charSequenceZzg.length()) {
                int i6 = i5 + 1;
                int iZzb2 = iZzb | (this.zzb.zzb(charSequenceZzg.charAt(i5)) << 6);
                i2 = i4 + 1;
                bArr[i4] = (byte) ((iZzb2 >>> 8) & 255);
                if (i6 < charSequenceZzg.length()) {
                    bArr[i2] = (byte) ((iZzb2 | this.zzb.zzb(charSequenceZzg.charAt(i6))) & 255);
                    i2++;
                    i = i6 + 1;
                } else {
                    i = i6;
                }
            } else {
                i = i5;
                i2 = i4;
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzz
    final zzgaa zzb(zzfzv zzfzvVar, @CheckForNull Character ch) {
        return new zzfzx(zzfzvVar, ch);
    }

    @Override // com.google.android.gms.internal.ads.zzfzz, com.google.android.gms.internal.ads.zzgaa
    final void zzc(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzfun.zzk(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = i3 + 1;
            int i6 = bArr[i3] & 255;
            int i7 = bArr[i5] & 255;
            int i8 = i5 + 1;
            int i9 = (i6 << 16) | (i7 << 8) | (bArr[i8] & 255);
            appendable.append(this.zzb.zza(i9 >>> 18));
            appendable.append(this.zzb.zza((i9 >>> 12) & 63));
            appendable.append(this.zzb.zza((i9 >>> 6) & 63));
            appendable.append(this.zzb.zza(i9 & 63));
            i3 = i8 + 1;
        }
        if (i3 < i2) {
            zzh(appendable, bArr, i3, i2 - i3);
        }
    }

    zzfzx(String str, String str2, @CheckForNull Character ch) {
        this(new zzfzv(str, str2.toCharArray()), ch);
    }
}

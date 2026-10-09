package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaty {
    static boolean zza = false;
    public static final /* synthetic */ int zzc = 0;
    private static MessageDigest zzd;
    private static final Object zze = new Object();
    private static final Object zzf = new Object();
    static final CountDownLatch zzb = new CountDownLatch(1);

    static zzatm zza(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        Vector vectorZzc = zzc(bArr, 255);
        if (vectorZzc == null || vectorZzc.isEmpty()) {
            return null;
        }
        zzatm zzatmVarZza = zzatn.zza();
        int size = vectorZzc.size();
        for (int i = 0; i < size; i++) {
            zzatmVarZza.zza(zzgwj.zzv(zzh((byte[]) vectorZzc.get(i), str, false), 0, 256));
        }
        byte[] bArrZzf = zzf(bArr);
        zzgwj zzgwjVar = zzgwj.zzb;
        zzatmVarZza.zzb(zzgwj.zzv(bArrZzf, 0, bArrZzf.length));
        return zzatmVarZza;
    }

    static String zzb(byte[] bArr, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        zzatm zzatmVarZza = zza(bArr, str);
        return zzatr.zza(zzatmVarZza == null ? zzh(zzg(4096).zzaV(), str, true) : ((zzatn) zzatmVarZza.zzbr()).zzaV(), true);
    }

    static Vector zzc(byte[] bArr, int i) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i2 = length + 254;
        Vector vector = new Vector();
        for (int i3 = 0; i3 < i2 / 255; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i4 > 255) {
                    length2 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    static void zze() {
        synchronized (zzf) {
            if (!zza) {
                zza = true;
                new Thread(new zzatw(null)).start();
            }
        }
    }

    public static byte[] zzf(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (zze) {
            zze();
            MessageDigest messageDigest2 = null;
            try {
                if (zzb.await(2L, TimeUnit.SECONDS) && (messageDigest = zzd) != null) {
                    messageDigest2 = messageDigest;
                }
            } catch (InterruptedException unused) {
            }
            if (messageDigest2 == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigest2.reset();
            messageDigest2.update(bArr);
            bArrDigest = zzd.digest();
        }
        return bArrDigest;
    }

    static zzasy zzg(int i) {
        zzasc zzascVarZza = zzasy.zza();
        zzascVarZza.zzD(4096L);
        return (zzasy) zzascVarZza.zzbr();
    }

    private static byte[] zzh(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArrArray;
        int length = bArr.length;
        int i = true != z ? 255 : 239;
        if (length > i) {
            bArr = zzg(4096).zzaV();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i2).put(b).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i2).put(b).put(bArr).array();
        }
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(zzf(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        zzatz[] zzatzVarArr = new zzaun().zzcG;
        int length3 = zzatzVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            zzatzVarArr[i3].zza(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzatp(str.getBytes("UTF-8")).zza(bArr3);
        }
        return bArr3;
    }
}

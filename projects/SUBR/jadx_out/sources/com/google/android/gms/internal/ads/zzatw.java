package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzatw implements Runnable {
    private zzatw() {
        throw null;
    }

    /* synthetic */ zzatw(zzatx zzatxVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzaty.zzd = MessageDigest.getInstance("MD5");
            countDownLatch = zzaty.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzaty.zzb;
        } catch (Throwable th) {
            zzaty.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}

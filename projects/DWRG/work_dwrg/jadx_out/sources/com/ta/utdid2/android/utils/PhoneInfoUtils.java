package com.ta.utdid2.android.utils;

import java.util.Random;

/* loaded from: classes.dex */
public class PhoneInfoUtils {
    public static final String getUniqueID() {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nanoTime = (int) System.nanoTime();
        int nextInt = new Random().nextInt();
        int nextInt2 = new Random().nextInt();
        byte[] bytes = IntUtils.getBytes(currentTimeMillis);
        byte[] bytes2 = IntUtils.getBytes(nanoTime);
        byte[] bytes3 = IntUtils.getBytes(nextInt);
        byte[] bytes4 = IntUtils.getBytes(nextInt2);
        byte[] bArr = new byte[16];
        System.arraycopy(bytes, 0, bArr, 0, 4);
        System.arraycopy(bytes2, 0, bArr, 4, 4);
        System.arraycopy(bytes3, 0, bArr, 8, 4);
        System.arraycopy(bytes4, 0, bArr, 12, 4);
        return Base64.encodeToString(bArr, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getImei(android.content.Context r2) {
        /*
            r1 = 0
            if (r2 == 0) goto L1d
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r2.getSystemService(r0)     // Catch: java.lang.Exception -> L1c
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: java.lang.Exception -> L1c
            if (r0 == 0) goto L1d
            java.lang.String r0 = r0.getDeviceId()     // Catch: java.lang.Exception -> L1c
        L11:
            boolean r1 = com.ta.utdid2.android.utils.StringUtils.isEmpty(r0)
            if (r1 == 0) goto L1b
            java.lang.String r0 = getUniqueID()
        L1b:
            return r0
        L1c:
            r0 = move-exception
        L1d:
            r0 = r1
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.android.utils.PhoneInfoUtils.getImei(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getImsi(android.content.Context r2) {
        /*
            r1 = 0
            if (r2 == 0) goto L1d
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r2.getSystemService(r0)     // Catch: java.lang.Exception -> L1c
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: java.lang.Exception -> L1c
            if (r0 == 0) goto L1d
            java.lang.String r0 = r0.getSubscriberId()     // Catch: java.lang.Exception -> L1c
        L11:
            boolean r1 = com.ta.utdid2.android.utils.StringUtils.isEmpty(r0)
            if (r1 == 0) goto L1b
            java.lang.String r0 = getUniqueID()
        L1b:
            return r0
        L1c:
            r0 = move-exception
        L1d:
            r0 = r1
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.android.utils.PhoneInfoUtils.getImsi(android.content.Context):java.lang.String");
    }
}

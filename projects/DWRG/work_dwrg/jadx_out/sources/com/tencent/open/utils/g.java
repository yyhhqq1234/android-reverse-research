package com.tencent.open.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.netease.download.util.HashUtil;
import com.tencent.connect.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

/* compiled from: ProGuard */
/* loaded from: classes.dex */
public class g {
    public static String a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str != null && str2 == null) {
            return 1;
        }
        if (str == null && str2 != null) {
            return -1;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int i = 0;
        while (i < split.length && i < split2.length) {
            try {
                int parseInt = Integer.parseInt(split[i]);
                int parseInt2 = Integer.parseInt(split2[i]);
                if (parseInt < parseInt2) {
                    return -1;
                }
                if (parseInt > parseInt2) {
                    return 1;
                }
                i++;
            } catch (NumberFormatException e) {
                return str.compareTo(str2);
            }
        }
        if (split.length > i) {
            return 1;
        }
        return split2.length > i ? -1 : 0;
    }

    public static boolean a(Context context, String str, String str2) {
        com.tencent.open.a.f.a("openSDK_LOG.SystemUtils", "OpenUi, validateAppSignatureForPackage");
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                if (i.f(signature.toCharsString()).equals(str2)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static String b(Context context, String str) {
        String str2;
        Exception e;
        MessageDigest messageDigest;
        com.tencent.open.a.f.a("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString");
        try {
            String packageName = context.getPackageName();
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.update(signatureArr[0].toByteArray());
            String a = i.a(messageDigest.digest());
            messageDigest.reset();
            com.tencent.open.a.f.a("openSDK_LOG.SystemUtils", "-->sign: " + a);
            messageDigest.update(i.i(packageName + "_" + a + "_" + str + ""));
            str2 = i.a(messageDigest.digest());
        } catch (Exception e2) {
            str2 = "";
            e = e2;
        }
        try {
            messageDigest.reset();
            com.tencent.open.a.f.a("openSDK_LOG.SystemUtils", "-->signEncryped: " + str2);
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            com.tencent.open.a.f.b("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString error", e);
            return str2;
        }
        return str2;
    }

    public static boolean a(Context context, Intent intent) {
        return (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    public static String a(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static int c(Context context, String str) {
        return a(a(context, "com.tencent.mobileqq"), str);
    }

    public static int d(Context context, String str) {
        return a(a(context, Constants.PACKAGE_TIM), str);
    }

    public static int e(Context context, String str) {
        return a(a(context, Constants.PACKAGE_QIM), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @android.annotation.SuppressLint({"SdCardPath"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r9, java.lang.String r10, int r11) {
        /*
            r2 = 0
            r1 = 1
            r0 = 0
            java.lang.String r3 = "openSDK_LOG.SystemUtils"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "-->extractSecureLib, libName: "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r9)
            java.lang.String r4 = r4.toString()
            com.tencent.open.a.f.c(r3, r4)
            android.content.Context r4 = com.tencent.open.utils.d.a()
            if (r4 != 0) goto L29
            java.lang.String r1 = "openSDK_LOG.SystemUtils"
            java.lang.String r2 = "-->extractSecureLib, global context is null. "
            com.tencent.open.a.f.c(r1, r2)
        L28:
            return r0
        L29:
            java.lang.String r3 = "secure_lib"
            android.content.SharedPreferences r5 = r4.getSharedPreferences(r3, r0)
            java.io.File r3 = new java.io.File
            java.io.File r6 = r4.getFilesDir()
            r3.<init>(r6, r10)
            boolean r6 = r3.exists()
            if (r6 != 0) goto L7a
            java.io.File r6 = r3.getParentFile()
            if (r6 == 0) goto L4d
            boolean r6 = r6.mkdirs()
            if (r6 == 0) goto L4d
            r3.createNewFile()     // Catch: java.io.IOException -> L75
        L4d:
            android.content.res.AssetManager r3 = r4.getAssets()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lbe
            java.io.InputStream r3 = r3.open(r9)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Lbe
            r6 = 0
            java.io.FileOutputStream r2 = r4.openFileOutput(r10, r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            a(r3, r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.content.SharedPreferences$Editor r4 = r5.edit()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r5 = "version"
            r4.putInt(r5, r11)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r4.commit()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 == 0) goto L6e
            r3.close()     // Catch: java.io.IOException -> Lcb
        L6e:
            if (r2 == 0) goto L73
            r2.close()     // Catch: java.io.IOException -> Lcd
        L73:
            r0 = r1
            goto L28
        L75:
            r3 = move-exception
            r3.printStackTrace()
            goto L4d
        L7a:
            java.lang.String r3 = "version"
            int r3 = r5.getInt(r3, r0)
            java.lang.String r6 = "openSDK_LOG.SystemUtils"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "-->extractSecureLib, libVersion: "
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.StringBuilder r7 = r7.append(r11)
            java.lang.String r8 = " | oldVersion: "
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.StringBuilder r7 = r7.append(r3)
            java.lang.String r7 = r7.toString()
            com.tencent.open.a.f.c(r6, r7)
            if (r11 != r3) goto L4d
            r0 = r1
            goto L28
        La6:
            r1 = move-exception
            r3 = r2
        La8:
            java.lang.String r4 = "openSDK_LOG.SystemUtils"
            java.lang.String r5 = "-->extractSecureLib, when copy lib execption."
            com.tencent.open.a.f.b(r4, r5, r1)     // Catch: java.lang.Throwable -> Ld5
            if (r3 == 0) goto Lb4
            r3.close()     // Catch: java.io.IOException -> Lcf
        Lb4:
            if (r2 == 0) goto L28
            r2.close()     // Catch: java.io.IOException -> Lbb
            goto L28
        Lbb:
            r1 = move-exception
            goto L28
        Lbe:
            r0 = move-exception
            r3 = r2
        Lc0:
            if (r3 == 0) goto Lc5
            r3.close()     // Catch: java.io.IOException -> Ld1
        Lc5:
            if (r2 == 0) goto Lca
            r2.close()     // Catch: java.io.IOException -> Ld3
        Lca:
            throw r0
        Lcb:
            r0 = move-exception
            goto L6e
        Lcd:
            r0 = move-exception
            goto L73
        Lcf:
            r1 = move-exception
            goto Lb4
        Ld1:
            r1 = move-exception
            goto Lc5
        Ld3:
            r1 = move-exception
            goto Lca
        Ld5:
            r0 = move-exception
            goto Lc0
        Ld7:
            r1 = move-exception
            goto La8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.g.a(java.lang.String, java.lang.String, int):boolean");
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        long j = 0;
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                com.tencent.open.a.f.c("openSDK_LOG.SystemUtils", "-->copy, copyed size is: " + j);
                return j;
            }
        }
    }

    public static int a(String str) {
        if ("shareToQQ".equals(str)) {
            return Constants.REQUEST_QQ_SHARE;
        }
        if ("shareToQzone".equals(str)) {
            return Constants.REQUEST_QZONE_SHARE;
        }
        if ("addToQQFavorites".equals(str)) {
            return Constants.REQUEST_QQ_FAVORITES;
        }
        if ("sendToMyComputer".equals(str)) {
            return Constants.REQUEST_SEND_TO_MY_COMPUTER;
        }
        if ("shareToTroopBar".equals(str)) {
            return Constants.REQUEST_SHARE_TO_TROOP_BAR;
        }
        if ("action_login".equals(str)) {
            return Constants.REQUEST_LOGIN;
        }
        if ("action_request".equals(str)) {
            return Constants.REQUEST_API;
        }
        return -1;
    }

    public static String a(int i) {
        if (i == 10103) {
            return "shareToQQ";
        }
        if (i == 10104) {
            return "shareToQzone";
        }
        if (i == 10105) {
            return "addToQQFavorites";
        }
        if (i == 10106) {
            return "sendToMyComputer";
        }
        if (i == 10107) {
            return "shareToTroopBar";
        }
        if (i == 11101) {
            return "action_login";
        }
        if (i == 10100) {
            return "action_request";
        }
        return null;
    }
}

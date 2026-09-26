package com.netease.mcount;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.netease.download.util.HashUtil;
import im.yixin.sdk.util.SDKNetworkUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class r {
    public static long a() {
        return (System.currentTimeMillis() / 1000) + h.d;
    }

    public static final void a(String str) {
    }

    public static void a(Throwable th) {
    }

    public static boolean a(Context context) {
        if (a(context, "android.permission.INTERNET")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.getTypeName().equals(SDKNetworkUtil.NETWORK_TYPE_WIFI);
        }
        a("lost permission: android.permission.INTERNET");
        return false;
    }

    public static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static final byte[] a(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) (j >>> (56 - (i * 8)));
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            if (Integer.toHexString(bArr[i] & 255).length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(bArr[i] & 255));
        }
        return stringBuffer.toString();
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}

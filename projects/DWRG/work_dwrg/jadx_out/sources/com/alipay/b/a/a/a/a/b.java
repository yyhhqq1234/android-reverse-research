package com.alipay.b.a.a.a.a;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class b {
    public static String a(String str) {
        try {
            if (com.alipay.b.a.a.a.a.a(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }
}

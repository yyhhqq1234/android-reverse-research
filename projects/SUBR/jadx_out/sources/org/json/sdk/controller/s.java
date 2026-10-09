package org.json.sdk.controller;

import java.security.MessageDigest;
import java.util.UUID;
import org.json.gl;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
final class s {
    private static final String b = "MD5";
    private String a;

    s(String str) {
        this.a = str;
    }

    static String a() {
        return UUID.randomUUID().toString();
    }

    private String a(String str) {
        try {
            return gl.a(str);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return b(str);
        }
    }

    private String a(byte[] bArr) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(b);
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }

    boolean a(String str, String str2, String str3) {
        try {
            return str3.equalsIgnoreCase(a(str + str2 + this.a));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    String b() {
        return this.a;
    }
}

package com.sina.weibo.sdk.utils;

import com.netease.download.util.HashUtil;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class MD5 {
    private static final char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String hexdigest(String string) {
        try {
            String s = hexdigest(string.getBytes());
            return s;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String hexdigest(byte[] bytes) {
        String s = null;
        try {
            MessageDigest md = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            md.update(bytes);
            byte[] tmp = md.digest();
            char[] str = new char[32];
            int k = 0;
            for (int i = 0; i < 16; i++) {
                byte byte0 = tmp[i];
                int k2 = k + 1;
                str[k] = hexDigits[(byte0 >>> 4) & 15];
                k = k2 + 1;
                str[k2] = hexDigits[byte0 & 15];
            }
            String s2 = new String(str);
            s = s2;
            return s;
        } catch (Exception e) {
            e.printStackTrace();
            return s;
        }
    }

    public static void main(String[] args) {
        System.out.println(hexdigest("c"));
    }
}

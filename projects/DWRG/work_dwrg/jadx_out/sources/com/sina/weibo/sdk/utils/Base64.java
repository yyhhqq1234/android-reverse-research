package com.sina.weibo.sdk.utils;

/* loaded from: classes.dex */
public final class Base64 {
    private static char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] codes = new byte[256];

    static {
        for (int i = 0; i < 256; i++) {
            codes[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            codes[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            codes[i3] = (byte) ((i3 + 26) - 97);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            codes[i4] = (byte) ((i4 + 52) - 48);
        }
        codes[43] = 62;
        codes[47] = 63;
    }

    public static byte[] decode(byte[] data) {
        int len = ((data.length + 3) / 4) * 3;
        if (data.length > 0 && data[data.length - 1] == 61) {
            len--;
        }
        if (data.length > 1 && data[data.length - 2] == 61) {
            len--;
        }
        byte[] out = new byte[len];
        int shift = 0;
        int accum = 0;
        int index = 0;
        for (byte b : data) {
            int value = codes[b & 255];
            if (value >= 0) {
                shift += 6;
                accum = (accum << 6) | value;
                if (shift >= 8) {
                    shift -= 8;
                    out[index] = (byte) ((accum >> shift) & 255);
                    index++;
                }
            }
        }
        if (index != out.length) {
            throw new RuntimeException("miscalculated data length!");
        }
        return out;
    }

    public static char[] encode(byte[] data) {
        char[] out = new char[((data.length + 2) / 3) * 4];
        int i = 0;
        int index = 0;
        while (i < data.length) {
            boolean quad = false;
            boolean trip = false;
            int val = (data[i] & 255) << 8;
            if (i + 1 < data.length) {
                val |= data[i + 1] & 255;
                trip = true;
            }
            int val2 = val << 8;
            if (i + 2 < data.length) {
                val2 |= data[i + 2] & 255;
                quad = true;
            }
            out[index + 3] = alphabet[quad ? val2 & 63 : 64];
            int val3 = val2 >> 6;
            out[index + 2] = alphabet[trip ? val3 & 63 : 64];
            int val4 = val3 >> 6;
            out[index + 1] = alphabet[val4 & 63];
            out[index + 0] = alphabet[(val4 >> 6) & 63];
            i += 3;
            index += 4;
        }
        return out;
    }

    public static byte[] encodebyte(byte[] data) {
        byte[] out = new byte[((data.length + 2) / 3) * 4];
        int i = 0;
        int index = 0;
        while (i < data.length) {
            boolean quad = false;
            boolean trip = false;
            int val = (data[i] & 255) << 8;
            if (i + 1 < data.length) {
                val |= data[i + 1] & 255;
                trip = true;
            }
            int val2 = val << 8;
            if (i + 2 < data.length) {
                val2 |= data[i + 2] & 255;
                quad = true;
            }
            out[index + 3] = (byte) alphabet[quad ? val2 & 63 : 64];
            int val3 = val2 >> 6;
            out[index + 2] = (byte) alphabet[trip ? val3 & 63 : 64];
            int val4 = val3 >> 6;
            out[index + 1] = (byte) alphabet[val4 & 63];
            out[index + 0] = (byte) alphabet[(val4 >> 6) & 63];
            i += 3;
            index += 4;
        }
        return out;
    }
}

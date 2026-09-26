package com.netease.epay.sdk.base.util;

import android.support.v4.view.MotionEventCompat;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class SdkBase64 {
    private static final char[] legalChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    public static String encode(byte[] data) {
        int length = data.length;
        StringBuffer stringBuffer = new StringBuffer((data.length * 3) / 2);
        int i = length - 3;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = ((data[i2] & 255) << 16) | ((data[i2 + 1] & 255) << 8) | (data[i2 + 2] & 255);
            stringBuffer.append(legalChars[(i3 >> 18) & 63]);
            stringBuffer.append(legalChars[(i3 >> 12) & 63]);
            stringBuffer.append(legalChars[(i3 >> 6) & 63]);
            stringBuffer.append(legalChars[i3 & 63]);
            i2 += 3;
        }
        if (i2 == (0 + length) - 2) {
            int i4 = ((data[i2 + 1] & 255) << 8) | ((data[i2] & 255) << 16);
            stringBuffer.append(legalChars[(i4 >> 18) & 63]);
            stringBuffer.append(legalChars[(i4 >> 12) & 63]);
            stringBuffer.append(legalChars[(i4 >> 6) & 63]);
            stringBuffer.append("=");
        } else if (i2 == (0 + length) - 1) {
            int i5 = (data[i2] & 255) << 16;
            stringBuffer.append(legalChars[(i5 >> 18) & 63]);
            stringBuffer.append(legalChars[(i5 >> 12) & 63]);
            stringBuffer.append("==");
        }
        return stringBuffer.toString();
    }

    public static byte[] decode(String s) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            decode(s, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e) {
                LogUtil.e("Error while decoding BASE64: " + e.toString());
            }
            return byteArray;
        } catch (IOException e2) {
            throw new RuntimeException();
        }
    }

    private static int decode(char c) {
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            return (c - 'a') + 26;
        }
        if (c >= '0' && c <= '9') {
            return (c - '0') + 26 + 26;
        }
        switch (c) {
            case '+':
                return 62;
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                return 63;
            case '=':
                return 0;
            default:
                throw new RuntimeException("unexpected code: " + c);
        }
    }

    private static void decode(String s, OutputStream os) {
        int i = 0;
        int length = s.length();
        while (true) {
            if (i < length && s.charAt(i) <= ' ') {
                i++;
            } else if (i != length) {
                int decode = (decode(s.charAt(i)) << 18) + (decode(s.charAt(i + 1)) << 12) + (decode(s.charAt(i + 2)) << 6) + decode(s.charAt(i + 3));
                os.write((decode >> 16) & 255);
                if (s.charAt(i + 2) != '=') {
                    os.write((decode >> 8) & 255);
                    if (s.charAt(i + 3) != '=') {
                        os.write(decode & 255);
                        i += 4;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}

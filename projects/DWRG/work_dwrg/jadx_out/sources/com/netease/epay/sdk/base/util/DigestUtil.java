package com.netease.epay.sdk.base.util;

import android.text.TextUtils;
import com.netease.download.util.HashUtil;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class DigestUtil {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static String getEncyptKey(String word, String m, String n) {
        double d = 0.0d;
        for (int length = word.length() - 1; length >= 0; length--) {
            d += getEncyptedItem(word.charAt(length), m, n);
        }
        return new DecimalFormat("###0").format(d);
    }

    private static double getEncyptedItem(int item, String m, String n) {
        double d = 0.0d;
        int i = 7;
        while (i >= 0) {
            if ((getBinary(item, i) >> i) == 1) {
                d += getIntFromChars(fix2char(m, n));
            }
            i--;
            d = 3.0d * d;
        }
        return d;
    }

    private static char[] fix2char(String m, String n) {
        char[] cArr = new char[Math.max(m.length(), n.length())];
        for (int i = 0; i < Math.min(m.length(), n.length()); i++) {
            cArr[i] = (char) (m.charAt(i) & n.charAt(i));
            if (cArr[i] < '!' || cArr[i] > '~') {
                cArr[i] = '!';
            }
        }
        if (m.length() > n.length()) {
            m.getChars(n.length(), m.length(), cArr, n.length());
        } else if (m.length() < n.length()) {
            n.getChars(m.length(), n.length(), cArr, m.length());
        }
        return cArr;
    }

    private static double getIntFromChars(char[] word) {
        double d = 0.0d;
        for (char c : word) {
            d += c;
        }
        return d;
    }

    private static int getBinary(int okey, int index) {
        return index == 0 ? okey & 1 : ((int) Math.pow(2.0d, index)) & okey;
    }

    public static String getMd5WithSecret(String s, String secret) {
        String str = s + secret;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            try {
                messageDigest.update(str.getBytes("utf-8"));
            } catch (UnsupportedEncodingException e) {
            }
            return byte2hex(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalArgumentException("no md5 support");
        }
    }

    private static String byte2hex(byte[] abyte0) {
        StringBuffer stringBuffer = new StringBuffer(abyte0.length * 2);
        for (int i = 0; i < abyte0.length; i++) {
            if ((abyte0[i] & 255) < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Long.toString(abyte0[i] & 255, 16));
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static String getMD5(String message) {
        Exception exc;
        String str;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            messageDigest.reset();
            messageDigest.update(message.getBytes("UTF-8"));
            String message2 = toHexString2(messageDigest.digest());
            try {
                str = message2.toLowerCase();
            } catch (Exception e) {
                exc = e;
                str = message2;
                exc.printStackTrace();
                return str.toUpperCase();
            }
        } catch (Exception e2) {
            exc = e2;
            str = message;
        }
        return str.toUpperCase();
    }

    public static String encode(String psw) {
        String psw2 = getMD5(psw);
        String aesKey = getAesKey();
        if (aesKey != null) {
            return SdkBase64.encode(AES.encode(psw2, aesKey));
        }
        return psw2;
    }

    public static String toHexString2(byte[] b) {
        StringBuilder sb = new StringBuilder(b.length * 2);
        for (int i = 0; i < b.length; i++) {
            sb.append(HEX_DIGITS[(b[i] & 240) >>> 4]);
            sb.append(HEX_DIGITS[b[i] & 15]);
        }
        return sb.toString();
    }

    public static String getFlexibleSecret(String input) {
        return !TextUtils.isEmpty(input) ? input.substring(4, 29) : BaseConstants.SECRET_CODE;
    }

    public static String getAesKey() {
        if (TextUtils.isEmpty(BaseData.sessionId)) {
            return null;
        }
        try {
            return getMD5(getEncyptKey(BaseData.sessionId.substring(BaseData.wordStart, BaseData.wordEnd), BaseData.sessionId.substring(BaseData.mStart, BaseData.mEnd), BaseData.sessionId.substring(BaseData.nStart, BaseData.nEnd))).substring(0, 16);
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.e("Error happens when get subString from sessionId");
            return null;
        }
    }
}

package com.ta.utdid2.android.utils;

import com.netease.push.proto.ProtoClientWrapper;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class AESUtils {
    public static final String TAG = "AESUtils";
    public static byte[] t = {48, 48, 49, 55, 68, 67, 49, 66, 69, ProtoClientWrapper.PUSH_TYPE, ProtoClientWrapper.PUSH_TYPE, 53, 56, 53, 53, ProtoClientWrapper.NEW_ID_TYPE, 67, 70, 48, ProtoClientWrapper.PUSH_TYPE, 67, 53, 55, 66, 55, 56, 69, 55, ProtoClientWrapper.NEW_ID_TYPE, 48, 65, 53};

    public static String encrypt(String str, String str2) {
        byte[] bArr;
        try {
            bArr = encrypt(getRawKey(str.getBytes()), str2.getBytes());
        } catch (Exception e) {
            bArr = null;
        }
        if (bArr != null) {
            return toHex(bArr);
        }
        return null;
    }

    public static String decrypt(String str, String str2) {
        try {
            return new String(decrypt(getRawKey(str.getBytes()), toByte(str2)));
        } catch (Exception e) {
            return null;
        }
    }

    private static byte[] getRawKey(byte[] bArr) throws Exception {
        return toByte(new String(t, 0, 32));
    }

    private static byte[] encrypt(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
        return cipher.doFinal(bArr2);
    }

    private static byte[] decrypt(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
        return cipher.doFinal(bArr2);
    }

    public static String toHex(String str) {
        return toHex(str.getBytes());
    }

    public static String fromHex(String str) {
        return new String(toByte(str));
    }

    public static byte[] toByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String toHex(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b : bArr) {
            appendHex(stringBuffer, b);
        }
        return stringBuffer.toString();
    }

    private static void appendHex(StringBuffer stringBuffer, byte b) {
        stringBuffer.append("0123456789ABCDEF".charAt((b >> 4) & 15)).append("0123456789ABCDEF".charAt(b & 15));
    }
}

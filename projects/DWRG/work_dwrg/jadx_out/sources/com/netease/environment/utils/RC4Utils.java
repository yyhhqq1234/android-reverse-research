package com.netease.environment.utils;

import android.annotation.SuppressLint;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class RC4Utils {
    public static final String ALGORITHM = "RC4";
    private static final String TAG = "RC4Utils";

    public static String encryptData(String message, String key) {
        byte[] encryptedData = encryptData(message.getBytes(), key);
        return Base64Utils.encode(encryptedData);
    }

    public static String decryptData(String message, String key) {
        byte[] decodedData = Base64Utils.decode(message);
        byte[] decryptedData = decryptData(decodedData, key);
        try {
            return new String(decryptedData, "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"TrulyRandom"})
    public static byte[] encryptData(byte[] data, String rc4Key) {
        if (data == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            SecretKeySpec keySpec = new SecretKeySpec(rc4Key.getBytes("UTF-8"), ALGORITHM);
            cipher.init(1, keySpec);
            byte[] encryptedData = cipher.doFinal(data);
            return encryptedData;
        } catch (UnsupportedEncodingException e) {
            LogUtils.error(TAG, e.toString());
            return null;
        } catch (InvalidKeyException e2) {
            LogUtils.error(TAG, e2.toString());
            return null;
        } catch (NoSuchAlgorithmException e3) {
            LogUtils.error(TAG, e3.toString());
            return null;
        } catch (BadPaddingException e4) {
            LogUtils.error(TAG, e4.toString());
            return null;
        } catch (IllegalBlockSizeException e5) {
            LogUtils.error(TAG, e5.toString());
            return null;
        } catch (NoSuchPaddingException e6) {
            LogUtils.error(TAG, e6.toString());
            return null;
        }
    }

    public static byte[] decryptData(byte[] encryptedData, String rc4Key) {
        if (encryptedData == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            SecretKeySpec keySpec = new SecretKeySpec(rc4Key.getBytes("UTF-8"), ALGORITHM);
            cipher.init(2, keySpec);
            byte[] decryptedData = cipher.doFinal(encryptedData);
            return decryptedData;
        } catch (UnsupportedEncodingException e) {
            LogUtils.error(TAG, e.toString());
            return null;
        } catch (InvalidKeyException e2) {
            LogUtils.error(TAG, e2.toString());
            return null;
        } catch (NoSuchAlgorithmException e3) {
            LogUtils.error(TAG, e3.toString());
            return null;
        } catch (BadPaddingException e4) {
            LogUtils.error(TAG, e4.toString());
            return null;
        } catch (IllegalBlockSizeException e5) {
            LogUtils.error(TAG, e5.toString());
            return null;
        } catch (NoSuchPaddingException e6) {
            LogUtils.error(TAG, e6.toString());
            return null;
        }
    }
}

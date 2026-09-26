package com.netease.push.utils;

import android.annotation.SuppressLint;
import android.util.Base64;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class Crypto {
    public static final String RSA_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv18+t+6aTdcLH3PaWco5oYofBANFCKmf+z84SXo1vv4Hr+FEBAY2cJsmT/DlrFPYi6N37fgDhV9FRUB+Eo83b58UkLUAfs3XDNwAExcoZy79WhHyOMfzGmAa05wyz7GiqiBjVx9YAm0NkSnJ71Yeled7gdS6/wfRZZIBPUPCJ/rCH8cdNiALiXN/ySy9AAj7leYkR7apV2UDOyYx8dntooLGfsNQgTc3Ok0n8dcrxyj8j8/u+c9BXKdAeBpPNIGCw6gJjP3uXuDY8HXgALcCk6Cou2VPCOy50gTZC4hQ0wwDWMf3/BWtoBPquDErYLfR1umJabmJE+F19Q3ssAfpwwIDAQAB";
    private static final String TAG = "NGPush_" + Crypto.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static String genAESKey() {
        try {
            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(256);
            SecretKey secretKey = keyGen.generateKey();
            String key = Base64.encodeToString(secretKey.getEncoded(), 0);
            return key;
        } catch (Exception e) {
            e.printStackTrace();
            return "kPPuJVCnRXFOM3eNhKfiPQF+Sibk/pb6iWwjJ4ngTO4=";
        }
    }

    public static byte[] aesEncrypt(byte[] input, String _key) throws Exception {
        byte[] key = Base64.decode(_key, 0);
        SecureRandom random = new SecureRandom();
        byte[] iv = new byte[16];
        random.nextBytes(iv);
        SecretKeySpec keySpec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivSpec = new IvParameterSpec(iv);
        Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
        cipher.init(1, keySpec, ivSpec);
        byte[] ciphered = cipher.doFinal(input);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        outputStream.write(iv);
        outputStream.write(ciphered);
        return outputStream.toByteArray();
    }

    @SuppressLint({"NewApi"})
    public static byte[] aesDecrypt(byte[] data, String _key) throws Exception {
        byte[] key = Base64.decode(_key, 0);
        byte[] iv = new byte[16];
        System.arraycopy(data, 0, iv, 0, 16);
        SecretKeySpec keySpec = new SecretKeySpec(key, "AES");
        IvParameterSpec ivSpec = new IvParameterSpec(iv);
        Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
        cipher.init(2, keySpec, ivSpec);
        byte[] _data = Arrays.copyOfRange(data, 16, data.length);
        byte[] raw = cipher.doFinal(_data);
        return raw;
    }

    public static String rsaEncrypt(String plaintext, String publicKey) throws Exception {
        byte[] bytes = plaintext.getBytes("UTF-8");
        return rsaEncrypt(bytes, publicKey);
    }

    public static String rsaEncrypt(byte[] bytes, String publicKey) throws Exception {
        KeyFactory keyf = KeyFactory.getInstance("RSA");
        byte[] key = Base64.decode(publicKey, 0);
        PublicKey pubKey = keyf.generatePublic(new X509EncodedKeySpec(key));
        Cipher cipher = Cipher.getInstance("RSA/NONE/PKCS1Padding");
        cipher.init(1, pubKey);
        byte[] encrypted = blockCipher(cipher, bytes, 1);
        return Base64.encodeToString(encrypted, 0);
    }

    public static byte[] rsaDecrypt(String encrypted, String privateKey) throws Exception {
        KeyFactory keyf = KeyFactory.getInstance("RSA");
        byte[] key = Base64.decode(privateKey, 0);
        PrivateKey priKey = keyf.generatePrivate(new PKCS8EncodedKeySpec(key));
        Cipher cipher = Cipher.getInstance("RSA/NONE/PKCS1Padding");
        cipher.init(2, priKey);
        byte[] bytes = Base64.decode(encrypted, 0);
        byte[] decrypted = blockCipher(cipher, bytes, 2);
        return decrypted;
    }

    @SuppressLint({"NewApi"})
    private static byte[] blockCipher(Cipher cipher, byte[] bytes, int mode) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr = new byte[0];
        byte[] toReturn = new byte[0];
        int blockSize = cipher.getBlockSize();
        int begin = 0;
        int total = bytes.length;
        while (begin < total) {
            int end = begin + blockSize;
            if (end > total) {
                end = total;
            }
            byte[] slice = Arrays.copyOfRange(bytes, begin, end);
            byte[] scrambled = cipher.doFinal(slice);
            toReturn = append(toReturn, scrambled);
            begin = end;
        }
        return toReturn;
    }

    private static byte[] append(byte[] prefix, byte[] suffix) {
        byte[] toReturn = new byte[prefix.length + suffix.length];
        for (int i = 0; i < prefix.length; i++) {
            toReturn[i] = prefix[i];
        }
        for (int i2 = 0; i2 < suffix.length; i2++) {
            toReturn[prefix.length + i2] = suffix[i2];
        }
        return toReturn;
    }
}

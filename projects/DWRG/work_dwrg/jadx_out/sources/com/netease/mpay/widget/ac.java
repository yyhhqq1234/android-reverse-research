package com.netease.mpay.widget;

import android.annotation.SuppressLint;
import com.netease.mpay.Cdo;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class ac {
    public static void a(byte[] bArr, FileInputStream fileInputStream, FileOutputStream fileOutputStream, byte[] bArr2, String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = bArr2 == null ? new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) : new IvParameterSpec(bArr2);
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            CipherInputStream cipherInputStream = new CipherInputStream(fileInputStream, cipher);
            byte[] bArr3 = new byte[1024];
            while (true) {
                int read = cipherInputStream.read(bArr3);
                if (read == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                    return;
                }
                fileOutputStream.write(bArr3, 0, read);
            }
        } catch (IOException e) {
            Cdo.a((Throwable) e);
        } catch (InvalidAlgorithmParameterException e2) {
            Cdo.a((Throwable) e2);
        } catch (InvalidKeyException e3) {
            Cdo.a((Throwable) e3);
        } catch (NoSuchAlgorithmException e4) {
            Cdo.a((Throwable) e4);
        } catch (NoSuchPaddingException e5) {
            Cdo.a((Throwable) e5);
        }
    }

    public static byte[] a(String str) {
        byte[] a = bd.a(str);
        byte b = Byte.MAX_VALUE;
        for (int i = 0; i < a.length; i++) {
            a[i] = (byte) (b ^ (a[i] * 60863847));
            b = a[i];
        }
        return a;
    }

    public static byte[] a(String str, byte[] bArr) {
        try {
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            PublicKey generatePublic = keyFactory.generatePublic(new X509EncodedKeySpec(y.a(str, 0)));
            if (generatePublic instanceof RSAPublicKey) {
                PrivateKey generatePrivate = keyFactory.generatePrivate(new RSAPrivateKeySpec(((RSAPublicKey) generatePublic).getModulus(), ((RSAPublicKey) generatePublic).getPublicExponent()));
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(2, generatePrivate);
                return cipher.doFinal(bArr);
            }
        } catch (Exception e) {
            Cdo.a((Throwable) e);
        }
        return null;
    }

    public static byte[] a(byte[] bArr, String str) {
        return a(a(str), bArr);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        return a(bArr, bArr2, null);
    }

    @SuppressLint({"TrulyRandom"})
    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = bArr3 == null ? new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) : new IvParameterSpec(bArr3);
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr2);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException | Exception e) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = bArr3 == null ? new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) : new IvParameterSpec(bArr3);
        try {
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr2);
        } catch (InvalidAlgorithmParameterException e) {
            Cdo.a((Throwable) e);
            return null;
        } catch (InvalidKeyException e2) {
            Cdo.a((Throwable) e2);
            return null;
        } catch (NoSuchAlgorithmException e3) {
            Cdo.a((Throwable) e3);
            return null;
        } catch (BadPaddingException e4) {
            Cdo.a((Throwable) e4);
            return null;
        } catch (IllegalBlockSizeException e5) {
            Cdo.a((Throwable) e5);
            return null;
        } catch (NoSuchPaddingException e6) {
            Cdo.a((Throwable) e6);
            return null;
        } catch (Exception e7) {
            Cdo.a((Throwable) e7);
            return null;
        }
    }

    public static byte[] b(byte[] bArr, String str) {
        return b(a(str), bArr);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        return b(bArr, bArr2, null);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a(bArr, bArr2, bArr3, "AES/CBC/PKCS5Padding");
    }

    public static byte[] c(byte[] bArr, String str) {
        return a(a(str), bArr, "1a8b3292l1w08fe2".getBytes());
    }

    public static byte[] d(byte[] bArr, String str) {
        return b(a(str), bArr, "1a8b3292l1w08fe2".getBytes());
    }
}

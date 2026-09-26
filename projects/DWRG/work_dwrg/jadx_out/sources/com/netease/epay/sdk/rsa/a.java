package com.netease.epay.sdk.rsa;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.telephony.TelephonyManager;
import android.util.Base64;
import com.netease.epay.sdk.base.util.AES;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.SdkBase64;
import com.netease.mobsecurity.SecException;
import com.netease.mobsecurity.interfacejni.SecretTransfer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.GregorianCalendar;
import javax.security.auth.x500.X500Principal;

/* compiled from: RsaCertificateUtil.java */
/* loaded from: classes.dex */
public class a {
    public static String a(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? d(context, a(str)) : e(context, a(str));
    }

    @TargetApi(19)
    private static String d(Context context, String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.add(1, 3);
        KeyPairGeneratorSpec build = new KeyPairGeneratorSpec.Builder(context).setAlias(str).setSubject(new X500Principal("CN=" + str)).setSerialNumber(BigInteger.valueOf(1337L)).setStartDate(gregorianCalendar.getTime()).setEndDate(gregorianCalendar2.getTime()).setKeySize(2048).build();
        KeyPairGenerator keyPairGenerator = null;
        try {
            keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
            keyPairGenerator.initialize(build);
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (NoSuchProviderException e3) {
            e3.printStackTrace();
        }
        if (keyPairGenerator != null) {
            keyPairGenerator.generateKeyPair();
            return SdkBase64.encode(keyPairGenerator.generateKeyPair().getPublic().getEncoded());
        }
        return "";
    }

    private static String e(Context context, String str) {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
            RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
            a(context, (RSAPrivateKey) generateKeyPair.getPrivate(), str);
            return SdkBase64.encode(rSAPublicKey.getEncoded());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileOutputStream] */
    private static boolean a(Context context, PrivateKey privateKey, String str) {
        boolean z = false;
        byte[] encode = AES.encode(privateKey.getEncoded(), h(context, str));
        String g = g(context, str);
        ?? file = new File(g);
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    file = new FileOutputStream(g);
                } catch (Throwable th) {
                    th = th;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                e = e2;
                file = 0;
            } catch (IOException e3) {
                e = e3;
            }
            try {
                file.write(encode);
                if (file != 0) {
                    try {
                        file.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                z = true;
                file = file;
            } catch (FileNotFoundException e5) {
                e = e5;
                e.printStackTrace();
                if (file != 0) {
                    try {
                        file.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                return z;
            } catch (IOException e7) {
                e = e7;
                fileOutputStream = file;
                e.printStackTrace();
                file = file;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                        file = file;
                    } catch (IOException e8) {
                        e8.printStackTrace();
                        file = file;
                    }
                }
                return z;
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = file;
        }
    }

    public static String a(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                return a(str, a(str2));
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            } catch (InvalidKeyException e2) {
                e2.printStackTrace();
                return null;
            } catch (KeyStoreException e3) {
                e3.printStackTrace();
                return null;
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
                return null;
            } catch (SignatureException e5) {
                e5.printStackTrace();
                return null;
            } catch (UnrecoverableEntryException e6) {
                e6.printStackTrace();
                return null;
            } catch (CertificateException e7) {
                e7.printStackTrace();
                return null;
            }
        }
        return b(context, str, a(str2));
    }

    private static String a(String str, String str2) {
        byte[] bytes = str.getBytes();
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        KeyStore.Entry entry = keyStore.getEntry(str2, null);
        if (entry != null && (entry instanceof KeyStore.PrivateKeyEntry)) {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initSign(((KeyStore.PrivateKeyEntry) entry).getPrivateKey());
            signature.update(bytes);
            return Base64.encodeToString(signature.sign(), 0);
        }
        return null;
    }

    private static String b(Context context, String str, String str2) {
        byte[] bytes = str.getBytes();
        byte[] f = f(context, str2);
        if (f == null) {
            return null;
        }
        try {
            PrivateKey generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(f));
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initSign(generatePrivate);
            signature.update(bytes);
            return SdkBase64.encode(signature.sign());
        } catch (InvalidKeyException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        } catch (SignatureException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvalidKeySpecException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static byte[] f(Context context, String str) {
        try {
            File file = new File(g(context, str));
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream.read(bArr);
            return AES.decode2Bytes(bArr, h(context, str));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String g(Context context, String str) {
        return context.getFilesDir().getPath() + File.separator + DigestUtil.getMD5(str + "neprs.aki");
    }

    private static String h(Context context, String str) {
        SecretTransfer secretTransfer = new SecretTransfer(context.getApplicationContext());
        String str2 = ((TelephonyManager) context.getSystemService("phone")).getDeviceId() + str;
        try {
            return secretTransfer.getSignedHash(str2).substring(0, 16);
        } catch (SecException e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static boolean b(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                keyStore.load(null);
                return keyStore.containsAlias(a(str));
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        File file = new File(g(context, a(str)));
        return file.exists() && file.length() > 0;
    }

    public static boolean c(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                keyStore.load(null);
                keyStore.deleteEntry(a(str));
                return true;
            } catch (Exception e) {
                return false;
            }
        }
        return new File(g(context, a(str))).delete();
    }

    private static String a(String str) {
        return "epsdkrsc_" + str;
    }
}

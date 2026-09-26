package com.netease.epay.sdk.base.util;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* loaded from: classes.dex */
public class RSA {
    public static String encode(String publicKeyStr, String plainTextData) {
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(publicKeyStr, 0)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, rSAPublicKey);
            return new String(Base64.encode(cipher.doFinal(plainTextData.getBytes("UTF-8")), 0), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}

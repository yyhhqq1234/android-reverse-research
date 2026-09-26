package com.netease.epay.sdk.base.util.fingerprint;

import android.annotation.TargetApi;
import android.hardware.fingerprint.FingerprintManager;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyInfo;
import com.netease.epay.sdk.base.core.BaseData;
import java.security.KeyStore;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;

@TargetApi(23)
/* loaded from: classes.dex */
public class LocalAndroidKeyStore {
    private KeyStore mStore;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalAndroidKeyStore() {
        try {
            this.mStore = KeyStore.getInstance("AndroidKeyStore");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void generateKey(String keyAlias) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            this.mStore.load(null);
            KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder(keyAlias, 3);
            builder.setUserAuthenticationRequired(true);
            builder.setBlockModes("CBC");
            builder.setEncryptionPaddings("PKCS7Padding");
            keyGenerator.init(builder.build());
            keyGenerator.generateKey();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FingerprintManager.CryptoObject getCryptoObject(int purpose, byte[] IV) {
        try {
            this.mStore.load(null);
            SecretKey secretKey = (SecretKey) this.mStore.getKey(BaseData.accountId, null);
            if (secretKey == null) {
                return null;
            }
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            if (purpose == 1) {
                cipher.init(purpose, secretKey);
            } else {
                cipher.init(purpose, secretKey, new IvParameterSpec(IV));
            }
            return new FingerprintManager.CryptoObject(cipher);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean isKeyProtectedEnforcedBySecureHardware() {
        boolean z;
        try {
            generateKey("temp");
            SecretKey secretKey = (SecretKey) this.mStore.getKey("temp", null);
            if (secretKey == null) {
                return false;
            }
            KeyInfo keyInfo = (KeyInfo) SecretKeyFactory.getInstance("AES", "AndroidKeyStore").getKeySpec(secretKey, KeyInfo.class);
            if (keyInfo.isInsideSecureHardware()) {
                if (keyInfo.isUserAuthenticationRequirementEnforcedBySecureHardware()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } catch (Exception e) {
            return false;
        }
    }
}

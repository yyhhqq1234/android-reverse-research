package com.netease.epay.sdk.base.util.fingerprint;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.CancellationSignal;
import android.support.v4.content.PermissionChecker;
import android.text.TextUtils;
import android.util.Base64;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.util.LogUtil;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;

@TargetApi(23)
/* loaded from: classes.dex */
public class FingerPrintHelper extends FingerprintManager.AuthenticationCallback {
    private SimpleAuthenticationCallback callback;
    private String data;
    private CancellationSignal mCancellationSignal;
    private LocalSharedPreference mLocalSharedPreference;
    private FingerprintManager manager;
    private int purpose = 1;
    private int authTimes = 0;
    private LocalAndroidKeyStore mLocalAndroidKeyStore = new LocalAndroidKeyStore();

    /* loaded from: classes.dex */
    public interface SimpleAuthenticationCallback {
        void onAuthenticationFail(boolean z);

        void onAuthenticationSucceeded(String str);
    }

    public FingerPrintHelper(Context context) {
        this.manager = (FingerprintManager) context.getSystemService(FingerprintManager.class);
        this.mLocalSharedPreference = new LocalSharedPreference(context);
    }

    public void generateToken() {
        this.data = this.mLocalSharedPreference.generateToken();
        this.mLocalAndroidKeyStore.generateKey(BaseData.accountId);
        setPurpose(1);
    }

    public boolean isKeyProtectedEnforcedBySecureHardware() {
        return this.mLocalAndroidKeyStore.isKeyProtectedEnforcedBySecureHardware();
    }

    public int checkFingerprintAvailable(Context ctx) {
        if (PermissionChecker.checkSelfPermission(ctx, "android.permission.USE_FINGERPRINT") != 0) {
            LogUtil.e("FingerPrintHelper: miss permission FINGERPRINT");
            return -1;
        }
        if (!isKeyProtectedEnforcedBySecureHardware() || !this.manager.isHardwareDetected()) {
            return -1;
        }
        if (!this.manager.hasEnrolledFingerprints()) {
            return 0;
        }
        return 1;
    }

    public boolean containsToken() {
        LocalSharedPreference localSharedPreference = this.mLocalSharedPreference;
        LocalSharedPreference localSharedPreference2 = this.mLocalSharedPreference;
        this.mLocalSharedPreference.getClass();
        return localSharedPreference.containsKey(localSharedPreference2.getKey("data"));
    }

    public void deleteToken() {
        LocalSharedPreference localSharedPreference = this.mLocalSharedPreference;
        LocalSharedPreference localSharedPreference2 = this.mLocalSharedPreference;
        this.mLocalSharedPreference.getClass();
        localSharedPreference.delKeyData(localSharedPreference2.getKey("data"));
    }

    public void setCallback(SimpleAuthenticationCallback callback) {
        this.callback = callback;
    }

    public void setPurpose(int purpose) {
        this.purpose = purpose;
    }

    public boolean authenticate() {
        FingerprintManager.CryptoObject cryptoObject;
        try {
            this.authTimes = 0;
            if (this.purpose == 2) {
                LocalSharedPreference localSharedPreference = this.mLocalSharedPreference;
                LocalSharedPreference localSharedPreference2 = this.mLocalSharedPreference;
                this.mLocalSharedPreference.getClass();
                cryptoObject = this.mLocalAndroidKeyStore.getCryptoObject(2, Base64.decode(localSharedPreference.getData(localSharedPreference2.getKey("IV")), 8));
                if (cryptoObject == null) {
                    return false;
                }
            } else {
                cryptoObject = this.mLocalAndroidKeyStore.getCryptoObject(1, null);
            }
            this.mCancellationSignal = new CancellationSignal();
            this.manager.authenticate(cryptoObject, this.mCancellationSignal, 0, this, null);
            return true;
        } catch (SecurityException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void stopAuthenticate() {
        if (this.mCancellationSignal != null) {
            this.mCancellationSignal.cancel();
            this.mCancellationSignal = null;
        }
        this.callback = null;
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult result) {
        if (this.callback != null) {
            if (result.getCryptoObject() == null) {
                this.callback.onAuthenticationFail(true);
                return;
            }
            Cipher cipher = result.getCryptoObject().getCipher();
            if (this.purpose == 2) {
                LocalSharedPreference localSharedPreference = this.mLocalSharedPreference;
                LocalSharedPreference localSharedPreference2 = this.mLocalSharedPreference;
                this.mLocalSharedPreference.getClass();
                String data = localSharedPreference.getData(localSharedPreference2.getKey("data"));
                if (TextUtils.isEmpty(data)) {
                    this.callback.onAuthenticationFail(true);
                    return;
                }
                try {
                    this.callback.onAuthenticationSucceeded(new String(cipher.doFinal(Base64.decode(data, 8))));
                    return;
                } catch (BadPaddingException | IllegalBlockSizeException e) {
                    e.printStackTrace();
                    this.callback.onAuthenticationFail(true);
                    return;
                }
            }
            try {
                byte[] doFinal = cipher.doFinal(this.data.getBytes());
                byte[] iv = cipher.getIV();
                String encodeToString = Base64.encodeToString(doFinal, 8);
                String encodeToString2 = Base64.encodeToString(iv, 8);
                LocalSharedPreference localSharedPreference3 = this.mLocalSharedPreference;
                LocalSharedPreference localSharedPreference4 = this.mLocalSharedPreference;
                this.mLocalSharedPreference.getClass();
                if (localSharedPreference3.storeData(localSharedPreference4.getKey("data"), encodeToString)) {
                    LocalSharedPreference localSharedPreference5 = this.mLocalSharedPreference;
                    LocalSharedPreference localSharedPreference6 = this.mLocalSharedPreference;
                    this.mLocalSharedPreference.getClass();
                    if (localSharedPreference5.storeData(localSharedPreference6.getKey("IV"), encodeToString2)) {
                        this.callback.onAuthenticationSucceeded(this.data);
                    }
                }
                this.callback.onAuthenticationFail(true);
            } catch (BadPaddingException | IllegalBlockSizeException e2) {
                e2.printStackTrace();
                this.callback.onAuthenticationFail(true);
            }
        }
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationError(int errorCode, CharSequence errString) {
        if (this.callback != null) {
            this.callback.onAuthenticationFail(true);
        }
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationHelp(int helpCode, CharSequence helpString) {
        this.authTimes++;
        if (this.callback != null) {
            this.callback.onAuthenticationFail(this.authTimes >= 3);
        }
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationFailed() {
        this.authTimes++;
        if (this.callback != null) {
            this.callback.onAuthenticationFail(this.authTimes >= 3);
        }
    }
}

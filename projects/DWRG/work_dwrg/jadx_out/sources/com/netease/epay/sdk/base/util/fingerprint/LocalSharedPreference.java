package com.netease.epay.sdk.base.util.fingerprint;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.util.DigestUtil;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* loaded from: classes.dex */
public class LocalSharedPreference {
    private SharedPreferences preferences;
    final String dataKeyName = "data";
    final String IVKeyName = "IV";

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalSharedPreference(Context context) {
        this.preferences = context.getSharedPreferences("epay", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getData(String keyName) {
        return this.preferences.getString(keyName, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean storeData(String key, String data) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putString(key, data);
        return edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsKey(String key) {
        return !TextUtils.isEmpty(getData(key));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void delKeyData(String key) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.remove(key);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String generateToken() {
        try {
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
            secureRandom.setSeed((long) (Math.random() * 1234567.0d));
            return DigestUtil.getMD5(secureRandom.nextLong() + "").toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getKey(String content) {
        return DigestUtil.getMD5(BaseData.accountId + "_" + content);
    }
}

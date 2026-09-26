package com.netease.mpay.widget;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.math.BigInteger;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class bc {
    public bc() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private String a() {
        return Build.MODEL;
    }

    private String a(String str) {
        try {
            return new BigInteger(1, MessageDigest.getInstance("SHA").digest(str.getBytes("UTF-8"))).toString(16);
        } catch (Exception e) {
            return null;
        }
    }

    private String b(Context context) {
        String c = c(context);
        return !TextUtils.isEmpty(c) ? c : "";
    }

    private String c(Context context) {
        WifiInfo connectionInfo;
        if (Build.VERSION.SDK_INT >= 23 || !at.b(context, "android.permission.ACCESS_WIFI_STATE") || (connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo()) == null) {
            return null;
        }
        return connectionInfo.getMacAddress();
    }

    public String a(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(string) || "9774d56d682e549c".equalsIgnoreCase(string)) {
            string = b(context);
        }
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        String a = a(string + a());
        return a == null ? "" : a;
    }
}

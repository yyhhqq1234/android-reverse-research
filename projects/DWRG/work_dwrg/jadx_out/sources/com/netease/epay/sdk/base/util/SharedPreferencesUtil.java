package com.netease.epay.sdk.base.util;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class SharedPreferencesUtil {
    private static final String CONFIG_NAME = "epaysdk_config";

    public static void saveBoolean(Context context, String key, boolean is) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(CONFIG_NAME, 0).edit();
            edit.putBoolean(key, is);
            edit.commit();
        }
    }

    public static boolean readBoolean(Context context, String key, boolean defualt) {
        if (context != null) {
            return context.getSharedPreferences(CONFIG_NAME, 0).getBoolean(key, defualt);
        }
        return defualt;
    }

    public static void writeString(Context context, String key, String info) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(CONFIG_NAME, 0).edit();
            edit.putString(key, info);
            edit.commit();
        }
    }

    public static String readString(Context context, String key, String defualt) {
        if (context != null) {
            return context.getSharedPreferences(CONFIG_NAME, 0).getString(key, defualt);
        }
        return defualt;
    }
}

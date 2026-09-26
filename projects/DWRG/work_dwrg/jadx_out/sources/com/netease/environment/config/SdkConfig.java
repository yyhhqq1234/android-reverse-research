package com.netease.environment.config;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class SdkConfig {
    private static final String CONFIG_DOWNLOADING = "downlaoding";
    private static final String CONFIG_ENABLE = "enable";
    private static final String CONFIG_REGEX_FILE_URL = "regex_file_url";
    private static final String CONFIG_TASK_TIMEOUT = "task_timeout";
    private static final String CONFIG_UPDATE_DATE_TIME = "update_data_time";
    private static final String CONFIG_UPDATE_INTERVAL = "update_interval";
    private static final String PREFERENCES_CONFIG = "environment_preferences_config";
    private static SharedPreferences mPreferencesInstance;

    private static SharedPreferences getSharedPreferences(Context context) {
        if (mPreferencesInstance == null) {
            mPreferencesInstance = context.getApplicationContext().getSharedPreferences(PREFERENCES_CONFIG, 32768);
        }
        return mPreferencesInstance;
    }

    public static void putString(Context context, String key, String value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putString(key, value);
            editor.apply();
        }
    }

    public static void putBoolean(Context context, String key, boolean value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putBoolean(key, value);
            editor.apply();
        }
    }

    public static void putFloat(Context context, String key, float value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putFloat(key, value);
            editor.apply();
        }
    }

    public static void putInt(Context context, String key, int value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putInt(key, value);
            editor.apply();
        }
    }

    public static void putLong(Context context, String key, long value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putLong(key, value);
            editor.apply();
        }
    }

    public static String getString(Context context, String key, String defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getString(key, defaultValue);
    }

    public static boolean getBoolean(Context context, String key, boolean defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getBoolean(key, defaultValue);
    }

    public static float getFloat(Context context, String key, float defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getFloat(key, defaultValue);
    }

    public static int getInt(Context context, String key, int defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getInt(key, defaultValue);
    }

    public static long getLong(Context context, String key, long defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getLong(key, defaultValue);
    }

    public static void saveUpdateDataTime(Context context, long timeStamp) {
        putLong(context, CONFIG_UPDATE_DATE_TIME, timeStamp);
    }

    public static long getUpdateDataTime(Context context, long defaultValue) {
        return getLong(context, CONFIG_UPDATE_DATE_TIME, defaultValue);
    }

    public static void saveDownloadState(Context context, boolean value) {
        putBoolean(context, CONFIG_DOWNLOADING, value);
    }

    public static boolean isDownloading(Context context, boolean defaultValue) {
        return getBoolean(context, CONFIG_DOWNLOADING, defaultValue);
    }

    public static void saveEnableState(Context context, boolean value) {
        putBoolean(context, "enable", value);
    }

    public static boolean isEnable(Context context, boolean defaultValue) {
        return getBoolean(context, "enable", defaultValue);
    }

    public static void saveUpdateInterval(Context context, long value) {
        putLong(context, CONFIG_UPDATE_INTERVAL, value);
    }

    public static long getUpdateInterval(Context context, long defaultValue) {
        return getLong(context, CONFIG_UPDATE_INTERVAL, defaultValue);
    }

    public static void saveTaskTimeout(Context context, long value) {
        putLong(context, CONFIG_TASK_TIMEOUT, value);
    }

    public static long getTaskTimeout(Context context, long defaultValue) {
        return getLong(context, CONFIG_TASK_TIMEOUT, defaultValue);
    }

    public static void saveRegexFileUrl(Context context, String gameId, String value) {
        String key = "regex_file_url_" + gameId;
        putString(context, key, value);
    }

    public static String getRegexFileUrl(Context context, String gameId, String defaultValue) {
        String key = "regex_file_url_" + gameId;
        return getString(context, key, defaultValue);
    }
}

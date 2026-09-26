package com.netease.environment.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import com.netease.download.Const;
import com.netease.environment.BuildConfig;
import com.netease.environment.utils.LogUtils;
import com.netease.environment.utils.NetWorkUtils;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LogConfig {
    private static final String PREFERENCES_CONFIG = "environment_preferences_log";
    private static String TAG = LogConfig.class.getSimpleName();
    private static SharedPreferences mPreferencesInstance;

    private static SharedPreferences getSharedPreferences(Context context) {
        if (mPreferencesInstance == null) {
            mPreferencesInstance = context.getApplicationContext().getSharedPreferences(PREFERENCES_CONFIG, 32768);
        }
        return mPreferencesInstance;
    }

    public static void putInt(Context context, String key, int value) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.putInt(key, value);
            editor.apply();
        }
    }

    public static int getInt(Context context, String key, int defaultValue) {
        return context == null ? defaultValue : getSharedPreferences(context).getInt(key, defaultValue);
    }

    public static Map<String, ?> getAll(Context context) {
        if (context == null) {
            return null;
        }
        return getSharedPreferences(context).getAll();
    }

    public static void removeAll(Context context) {
        SharedPreferences.Editor editor;
        if (context != null && (editor = getSharedPreferences(context).edit()) != null) {
            editor.clear();
            editor.commit();
        }
    }

    public static void saveExceptionLog(Exception exception) {
        saveExceptionLog(exception, null);
    }

    public static void saveExceptionLog(Exception exception, String keyPre) {
        if (exception != null && SdkData.getContext() != null) {
            try {
                String tips = exception.toString();
                if (tips != null && tips.indexOf(Const.RESP_CONTENT_SPIT2) > 0) {
                    String key = tips.substring(0, tips.indexOf(Const.RESP_CONTENT_SPIT2));
                    if (keyPre != null && !keyPre.isEmpty()) {
                        key = keyPre + "_" + key;
                    }
                    int count = getInt(SdkData.getContext(), key, 0);
                    LogUtils.info(TAG, "the count of exception log for key [" + key + "] is " + count);
                    putInt(SdkData.getContext(), key, count + 1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void saveReviewLog(String result) {
        if (result != null && SdkData.getContext() != null) {
            try {
                JSONObject resultObject = new JSONObject(result);
                int code = resultObject.optInt("code", -1);
                if (code != -1) {
                    String key = String.valueOf(code);
                    int count = getInt(SdkData.getContext(), key, 0);
                    LogUtils.info(TAG, "the count of review log for key [" + key + "] is " + count);
                    putInt(SdkData.getContext(), key, count + 1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String getAndroidID(Context context) {
        if (context == null) {
            return "0000000000";
        }
        try {
            String defaultValue = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return defaultValue;
        } catch (Exception e) {
            e.printStackTrace();
            LogUtils.error(TAG, "fail to get android id");
            return "0000000000";
        }
    }

    public static String getPostLog(Context context) {
        if (context == null) {
            return null;
        }
        JSONObject logObject = new JSONObject();
        try {
            JSONObject infoObject = new JSONObject();
            infoObject.put("gameid", SdkData.getGameId());
            infoObject.put("deviceid", getAndroidID(context));
            infoObject.put("version", BuildConfig.VERSION_NAME);
            infoObject.put("sys", SdkConstants.SYSTEM);
            try {
                infoObject.put("network", NetWorkUtils.getNetworkTypeName(context));
            } catch (Exception e) {
                e.printStackTrace();
            }
            logObject.put("info", infoObject);
            JSONObject regexObject = new JSONObject();
            JSONObject errorObject = new JSONObject();
            Map<String, ?> map = getAll(context);
            if (map != null && map.size() > 0) {
                for (String key : map.keySet()) {
                    if (key != null) {
                        if (key.matches("^\\d*?$")) {
                            regexObject.put(key, map.get(key));
                        } else {
                            errorObject.put(key, map.get(key));
                        }
                    }
                }
            }
            logObject.put("regexcode", regexObject);
            logObject.put("errors", errorObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return logObject.toString();
    }
}

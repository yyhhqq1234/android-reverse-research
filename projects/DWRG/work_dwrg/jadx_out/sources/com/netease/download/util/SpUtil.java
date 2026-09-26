package com.netease.download.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SpUtil {
    private static final String COMMON_SP_NAME = "download_info";
    private static final String TAG = "SpUtil";
    private static Context sAppContext;
    private static SpUtil sInstance;
    private Map<String, PreferenceUnit> sMap;

    public static void initialize(Context pContext) {
        if (sInstance == null) {
            synchronized (SpUtil.class) {
                if (sInstance == null) {
                    sInstance = new SpUtil(pContext);
                }
            }
        }
    }

    private SpUtil(Context pContext) {
        sAppContext = pContext.getApplicationContext();
        this.sMap = new HashMap();
    }

    public static SpUtil getInstance() {
        if (sInstance == null && sAppContext != null) {
            initialize(sAppContext);
        }
        return sInstance;
    }

    private PreferenceUnit getPreference(Object pSpName) {
        String key = String.valueOf(pSpName);
        PreferenceUnit unit = this.sMap.get(key);
        if (unit == null) {
            PreferenceUnit unit2 = new PreferenceUnit(sAppContext, key);
            this.sMap.put(key, unit2);
            return unit2;
        }
        return unit;
    }

    private void set(Object pSpName, String pKey, String pValue, boolean pCommit) {
        SharedPreferences.Editor editor = getPreference(pSpName).editor;
        editor.putString(pKey, pValue);
        if (pCommit) {
            editor.commit();
        }
    }

    private void remove(Object pSpName, String pKey, boolean pCommit) {
        SharedPreferences.Editor editor = getPreference(pSpName).editor;
        editor.remove(pKey);
        if (pCommit) {
            editor.commit();
        }
    }

    private String get(Object pSpName, String pKey, String pDefaultValue) {
        try {
            String result = getPreference(pSpName).preferences.getString(pKey, pDefaultValue);
            return result;
        } catch (Exception e) {
            return pDefaultValue;
        }
    }

    public synchronized void setString(Object pSpName, String pKey, String pValue, boolean pCommit) {
        set(pSpName, pKey, pValue, pCommit);
    }

    public synchronized String getString(Object pSpName, String pKey, String pDefaultValue) {
        return get(pSpName, pKey, pDefaultValue);
    }

    public synchronized void setLong(Object pSpName, String pKey, long pValue, boolean pCommit) {
        set(pSpName, pKey, String.valueOf(pValue), pCommit);
    }

    public synchronized long getLong(Object pSpName, String pKey, long pDefaultValue) {
        try {
            pDefaultValue = Long.valueOf(get(pSpName, pKey, "")).longValue();
        } catch (Exception e) {
            LogUtil.w(TAG, new StringBuilder().append(e).toString());
        }
        return pDefaultValue;
    }

    public synchronized void clear(Object pSpName) {
        getPreference(pSpName).editor.clear().commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class PreferenceUnit {
        public SharedPreferences.Editor editor;
        public SharedPreferences preferences;

        public PreferenceUnit(Context pContext, String pSpName) {
            this.preferences = pContext.getSharedPreferences(pSpName, 0);
            this.editor = this.preferences.edit();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}

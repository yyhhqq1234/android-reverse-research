package com.netease.push.utils;

import android.content.SharedPreferences;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class MySharedPreferences implements SharedPreferences, SharedPreferences.Editor {
    public static final String TAG = "NGPush_" + MySharedPreferences.class.getSimpleName();
    private String m_packagename;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public MySharedPreferences(String packagename) {
        Log.i(TAG, "MySharedPreferences constructed, packagename:" + packagename);
        this.m_packagename = packagename;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String key) {
        return FileUtils.exists(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return null;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String key, boolean defValue) {
        boolean ret;
        String strRet = FileUtils.read(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(defValue)).toString());
        try {
            ret = Boolean.parseBoolean(strRet);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            ret = defValue;
        }
        Log.d(TAG, "getBoolean, key:" + key + ", value:" + ret);
        return ret;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String key, float defValue) {
        float ret;
        String strRet = FileUtils.read(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(defValue)).toString());
        try {
            ret = Float.parseFloat(strRet);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            ret = defValue;
        }
        Log.d(TAG, "getFloat, key:" + key + ", value:" + ret);
        return ret;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String key, int defValue) {
        int ret;
        String strRet = FileUtils.read(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(defValue)).toString());
        try {
            ret = Integer.parseInt(strRet);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            ret = defValue;
        }
        Log.d(TAG, "getInt, key:" + key + ", value:" + ret);
        return ret;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defValue) {
        long ret;
        String strRet = FileUtils.read(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(defValue)).toString());
        try {
            ret = Long.parseLong(strRet);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            e.printStackTrace();
            ret = defValue;
        }
        Log.d(TAG, "getLong, key:" + key + ", value:" + ret);
        return ret;
    }

    @Override // android.content.SharedPreferences
    public String getString(String key, String defValue) {
        String ret = defValue;
        String strRet = FileUtils.read(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(defValue)).toString());
        if (strRet != null) {
            ret = strRet;
        }
        Log.d(TAG, "getString, key:" + key + ", value:" + ret);
        return ret;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String arg0, Set<String> arg1) {
        return null;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
    }

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        return false;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String key, boolean value) {
        FileUtils.write(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(value)).toString());
        Log.d(TAG, "putBoolean, key:" + key + ", value:" + value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String key, float value) {
        FileUtils.write(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(value)).toString());
        Log.d(TAG, "putFloat, key:" + key + ", value:" + value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String key, int value) {
        FileUtils.write(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(value)).toString());
        Log.d(TAG, "putInt, key:" + key + ", value:" + value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String key, long value) {
        FileUtils.write(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(value)).toString());
        Log.d(TAG, "putLong, key:" + key + ", value:" + value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String key, String value) {
        FileUtils.write(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key, new StringBuilder(String.valueOf(value)).toString());
        Log.d(TAG, "putString, key:" + key + ", value:" + value);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String arg0, Set<String> arg1) {
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String key) {
        FileUtils.delete(String.valueOf(this.m_packagename) + PushConstants.KEY_SEPARATOR + key);
        Log.d(TAG, "remove, key:" + key);
        return this;
    }
}

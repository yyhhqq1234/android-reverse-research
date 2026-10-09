package com.android.support;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.y8;

/* JADX INFO: loaded from: classes4.dex */
public class Preferences {
    private static final boolean DEFAULT_BOOLEAN_VALUE = false;
    private static final double DEFAULT_DOUBLE_VALUE = 0.0d;
    private static final float DEFAULT_FLOAT_VALUE = 0.0f;
    private static final int DEFAULT_INT_VALUE = 0;
    private static final long DEFAULT_LONG_VALUE = 0;
    private static final String DEFAULT_STRING_VALUE = "";
    private static final String LENGTH = "_length";
    public static Context context;
    public static boolean isExpanded;
    public static boolean loadPref;
    private static Preferences prefsInstance;
    private static SharedPreferences sharedPreferences;

    public static native void Changes(Context context2, int i, String str, int i2, long j, boolean z, String str2);

    public static void changeFeatureInt(String str, int i, int i2) {
        with(context).writeInt(i, i2);
        Changes(context, i, str, i2, 0, false, (String) null);
    }

    public static void changeFeatureLong(String str, int i, long j) {
        with(context).writeLong(String.valueOf(i), j);
        Changes(context, i, str, 0, j, false, (String) null);
    }

    public static void changeFeatureString(String str, int i, String str2) {
        with(context).writeString(i, str2);
        Changes(context, i, str, 0, 0, false, str2);
    }

    public static void changeFeatureBool(String str, int i, boolean z) {
        with(context).writeBoolean(i, z);
        Changes(context, i, str, 0, 0, z, (String) null);
    }

    public static int loadPrefInt(String str, int i) {
        if (!loadPref) {
            return 0;
        }
        int i2 = with(context).readInt(i);
        Changes(context, i, str, i2, 0, false, (String) null);
        return i2;
    }

    public static long loadPrefLong(String str, int i) {
        if (!loadPref) {
            return 0;
        }
        long j = with(context).readLong(String.valueOf(i));
        Changes(context, i, str, 0, j, false, (String) null);
        return j;
    }

    public static boolean loadPrefBool(String str, int i, boolean z) {
        boolean z2 = z;
        boolean z3 = with(context).readBoolean(i, z2);
        if (i == -1) {
            loadPref = z3;
        }
        if (i == -3) {
            isExpanded = z3;
        }
        if (loadPref || i < 0) {
            z2 = z3;
        }
        Changes(context, i, str, 0, 0, z2, (String) null);
        return z2;
    }

    public static String loadPrefString(String str, int i) {
        if (!loadPref && i > 0) {
            return "";
        }
        String string = with(context).readString(i);
        Changes(context, i, str, 0, 0, false, string);
        return string;
    }

    Preferences(Context context2) {
        sharedPreferences = context2.getApplicationContext().getSharedPreferences(new StringBuffer().append(context2.getPackageName()).append("_preferences").toString(), 0);
    }

    Preferences(Context context2, String str) {
        sharedPreferences = context2.getApplicationContext().getSharedPreferences(str, 0);
    }

    public static Preferences with(Context context2) {
        if (prefsInstance == null) {
            prefsInstance = new Preferences(context2);
        }
        return prefsInstance;
    }

    public static Preferences with(Context context2, boolean z) {
        if (z) {
            prefsInstance = new Preferences(context2);
        }
        return prefsInstance;
    }

    public static Preferences with(Context context2, String str) {
        if (prefsInstance == null) {
            prefsInstance = new Preferences(context2, str);
        }
        return prefsInstance;
    }

    public static Preferences with(Context context2, String str, boolean z) {
        if (z) {
            prefsInstance = new Preferences(context2, str);
        }
        return prefsInstance;
    }

    public String readString(String str) {
        return sharedPreferences.getString(str, "");
    }

    public String readString(int i) {
        try {
            return sharedPreferences.getString(String.valueOf(i), "");
        } catch (ClassCastException e) {
            return "";
        }
    }

    public String readString(String str, String str2) {
        return sharedPreferences.getString(str, str2);
    }

    public void writeString(String str, String str2) {
        sharedPreferences.edit().putString(str, str2).apply();
    }

    public void writeString(int i, String str) {
        sharedPreferences.edit().putString(String.valueOf(i), str).apply();
    }

    public int readInt(String str) {
        return sharedPreferences.getInt(str, 0);
    }

    public int readInt(int i) {
        try {
            return sharedPreferences.getInt(String.valueOf(i), 0);
        } catch (ClassCastException e) {
            return 0;
        }
    }

    public int readInt(String str, int i) {
        return sharedPreferences.getInt(str, i);
    }

    public void writeInt(String str, int i) {
        sharedPreferences.edit().putInt(str, i).apply();
    }

    public void writeInt(int i, int i2) {
        sharedPreferences.edit().putInt(String.valueOf(i), i2).apply();
    }

    public double readDouble(String str) {
        if (contains(str)) {
            return Double.longBitsToDouble(readLong(str));
        }
        return DEFAULT_DOUBLE_VALUE;
    }

    public double readDouble(String str, double d) {
        if (contains(str)) {
            return Double.longBitsToDouble(readLong(str));
        }
        return d;
    }

    public void writeDouble(String str, double d) {
        writeLong(str, Double.doubleToRawLongBits(d));
    }

    public float readFloat(String str) {
        return sharedPreferences.getFloat(str, 0.0f);
    }

    public float readFloat(String str, float f) {
        return sharedPreferences.getFloat(str, f);
    }

    public void writeFloat(String str, float f) {
        sharedPreferences.edit().putFloat(str, f).apply();
    }

    public long readLong(String str) {
        return sharedPreferences.getLong(str, 0L);
    }

    public long readLong(String str, long j) {
        return sharedPreferences.getLong(str, j);
    }

    public void writeLong(String str, long j) {
        sharedPreferences.edit().putLong(str, j).apply();
    }

    public boolean readBoolean(String str) {
        return sharedPreferences.getBoolean(str, false);
    }

    public boolean readBoolean(int i) {
        return sharedPreferences.getBoolean(String.valueOf(i), false);
    }

    public boolean readBoolean(String str, boolean z) {
        return sharedPreferences.getBoolean(str, z);
    }

    public boolean readBoolean(int i, boolean z) {
        try {
            return sharedPreferences.getBoolean(String.valueOf(i), z);
        } catch (ClassCastException e) {
            return z;
        }
    }

    public void writeBoolean(String str, boolean z) {
        sharedPreferences.edit().putBoolean(str, z).apply();
    }

    public void writeBoolean(int i, boolean z) {
        sharedPreferences.edit().putBoolean(String.valueOf(i), z).apply();
    }

    @TargetApi(11)
    public void putStringSet(String str, Set<String> set) {
        if (Build.VERSION.SDK_INT < 11) {
            putOrderedStringSet(str, set);
        } else {
            sharedPreferences.edit().putStringSet(str, set).apply();
        }
    }

    public void putOrderedStringSet(String str, Set<String> set) {
        int i = 0;
        if (sharedPreferences.contains(new StringBuffer().append(str).append(LENGTH).toString())) {
            i = readInt(new StringBuffer().append(str).append(LENGTH).toString());
        }
        writeInt(new StringBuffer().append(str).append(LENGTH).toString(), set.size());
        int i2 = 0;
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            writeString(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(y8.i.d).toString()).append(i2).toString()).append(y8.i.e).toString(), it.next());
            i2++;
        }
        while (i2 < i) {
            remove(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(y8.i.d).toString()).append(i2).toString()).append(y8.i.e).toString());
            i2++;
        }
    }

    @TargetApi(11)
    public Set<String> getStringSet(String str, Set<String> set) {
        if (Build.VERSION.SDK_INT < 11) {
            return getOrderedStringSet(str, set);
        }
        return sharedPreferences.getStringSet(str, set);
    }

    public Set<String> getOrderedStringSet(String str, Set<String> set) {
        if (contains(new StringBuffer().append(str).append(LENGTH).toString())) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = readInt(new StringBuffer().append(str).append(LENGTH).toString());
            if (i >= 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    linkedHashSet.add(readString(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(y8.i.d).toString()).append(i2).toString()).append(y8.i.e).toString()));
                }
            }
            return linkedHashSet;
        }
        return set;
    }

    public void remove(String str) {
        int i;
        if (contains(new StringBuffer().append(str).append(LENGTH).toString()) && (i = readInt(new StringBuffer().append(str).append(LENGTH).toString())) >= 0) {
            sharedPreferences.edit().remove(new StringBuffer().append(str).append(LENGTH).toString()).apply();
            for (int i2 = 0; i2 < i; i2++) {
                sharedPreferences.edit().remove(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(y8.i.d).toString()).append(i2).toString()).append(y8.i.e).toString()).apply();
            }
        }
        sharedPreferences.edit().remove(str).apply();
    }

    public boolean contains(String str) {
        return sharedPreferences.contains(str);
    }

    public void clear() {
        sharedPreferences.edit().clear().apply();
    }
}

package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class vj {
    private static com.applovin.impl.sdk.j b;
    private static SharedPreferences c;
    private final SharedPreferences a;

    public vj(com.applovin.impl.sdk.j jVar) {
        this.a = com.applovin.impl.sdk.j.m().getSharedPreferences("com.applovin.sdk.preferences." + jVar.a0(), 0);
        b = jVar;
    }

    public void b(uj ujVar, Object obj) {
        b(ujVar, obj, this.a);
    }

    public static void b(uj ujVar, Object obj, Context context) {
        a(ujVar.a(), obj, a(context), (SharedPreferences.Editor) null);
    }

    public void b(uj ujVar, Object obj, SharedPreferences sharedPreferences) {
        a(ujVar.a(), obj, sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        a(sharedPreferences.edit().clear());
    }

    public Object a(uj ujVar, Object obj) {
        return a(ujVar, obj, this.a);
    }

    public void b(uj ujVar) {
        a(this.a.edit().remove(ujVar.a()));
    }

    public static Object a(uj ujVar, Object obj, Context context) {
        return a(ujVar.a(), obj, ujVar.b(), a(context));
    }

    public Object a(uj ujVar, Object obj, SharedPreferences sharedPreferences) {
        return a(ujVar.a(), obj, ujVar.b(), sharedPreferences);
    }

    public static Object a(uj ujVar, Object obj, SharedPreferences sharedPreferences, boolean z) {
        return a(ujVar.a(), obj, ujVar.b(), sharedPreferences, z);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return a(str, obj, cls, sharedPreferences, true);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences, boolean z) {
        Object stringSet;
        long jLongValue;
        int iIntValue;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (sharedPreferences.contains(str)) {
                if (Boolean.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
                    } else {
                        stringSet = Boolean.valueOf(sharedPreferences.getBoolean(str, false));
                    }
                } else if (Float.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
                    } else {
                        stringSet = Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
                    }
                } else if (Integer.class.equals(cls)) {
                    if (obj != null) {
                        if (obj.getClass().equals(Long.class)) {
                            iIntValue = ((Long) obj).intValue();
                        } else {
                            iIntValue = ((Integer) obj).intValue();
                        }
                        stringSet = Integer.valueOf(sharedPreferences.getInt(str, iIntValue));
                    } else {
                        stringSet = Integer.valueOf(sharedPreferences.getInt(str, 0));
                    }
                } else if (Long.class.equals(cls)) {
                    if (obj != null) {
                        if (obj.getClass().equals(Integer.class)) {
                            jLongValue = ((Integer) obj).longValue();
                        } else {
                            jLongValue = ((Long) obj).longValue();
                        }
                        stringSet = Long.valueOf(sharedPreferences.getLong(str, jLongValue));
                    } else {
                        stringSet = Long.valueOf(sharedPreferences.getLong(str, 0L));
                    }
                } else if (Double.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()))));
                    } else {
                        stringSet = Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, 0L)));
                    }
                } else if (String.class.equals(cls)) {
                    stringSet = sharedPreferences.getString(str, (String) obj);
                } else {
                    stringSet = Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) obj) : obj;
                }
                if (stringSet != null) {
                    Object objCast = cls.cast(stringSet);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    return objCast;
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                return obj;
            }
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return obj;
        } catch (Throwable th) {
            if (z) {
                try {
                    com.applovin.impl.sdk.n.c("SharedPreferencesManager", "Error getting value for key: " + str, th);
                } finally {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                }
            }
            return obj;
        }
    }

    public Object a(uj ujVar) {
        Object objA = a(ujVar, null);
        b(ujVar);
        return objA;
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        a(str, obj, (SharedPreferences) null, editor);
    }

    public void a(String str, Object obj, SharedPreferences sharedPreferences) {
        a(str, obj, sharedPreferences, (SharedPreferences.Editor) null);
    }

    public static void a(String str, Object obj, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        boolean z = editor != null;
        if (!z) {
            editor = sharedPreferences.edit();
        }
        if (obj != null) {
            if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editor.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Integer) {
                editor.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                editor.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                editor.putLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
            } else if (obj instanceof String) {
                editor.putString(str, (String) obj);
            } else if (obj instanceof Set) {
                editor.putStringSet(str, (Set) obj);
            } else {
                com.applovin.impl.sdk.n.h("SharedPreferencesManager", "Unable to put default value of invalid type: " + obj);
                return;
            }
        } else {
            editor.remove(str);
        }
        if (z) {
            return;
        }
        a(editor);
    }

    private static void a(final SharedPreferences.Editor editor) {
        try {
            if (yp.h()) {
                com.applovin.impl.sdk.j jVar = b;
                if (jVar != null && jVar.i0() != null) {
                    tm tmVarI0 = b.i0();
                    com.applovin.impl.sdk.j jVar2 = b;
                    Objects.requireNonNull(editor);
                    tmVarI0.a((yl) new jn(jVar2, true, "commitSharedPreferencesChanges", new Runnable() { // from class: com.applovin.impl.vj$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            editor.commit();
                        }
                    }), tm.b.OTHER);
                } else {
                    editor.apply();
                }
            } else {
                editor.commit();
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.n.c("SharedPreferencesManager", "Unable to apply changes", th);
        }
    }

    private static SharedPreferences a(Context context) {
        if (c == null) {
            c = context.getSharedPreferences("com.applovin.sdk.shared", 0);
        }
        return c;
    }
}

package com.netease.ntunisdk.base.update.dex;

import android.content.Context;
import android.util.Log;
import dalvik.system.DexClassLoader;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Arrays;

/* loaded from: classes.dex */
class DexHackLowLevel {
    private static final String TAG = "DexHackLowLevel";

    DexHackLowLevel() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void load(Context context, String[] strs) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        Log.d(TAG, "load:" + Arrays.toString(strs));
        PathClassLoader obj = (PathClassLoader) context.getClassLoader();
        for (int i = strs.length - 1; i >= 0; i--) {
            String str = strs[i];
            DexClassLoader dexClassLoader = new DexClassLoader(str, context.getCacheDir().getAbsolutePath(), null, context.getClassLoader());
            setField(obj, PathClassLoader.class, "mPaths", appendArray(getField(obj, PathClassLoader.class, "mPaths"), getField(dexClassLoader, DexClassLoader.class, "mRawDexPath")));
            setField(obj, PathClassLoader.class, "mFiles", combineArray(getField(obj, PathClassLoader.class, "mFiles"), getField(dexClassLoader, DexClassLoader.class, "mFiles")));
            setField(obj, PathClassLoader.class, "mZips", combineArray(getField(obj, PathClassLoader.class, "mZips"), getField(dexClassLoader, DexClassLoader.class, "mZips")));
            setField(obj, PathClassLoader.class, "mDexs", combineArray(getField(obj, PathClassLoader.class, "mDexs"), getField(dexClassLoader, DexClassLoader.class, "mDexs")));
        }
    }

    private static Object getField(Object obj, Class cls, String str) throws NoSuchFieldException, IllegalAccessException {
        Log.d(TAG, "getField");
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    private static void setField(Object obj, Class cls, String str, Object obj2) throws NoSuchFieldException, IllegalAccessException {
        Log.d(TAG, "setField");
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    private static Object combineArray(Object obj, Object obj2) {
        Log.d(TAG, "combineArray");
        Class componentType = obj2.getClass().getComponentType();
        int length = Array.getLength(obj2);
        int length2 = Array.getLength(obj) + length;
        Object newInstance = Array.newInstance((Class<?>) componentType, length2);
        for (int i = 0; i < length2; i++) {
            if (i < length) {
                Array.set(newInstance, i, Array.get(obj2, i));
            } else {
                Array.set(newInstance, i, Array.get(obj, i - length));
            }
        }
        return newInstance;
    }

    private static Object appendArray(Object obj, Object obj2) {
        Log.d(TAG, "appendArray");
        Class componentType = obj.getClass().getComponentType();
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance((Class<?>) componentType, length + 1);
        Array.set(newInstance, 0, obj2);
        for (int i = 1; i < length + 1; i++) {
            Array.set(newInstance, i, Array.get(obj, i - 1));
        }
        return newInstance;
    }
}

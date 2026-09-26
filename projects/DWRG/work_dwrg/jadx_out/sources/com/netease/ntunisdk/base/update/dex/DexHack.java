package com.netease.ntunisdk.base.update.dex;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import java.lang.reflect.Array;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class DexHack {
    private static final String TAG = "DexHack";
    private static String[] sDexFilePaths;

    @TargetApi(14)
    public static void load(Context context, String... dexFilePaths) throws Exception {
        if (dexFilePaths != null) {
            setDexFilePaths(dexFilePaths);
            Log.d(TAG, "device api-level:" + Build.VERSION.SDK_INT);
            if (Build.VERSION.SDK_INT >= 14) {
                load(context);
                return;
            } else {
                DexHackLowLevel.load(context, getDexFilePaths());
                return;
            }
        }
        throw new IllegalStateException("dex file path is set already, please do not set twice or more.");
    }

    @TargetApi(14)
    private static void load(Context context) throws Exception {
        ClassLoader localClassLoader = DexHack.class.getClassLoader();
        if (localClassLoader instanceof BaseDexClassLoader) {
            Object existing = getDexClassLoaderElements((BaseDexClassLoader) localClassLoader);
            Object[] dexes = new Object[getDexFilePaths().length + 1];
            String[] arr$ = getDexFilePaths();
            int len$ = arr$.length;
            int i$ = 0;
            int index = 0;
            while (i$ < len$) {
                String path = arr$[i$];
                Log.d(TAG, "path: " + path);
                BaseDexClassLoader classLoader = new DexClassLoader(path, context.getCacheDir().getAbsolutePath(), null, localClassLoader);
                Object incoming = getDexClassLoaderElements(classLoader);
                dexes[index] = incoming;
                i$++;
                index++;
            }
            dexes[index] = existing;
            Object joined = joinArrays(existing.getClass().getComponentType(), dexes);
            setDexClassLoaderElements((BaseDexClassLoader) localClassLoader, joined);
            return;
        }
        throw new UnsupportedOperationException("Class loader not supported");
    }

    private static void setDexClassLoaderElements(BaseDexClassLoader classLoader, Object elements) throws Exception {
        Field pathListField = BaseDexClassLoader.class.getDeclaredField("pathList");
        pathListField.setAccessible(true);
        Object pathList = pathListField.get(classLoader);
        Field dexElementsField = pathList.getClass().getDeclaredField("dexElements");
        dexElementsField.setAccessible(true);
        dexElementsField.set(pathList, elements);
    }

    private static Object getDexClassLoaderElements(BaseDexClassLoader classLoader) throws Exception {
        Field pathListField = BaseDexClassLoader.class.getDeclaredField("pathList");
        pathListField.setAccessible(true);
        Object pathList = pathListField.get(classLoader);
        Field dexElementsField = pathList.getClass().getDeclaredField("dexElements");
        dexElementsField.setAccessible(true);
        return dexElementsField.get(pathList);
    }

    private static Object joinArrays(Class<?> o1Type, Object[] others) {
        int size = 0;
        for (Object obj : others) {
            size += Array.getLength(obj);
        }
        Object array = Array.newInstance(o1Type, size);
        int offset = 0;
        for (Object other : others) {
            int i = 0;
            while (i < Array.getLength(other)) {
                Array.set(array, offset, Array.get(other, i));
                i++;
                offset++;
            }
        }
        return array;
    }

    private static String[] getDexFilePaths() {
        return sDexFilePaths;
    }

    private static void setDexFilePaths(String... sDexFilePath) {
        sDexFilePaths = sDexFilePath;
    }
}

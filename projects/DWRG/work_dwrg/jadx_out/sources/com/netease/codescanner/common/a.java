package com.netease.codescanner.common;

import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class a<T> {
    private final SortedMap<Integer, Class<? extends T>> a;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Class<T> cls, Class<? extends T> cls2) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException();
        }
        this.a = new TreeMap(Collections.reverseOrder());
        this.a.put(1, cls2);
    }

    public final T a() {
        for (Integer num : this.a.keySet()) {
            if (Build.VERSION.SDK_INT >= num.intValue()) {
                try {
                    return this.a.get(num).getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (IllegalAccessException e) {
                    Logging.logStackTrace(e);
                } catch (IllegalArgumentException e2) {
                    Logging.logStackTrace(e2);
                } catch (InstantiationException e3) {
                    Logging.logStackTrace(e3);
                } catch (NoSuchMethodException e4) {
                    Logging.logStackTrace(e4);
                } catch (InvocationTargetException e5) {
                    Logging.logStackTrace(e5);
                }
            }
        }
        throw new RuntimeException("SDK Version code is even smaller than 1");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, Class<? extends T> cls) {
        this.a.put(Integer.valueOf(i), cls);
    }
}

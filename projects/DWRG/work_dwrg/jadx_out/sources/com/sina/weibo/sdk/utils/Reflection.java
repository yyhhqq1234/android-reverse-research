package com.sina.weibo.sdk.utils;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class Reflection {
    public static Object getProperty(Object owner, String fieldName) throws Exception {
        Class ownerClass = owner.getClass();
        Field field = ownerClass.getField(fieldName);
        Object property = field.get(owner);
        return property;
    }

    public static Object getStaticProperty(String className, String fieldName) throws Exception {
        Class ownerClass = Class.forName(className);
        Field field = ownerClass.getField(fieldName);
        Object property = field.get(ownerClass);
        return property;
    }

    public static Object invokeMethod(Object owner, String methodName, Object[] args) throws Exception {
        Class ownerClass = owner.getClass();
        Class[] argsClass = new Class[args.length];
        int j = args.length;
        for (int i = 0; i < j; i++) {
            argsClass[i] = args[i].getClass();
        }
        Method method = ownerClass.getMethod(methodName, argsClass);
        return method.invoke(owner, args);
    }

    public static Object invokeStaticMethod(String className, String methodName, Object[] args) throws Exception {
        Class ownerClass = Class.forName(className);
        Class[] argsClass = new Class[args.length];
        int j = args.length;
        for (int i = 0; i < j; i++) {
            argsClass[i] = args[i].getClass();
        }
        Method method = ownerClass.getMethod(methodName, argsClass);
        return method.invoke(null, args);
    }

    public static Object newInstance(String className, Class<?>[] clsArr, Object[] args) throws Exception {
        Class newoneClass = Class.forName(className);
        Constructor cons = newoneClass.getConstructor(clsArr);
        return cons.newInstance(args);
    }

    public static boolean isInstance(Object obj, Class cls) {
        return cls.isInstance(obj);
    }

    public static Object getByArray(Object array, int index) {
        return Array.get(array, index);
    }

    public static void invokeVoidMethod(Object owner, String methodName, boolean property) {
        try {
            Method method = owner.getClass().getMethod(methodName, Boolean.TYPE);
            method.invoke(owner, Boolean.valueOf(property));
        } catch (IllegalAccessException e) {
        } catch (IllegalArgumentException e2) {
        } catch (NoSuchMethodException e3) {
        } catch (SecurityException e4) {
        } catch (InvocationTargetException e5) {
        }
    }

    public static Object invokeMethod(Object ownerObj, String methodName, Class<?>[] clsArr, Object[] params) {
        try {
            Class<?> ownerType = ownerObj.getClass();
            Method method = ownerType.getMethod(methodName, clsArr);
            return method.invoke(ownerObj, params);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (SecurityException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static Object invokeParamsMethod(Object ownerObj, String methodName, Class<?>[] clsArr, Object[] params) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Class<?> ownerType = ownerObj.getClass();
        Method method = ownerType.getMethod(methodName, clsArr);
        method.setAccessible(true);
        return method.invoke(ownerObj, params);
    }

    public static Object invokeStaticMethod(String className, String methodName, Class<?>[] clsArr, Object[] params) {
        try {
            Class<?> ownerClass = Class.forName(className);
            Method method = ownerClass.getMethod(methodName, clsArr);
            return method.invoke(null, params);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return null;
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    public static Object invokeStaticMethod(Class c, String methodName, Class<?>[] clsArr, Object[] params) {
        try {
            Method method = c.getMethod(methodName, clsArr);
            return method.invoke(null, params);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (SecurityException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }
}

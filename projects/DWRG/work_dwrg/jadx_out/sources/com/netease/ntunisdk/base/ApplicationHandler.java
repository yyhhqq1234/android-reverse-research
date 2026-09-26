package com.netease.ntunisdk.base;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.alipay.sdk.util.i;
import dalvik.system.DexFile;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ApplicationHandler extends Application {
    public static final String TAG = "UniSDK ApplicationHandler";
    private static Map<String, SdkApplication> sdkMap = new HashMap();

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        handleOnApplicationAttachBaseContext(base, this);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        handleOnApplicationOnCreate(getApplicationContext(), this);
    }

    public static void handleOnApplicationAttachBaseContext(Context base) {
        ApplicationInjection.processInAttachBaseContext(base);
        initAllApplication(base);
        Log.d(TAG, "sdkMap size:" + sdkMap.size());
        for (String key : sdkMap.keySet()) {
            sdkMap.get(key).handleOnApplicationAttachBaseContext(base);
        }
    }

    public static void handleOnApplicationOnCreate(Context base) {
        for (String key : sdkMap.keySet()) {
            sdkMap.get(key).handleOnApplicationOnCreate(base);
        }
        clearSdkMap();
    }

    public static void handleOnApplicationAttachBaseContext(Context base, Application application) {
        ApplicationInjection.processInAttachBaseContext(base);
        initAllApplication(base);
        Log.d(TAG, "sdkMap size:" + sdkMap.size());
        for (String key : sdkMap.keySet()) {
            sdkMap.get(key).handleOnApplicationAttachBaseContext(base, application);
            sdkMap.get(key).handleOnApplicationAttachBaseContext(base);
        }
    }

    public static void handleOnApplicationOnCreate(Context base, Application application) {
        for (String key : sdkMap.keySet()) {
            sdkMap.get(key).handleOnApplicationOnCreate(base, application);
            sdkMap.get(key).handleOnApplicationOnCreate(base);
        }
        clearSdkMap();
    }

    private static void clearSdkMap() {
        if (sdkMap != null) {
            sdkMap.clear();
        }
    }

    public static SdkApplication getSdkApplication(String key) {
        return sdkMap.get(key);
    }

    private static void initAllApplication(Context ctx) {
        DexFile localDexFile;
        DexFile localDexFile2 = null;
        List<String> unisdkList = new ArrayList<>();
        String assetsClasses = assets2Class(ctx);
        if (assetsClasses != null) {
            String[] claNames = assetsClasses.split(i.b);
            for (String str : claNames) {
                if (str.trim().startsWith("Application")) {
                    unisdkList.add("com.netease.ntunisdk." + str.trim());
                }
            }
        }
        if (unisdkList.isEmpty()) {
            PackageManager pm = ctx.getPackageManager();
            try {
                PackageInfo paramPackageInfo = pm.getPackageInfo(ctx.getPackageName(), 0);
                localDexFile = new DexFile(paramPackageInfo.applicationInfo.sourceDir);
            } catch (Throwable th) {
                localThrowable1 = th;
            }
            try {
                Enumeration localEnumeration = localDexFile.entries();
                while (localEnumeration != null && localEnumeration.hasMoreElements()) {
                    String str2 = localEnumeration.nextElement();
                    if (str2.startsWith("com.netease.ntunisdk.Application") && !str2.contains("$")) {
                        unisdkList.add(str2);
                    }
                }
                localDexFile2 = localDexFile;
            } catch (Throwable th2) {
                localThrowable1 = th2;
                localThrowable1.printStackTrace();
                return;
            }
        }
        for (String str3 : unisdkList) {
            try {
                Log.d(TAG, String.format("Class.forName(%s)", str3));
                Class<?> clazz = Class.forName(str3);
                Constructor<?>[] cons = clazz.getConstructors();
                if (cons != null) {
                    int i = 0;
                    while (true) {
                        if (i >= cons.length) {
                            break;
                        }
                        Type[] types = cons[i].getGenericParameterTypes();
                        if (types == null || types.length != 1) {
                            i++;
                        } else {
                            SdkApplication sdk = (SdkApplication) cons[i].newInstance(ctx);
                            String tmpChannel = sdk.getChannel();
                            sdkMap.put(tmpChannel, sdk);
                            break;
                        }
                    }
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
            } catch (InstantiationException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
        if (localDexFile2 != null && Build.VERSION.SDK_INT >= 14) {
            try {
                localDexFile2.close();
            } catch (Throwable localThrowable2) {
                localThrowable2.printStackTrace();
            }
        }
    }

    private static String assets2Class(Context ctx) {
        InputStream is;
        int index;
        String jsonStr = null;
        try {
            is = ctx.getAssets().open("ntunisdk_data", 3);
            index = is.available();
        } catch (IOException e) {
            Log.i(TAG, "ntunisdk_data config not found");
        }
        if (index == 0) {
            Log.d(TAG, "ntunisdk_data empty");
            return null;
        }
        byte[] data = new byte[index];
        is.read(data);
        String jsonStr2 = new String(data, "UTF-8");
        jsonStr = jsonStr2;
        Log.d(TAG, "ntunisdk_data:" + jsonStr);
        return jsonStr;
    }
}

package com.netease.unisdk.ngvoice.log;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class NgLog {
    public static final String NT_UNISDK_DEBUG_KEY = "NtUniSdkDebug_key";
    private static boolean isDebug;

    public static void checkIsDebug(Context context) {
        isDebug = isDebug(context);
        Log.d("ng_voice", "NgLog log:" + isDebug);
    }

    public static void v(String tag, String msg, Object... args) {
        if (isDebug) {
            Log.v(tag, createMsg(msg, args));
        }
    }

    public static void d(String tag, String msg, Object... args) {
        if (isDebug) {
            Log.d(tag, createMsg(msg, args));
        }
    }

    public static void i(String tag, String msg, Object... args) {
        if (isDebug) {
            Log.i(tag, createMsg(msg, args));
        }
    }

    public static void w(String tag, String msg, Object... args) {
        if (isDebug) {
            Log.w(tag, createMsg(msg, args));
        }
    }

    public static void e(String tag, String msg, Object... args) {
        Log.e(tag, createMsg(msg, args));
    }

    public static void v(String tag, String msg) {
        if (isDebug) {
            Log.v(tag, msg);
        }
    }

    public static void d(String tag, String msg) {
        if (isDebug) {
            Log.d(tag, msg);
        }
    }

    public static void i(String tag, String msg) {
        if (isDebug) {
            Log.i(tag, msg);
        }
    }

    public static void w(String tag, String msg) {
        if (isDebug) {
            Log.w(tag, msg);
        }
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
    }

    private static String createMsg(String msg, Object... args) {
        return args.length == 0 ? msg : String.format(msg, args);
    }

    private static boolean isDebug(Context context) {
        try {
            boolean sdCardExist = Environment.getExternalStorageState().equals("mounted");
            if (sdCardExist) {
                String baseDir = Environment.getExternalStorageDirectory().getAbsolutePath();
                String debugLogFile = baseDir + File.separator + ".data" + File.separator + "ntUniSDK" + File.separator + "base" + File.separator + "debug_log";
                File file = new File(debugLogFile);
                if (file.exists()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        String className = context.getPackageName() + ".BuildConfig";
        try {
            Class<?> cla = Class.forName(className);
            Field field = cla.getDeclaredField("DEBUG");
            boolean isDebug2 = field.getBoolean(null);
            if (isDebug2) {
                return isDebug2;
            }
        } catch (ClassNotFoundException e2) {
        } catch (IllegalAccessException e3) {
        } catch (IllegalArgumentException e4) {
        } catch (NoSuchFieldException e5) {
        } catch (NullPointerException e6) {
        }
        try {
            int sysDebugKeyValue = Settings.System.getInt(context.getContentResolver(), NT_UNISDK_DEBUG_KEY);
            if (1 == sysDebugKeyValue) {
                return true;
            }
        } catch (Settings.SettingNotFoundException e7) {
        }
        return false;
    }
}

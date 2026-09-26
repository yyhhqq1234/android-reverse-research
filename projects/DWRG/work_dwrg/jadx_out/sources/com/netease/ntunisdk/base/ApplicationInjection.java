package com.netease.ntunisdk.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.netease.ntunisdk.base.update.dex.DexHack;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class ApplicationInjection {
    private static final String BASE_DEX_FILE_NAME = "unisdk_base.dex";
    private static final String BASE_DEX_FILE_TMP_NAME = "unisdk_base.dex_tmp";
    private static final String CLOSE_DEX_FILE_NAME = "unipatch_close";
    private static final String KEY_APP_VER = "app_ver";
    private static final String KEY_CNT = "KEY_PATCH_DEX_CNT";
    private static final String KEY_PATH = "KEY_PATCH_DEX_";
    private static final String KEY_USB_TXT = "usb_txt";
    private static final String KEY_USE_DEX = "use_dex";
    private static final String SP_NAME = "unisdk_dynamic_info";
    private static final String TAG = "ApplicationInjection";
    private static boolean sCloseDex;
    private static boolean sDone = false;
    private static SharedPreferences sharedPreferences;

    ApplicationInjection() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void processInAttachBaseContext(Context base) {
        sharedPreferences = base.getSharedPreferences(SP_NAME, 0);
        if (!sDone) {
            sDone = true;
            File dexFilePath = new File(base.getFilesDir(), BASE_DEX_FILE_NAME);
            File dexFileTmpPath = new File(base.getFilesDir(), BASE_DEX_FILE_TMP_NAME);
            sCloseDex = new File(base.getExternalFilesDir(null), CLOSE_DEX_FILE_NAME).exists();
            Log.d(TAG, "FilePath: " + dexFilePath.getAbsolutePath());
            boolean result = true;
            boolean appVerEqual = appVerEqual(base);
            boolean usbEqual = usbEqual(base);
            if (!appVerEqual || !usbEqual) {
                clearCache();
            }
            if ((!dexFilePath.exists() || !appVerEqual || !usbEqual) && (result = copyAssets2SD(base, BASE_DEX_FILE_NAME, dexFileTmpPath.getPath()))) {
                result = dexFileTmpPath.renameTo(dexFilePath);
            }
            if (result && dexFilePath.exists()) {
                try {
                    DexHack.load(base, getDexPaths(dexFilePath.getPath()));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                setGlobalUseDex(true);
                return;
            }
            setGlobalUseDex(false);
            Log.w(TAG, "dex corrupted!");
        }
    }

    private static boolean copyAssets2SD(Context ctx, String srcAssetsFilePath, String destFilePath) {
        File file;
        boolean notExist;
        boolean result = false;
        InputStream myInput = null;
        OutputStream myOutput = null;
        try {
            try {
                file = new File(destFilePath);
                notExist = !file.exists();
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        if (!notExist) {
            if (0 != 0) {
                try {
                    myInput.close();
                } catch (IOException e3) {
                    Log.w(TAG, "close: " + e3);
                    return false;
                }
            }
            if (0 == 0) {
                return false;
            }
            myOutput.close();
            return false;
        }
        myInput = ctx.getAssets().open(srcAssetsFilePath);
        boolean notExist2 = file.createNewFile();
        Log.d(TAG, "createNewFile result=" + notExist2);
        OutputStream myOutput2 = new FileOutputStream(file);
        try {
            byte[] buffer = new byte[1024];
            for (int length = myInput.read(buffer); length > 0; length = myInput.read(buffer)) {
                myOutput2.write(buffer, 0, length);
            }
            myOutput2.flush();
            result = true;
            if (myInput != null) {
                try {
                    myInput.close();
                } catch (IOException e4) {
                    Log.w(TAG, "close: " + e4);
                    myOutput = myOutput2;
                }
            }
            if (myOutput2 != null) {
                myOutput2.close();
            }
            myOutput = myOutput2;
        } catch (FileNotFoundException e5) {
            e = e5;
            myOutput = myOutput2;
            Log.w(TAG, "" + e);
            if (myInput != null) {
                try {
                    myInput.close();
                } catch (IOException e6) {
                    Log.w(TAG, "close: " + e6);
                }
            }
            if (myOutput != null) {
                myOutput.close();
            }
            return result;
        } catch (IOException e7) {
            e = e7;
            myOutput = myOutput2;
            Log.w(TAG, "" + e);
            if (myInput != null) {
                try {
                    myInput.close();
                } catch (IOException e8) {
                    Log.w(TAG, "close: " + e8);
                }
            }
            if (myOutput != null) {
                myOutput.close();
            }
            return result;
        } catch (Throwable th2) {
            th = th2;
            myOutput = myOutput2;
            if (myInput != null) {
                try {
                    myInput.close();
                } catch (IOException e9) {
                    Log.w(TAG, "close: " + e9);
                    throw th;
                }
            }
            if (myOutput != null) {
                myOutput.close();
            }
            throw th;
        }
        return result;
    }

    private static boolean appVerEqual(Context context) {
        int cachedAppVer = sharedPreferences.getInt(KEY_APP_VER, 0);
        try {
            int localAppVer = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            return cachedAppVer == localAppVer;
        } catch (Exception e) {
            Log.w(TAG, "" + e);
            return false;
        }
    }

    private static boolean usbEqual(Context context) {
        String usbTxt = sharedPreferences.getString(KEY_USB_TXT, null);
        if (usbTxt == null) {
            return false;
        }
        InputStream myInput = null;
        boolean result = true;
        try {
            try {
                myInput = context.getAssets().open(usbTxt);
                if (myInput != null) {
                    try {
                        myInput.close();
                    } catch (IOException e) {
                        Log.w(TAG, "close: " + e);
                    }
                }
            } catch (Throwable th) {
                if (myInput != null) {
                    try {
                        myInput.close();
                    } catch (IOException e2) {
                        Log.w(TAG, "close: " + e2);
                    }
                }
                throw th;
            }
        } catch (Throwable e3) {
            result = false;
            Log.w(TAG, "" + e3);
            if (0 != 0) {
                try {
                    myInput.close();
                } catch (IOException e4) {
                    Log.w(TAG, "close: " + e4);
                }
            }
        }
        return result;
    }

    private static void clearCache() {
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.clear();
        editor.commit();
    }

    private static void setGlobalUseDex(boolean use) {
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putInt(KEY_USE_DEX, use ? 1 : 0);
        editor.commit();
    }

    private static String[] getDexPaths(String basePath) {
        if (sCloseDex) {
            return new String[]{basePath};
        }
        int patchDexCnt = sharedPreferences.getInt(KEY_CNT, 0);
        String[] paths = new String[patchDexCnt + 1];
        for (int i = 0; i != patchDexCnt; i++) {
            paths[i] = sharedPreferences.getString(KEY_PATH + ((patchDexCnt - 1) - i), null);
        }
        paths[patchDexCnt] = basePath;
        return paths;
    }
}

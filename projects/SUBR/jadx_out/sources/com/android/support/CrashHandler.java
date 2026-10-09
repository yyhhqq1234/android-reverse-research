package com.android.support;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class CrashHandler {
    public static final Thread.UncaughtExceptionHandler DEFAULT_UNCAUGHT_EXCEPTION_HANDLER = Thread.getDefaultUncaughtExceptionHandler();

    public static void init(Context context, boolean z) {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(context) { // from class: com.android.support.CrashHandler.100000000
            private final Context val$app;

            {
                this.val$app = context;
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                Log.e("AppCrash", "Error just lunched ");
                try {
                    tryUncaughtException(thread, th);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    if (CrashHandler.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER != null) {
                        CrashHandler.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER.uncaughtException(thread, th);
                    } else {
                        System.exit(2);
                    }
                }
            }

            private void tryUncaughtException(Thread thread, Throwable th) throws InterruptedException {
                String strValueOf;
                Log.e("AppCrash", "Try saving log");
                String str = new SimpleDateFormat("yyyy_MM_dd-HH_mm_ss").format(new Date());
                String string = new StringBuffer().append(new StringBuffer().append("mod_menu_crash_").append(str).toString()).append(".txt").toString();
                if (Build.VERSION.SDK_INT >= 30) {
                    strValueOf = "/storage/emulated/0/Documents/";
                } else {
                    strValueOf = String.valueOf(this.val$app.getExternalFilesDir((String) null));
                }
                File file = new File(strValueOf, string);
                String str2 = "unknown";
                long longVersionCode = 0;
                try {
                    PackageInfo packageInfo = this.val$app.getPackageManager().getPackageInfo(this.val$app.getPackageName(), 0);
                    str2 = packageInfo.versionName;
                    longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                }
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                th.printStackTrace(printWriter);
                String string2 = stringWriter.toString();
                printWriter.close();
                StringBuilder sb = new StringBuilder();
                sb.append("************* Crash Head ****************\n");
                sb.append("Time Of Crash      : ").append(str).append("\n");
                sb.append("Device Manufacturer: ").append(Build.MANUFACTURER).append("\n");
                sb.append("Device Model       : ").append(Build.MODEL).append("\n");
                sb.append("Android Version    : ").append(Build.VERSION.RELEASE).append("\n");
                sb.append("Android SDK        : ").append(Build.VERSION.SDK_INT).append("\n");
                sb.append("App VersionName    : ").append(str2).append("\n");
                sb.append("App VersionCode    : ").append(longVersionCode).append("\n");
                sb.append("************* Crash Head ****************\n");
                sb.append("\n").append(string2);
                try {
                    writeFile(file, sb.toString());
                } catch (IOException e2) {
                }
                Toast.makeText(this.val$app, "Game has crashed unexpectedly", 1).show();
                Toast.makeText(this.val$app, new StringBuffer().append("Log saved to: ").append(String.valueOf(file).replace("/storage/emulated/0/", "")).toString(), 1).show();
                Log.e("AppCrash", "Done");
            }

            private void writeFile(File file, String str) throws IOException {
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                file.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(str.getBytes());
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                }
            }
        });
    }
}

package com.netease.unisdk.gmbridge.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

/* loaded from: classes.dex */
public class StorageUtil {
    public static boolean isSDCardAvailable() {
        String state = Environment.getExternalStorageState();
        return state != null && state.equals("mounted");
    }

    @TargetApi(9)
    public static long getUsableSpace(File path) {
        if (path == null) {
            return -1L;
        }
        if (Build.VERSION.SDK_INT >= 9) {
            return path.getUsableSpace();
        }
        if (!path.exists()) {
            return 0L;
        }
        StatFs stats = new StatFs(path.getPath());
        return stats.getBlockSize() * stats.getAvailableBlocks();
    }

    @TargetApi(8)
    public static File getExternalFileDir(Context context) {
        File path;
        if (Build.VERSION.SDK_INT < 8 || (path = context.getExternalFilesDir("")) == null) {
            String fileDir = "/Android/data/" + context.getPackageName() + "/files/";
            return new File(Environment.getExternalStorageDirectory().getPath() + fileDir);
        }
        return path;
    }

    public static long getAvailableInternalMemorySize() {
        File path = Environment.getDataDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return availableBlocks * blockSize;
    }

    public static long getTotalInternalMemorySize() {
        File path = Environment.getDataDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long totalBlocks = stat.getBlockCount();
        return totalBlocks * blockSize;
    }

    public static long getAvailableExternalMemorySize() {
        if (!isSDCardAvailable()) {
            return -1L;
        }
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return availableBlocks * blockSize;
    }

    public static long getTotalExternalMemorySize() {
        if (!isSDCardAvailable()) {
            return -1L;
        }
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long totalBlocks = stat.getBlockCount();
        return totalBlocks * blockSize;
    }
}

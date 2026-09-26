package com.netease.push.utils;

import android.os.Environment;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String PUSH_DIR = "unisdk_push";
    private static final String TAG = "NGPush_" + FileUtils.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static boolean write(String fileName, String data) {
        try {
            File root = Environment.getExternalStorageDirectory();
            if (root == null) {
                Log.e(TAG, "getExternalStorageDirectory error");
                return false;
            }
            Log.d(TAG, "root.getAbsolutePath()=" + root.getAbsolutePath());
            File dir = new File(String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR);
            if (!dir.isDirectory()) {
                dir.mkdir();
            }
            if (!dir.isDirectory()) {
                throw new IOException("Unable to create directory unisdk_push. Maybe the SD card is mounted?");
            }
            String path = String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR + File.separator + fileName;
            FileOutputStream overWrite = new FileOutputStream(path, false);
            overWrite.write(data.getBytes("UTF-8"));
            overWrite.flush();
            overWrite.close();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "write exception:" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public static String read(String fileName, String def) {
        File root;
        String ret = def;
        try {
            root = Environment.getExternalStorageDirectory();
        } catch (Exception e) {
            Log.e(TAG, "read exception:" + e.getMessage());
            e.printStackTrace();
        }
        if (root == null) {
            Log.e(TAG, "getExternalStorageDirectory error");
            return ret;
        }
        File dir = new File(String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR);
        if (!dir.isDirectory()) {
            dir.mkdir();
        }
        if (!dir.isDirectory()) {
            Log.e(TAG, "Unable to create directory unisdk_push. Maybe the SD card is mounted?");
            return ret;
        }
        String path = String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR + File.separator + fileName;
        File file = new File(path);
        int size = (int) file.length();
        byte[] bytes = new byte[size];
        BufferedInputStream buf = new BufferedInputStream(new FileInputStream(file));
        buf.read(bytes, 0, bytes.length);
        buf.close();
        ret = new String(bytes, "UTF-8");
        return ret;
    }

    public static boolean exists(String fileName) {
        boolean z = false;
        try {
            File root = Environment.getExternalStorageDirectory();
            if (root == null) {
                Log.e(TAG, "getExternalStorageDirectory error");
            } else {
                File dir = new File(String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR);
                if (dir.isDirectory()) {
                    String path = String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR + File.separator + fileName;
                    File file = new File(path);
                    if (file.exists()) {
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "exists exception:" + e.getMessage());
            e.printStackTrace();
        }
        return z;
    }

    public static boolean delete(String fileName) {
        boolean z = false;
        try {
            File root = Environment.getExternalStorageDirectory();
            if (root == null) {
                Log.e(TAG, "getExternalStorageDirectory error");
            } else {
                File dir = new File(String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR);
                if (dir.isDirectory()) {
                    String path = String.valueOf(root.getAbsolutePath()) + File.separator + PUSH_DIR + File.separator + fileName;
                    File file = new File(path);
                    z = file.delete();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "delete exception:" + e.getMessage());
            e.printStackTrace();
        }
        return z;
    }

    public static boolean deleteDirectory(File directory) {
        File[] files;
        try {
            if (directory.exists() && (files = directory.listFiles()) != null) {
                for (int i = 0; i < files.length; i++) {
                    if (files[i].isDirectory()) {
                        deleteDirectory(files[i]);
                    } else {
                        files[i].delete();
                    }
                }
            }
            return directory.delete();
        } catch (Exception e) {
            Log.e(TAG, "deleteDirectory exception:" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}

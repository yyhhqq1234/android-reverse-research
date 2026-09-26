package com.netease.environment.utils;

import android.content.Context;
import com.netease.environment.config.SdkData;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String FILE_NAME_REGULAR = "regular.txt";
    private static final String FILE_NAME_REGULAR_TEMP = "temp.txt";
    private static final String TAG = FileUtils.class.getSimpleName();

    public static String getFileDir(Context context) {
        if (context == null) {
            return null;
        }
        return context.getFilesDir() + "/com/netease/environment/file/";
    }

    public static String getTempDir(Context context) {
        if (context == null) {
            return null;
        }
        return context.getFilesDir() + "/com/netease/environment/temp/";
    }

    public static String getRegexFilePath(Context context) {
        return getFileDir(context) + getRegexFileName();
    }

    public static String getTempFilePath(Context context) {
        return getTempDir(context) + getTempFileName();
    }

    public static String getTempFileName() {
        return SdkData.getGameId() + "_" + FILE_NAME_REGULAR_TEMP;
    }

    public static String getRegexFileName() {
        return SdkData.getGameId() + "_" + FILE_NAME_REGULAR;
    }

    public static String readFile(String filePath) {
        String content = "";
        if (filePath == null || filePath.isEmpty()) {
            return "";
        }
        File file = new File(filePath);
        if (!file.exists() || file.isDirectory()) {
            LogUtils.info(TAG, "The file doesn't not exist:" + filePath);
        } else {
            try {
                InputStream instream = new FileInputStream(file);
                InputStreamReader inputreader = new InputStreamReader(instream);
                BufferedReader buffreader = new BufferedReader(inputreader);
                while (true) {
                    String line = buffreader.readLine();
                    if (line == null) {
                        break;
                    }
                    content = content + line;
                }
                instream.close();
            } catch (FileNotFoundException e) {
                LogUtils.info(TAG, "The file doesn't not exist.");
            } catch (IOException e2) {
                LogUtils.info(TAG, "read file failed : IOException");
            } catch (Exception e3) {
                LogUtils.info(TAG, "read file failed : Exception");
            }
        }
        return content;
    }

    public static boolean copyFile(String oldPath, String newPath) {
        int bytesum = 0;
        try {
            File oldfile = new File(oldPath);
            File newFile = new File(newPath);
            if (newFile.getParentFile() != null && !newFile.getParentFile().exists()) {
                newFile.getParentFile().mkdirs();
            }
            if (oldfile.exists()) {
                InputStream inStream = new FileInputStream(oldPath);
                FileOutputStream fs = new FileOutputStream(newPath);
                byte[] buffer = new byte[1024];
                while (true) {
                    int byteread = inStream.read(buffer);
                    if (byteread == -1) {
                        break;
                    }
                    bytesum += byteread;
                    System.out.println(bytesum);
                    fs.write(buffer, 0, byteread);
                }
                inStream.close();
                fs.close();
            }
            LogUtils.info(TAG, "copy temp file done");
            return true;
        } catch (Exception e) {
            LogUtils.info(TAG, "fail to copy file");
            e.printStackTrace();
            return false;
        }
    }
}

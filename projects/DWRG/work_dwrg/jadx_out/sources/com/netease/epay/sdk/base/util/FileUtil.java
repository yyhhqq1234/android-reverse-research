package com.netease.epay.sdk.base.util;

import android.content.Context;
import com.netease.download.util.HashUtil;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class FileUtil {
    public static String getMd5(File file) {
        FileInputStream fileInputStream;
        if (file == null || !file.exists()) {
            return "";
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    try {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read != -1) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            String upperCase = DigestUtil.toHexString2(messageDigest.digest()).toUpperCase();
                            closeStream(fileInputStream);
                            return upperCase;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        closeStream(fileInputStream);
                        return "";
                    }
                } catch (Throwable th) {
                    th = th;
                    closeStream(fileInputStream);
                    throw th;
                }
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            closeStream(fileInputStream);
            throw th;
        }
    }

    public static void closeStream(Closeable stream) {
        if (stream != null) {
            try {
                stream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static String getExternalFilePath(Context context, String modelName) {
        File externalFilesDir = context.getApplicationContext().getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return externalFilesDir.getAbsolutePath() + File.separator + modelName;
        }
        return null;
    }

    public static boolean copyAssetsToFile(Context context, String assetFileName, String externalFilePath) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        File file = new File(externalFilePath);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                return false;
            }
        } else if (!file.delete()) {
            return false;
        }
        try {
            inputStream = context.getApplicationContext().getAssets().open(assetFileName);
            try {
                fileOutputStream = new FileOutputStream(externalFilePath);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            fileOutputStream.flush();
                            closeStream(inputStream);
                            closeStream(fileOutputStream);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } catch (IOException e) {
                    e = e;
                    inputStream2 = inputStream;
                    try {
                        e.printStackTrace();
                        closeStream(inputStream2);
                        closeStream(fileOutputStream);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        closeStream(inputStream);
                        closeStream(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeStream(inputStream);
                    closeStream(fileOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
                inputStream2 = inputStream;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            inputStream = null;
        }
    }
}

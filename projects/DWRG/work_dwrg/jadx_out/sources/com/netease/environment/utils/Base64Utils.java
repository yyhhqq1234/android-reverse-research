package com.netease.environment.utils;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public class Base64Utils {
    private static final int CACHE_SIZE = 1024;
    private static final String TAG = "Base64Utils";

    public static byte[] decode(String base64) {
        try {
            byte[] decodedData = Base64.decode(base64.getBytes(), 2);
            return decodedData;
        } catch (Exception e) {
            LogUtils.error(TAG, e.toString());
            return null;
        }
    }

    public static String encode(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        try {
            String encodedData = new String(Base64.encode(bytes, 2));
            return encodedData;
        } catch (Exception e) {
            LogUtils.error(TAG, e.toString());
            return null;
        }
    }

    public static String encodeFile(String filePath) {
        byte[] bytes = fileToByte(filePath);
        return encode(bytes);
    }

    public static byte[] fileToByte(String filePath) {
        byte[] data = new byte[0];
        File file = new File(filePath);
        if (file.exists()) {
            try {
                FileInputStream fin = new FileInputStream(file);
                ByteArrayOutputStream bout = new ByteArrayOutputStream(2018);
                byte[] cache = new byte[1024];
                while (true) {
                    int read = fin.read(cache);
                    if (read != -1) {
                        bout.write(cache, 0, read);
                        bout.flush();
                    } else {
                        bout.close();
                        fin.close();
                        return bout.toByteArray();
                    }
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return data;
            } catch (IOException e2) {
                e2.printStackTrace();
                return data;
            }
        } else {
            return data;
        }
    }
}
